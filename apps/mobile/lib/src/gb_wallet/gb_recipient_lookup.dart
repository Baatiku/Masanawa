import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../state/session_state.dart';
import 'gb_wallet_summary.dart';

String? exactGbRecipientHandle(String value) {
  final handle = value.trim().replaceFirst(RegExp(r'^@'), '').toLowerCase();
  return RegExp(r'^[a-z0-9_][a-z0-9_.-]{1,63}$').hasMatch(handle)
      ? handle
      : null;
}

class GbRecipientIdentity {
  const GbRecipientIdentity(this.id, this.handle, this.name, {this.avatarUrl});
  final String id, handle, name;
  final String? avatarUrl;

  factory GbRecipientIdentity.read(Object? data, String expectedHandle) {
    if (data is! Map || data['recipient'] is! Map) {
      throw const FormatException('Unverified recipient');
    }
    final recipient = data['recipient'] as Map;
    final id = recipient['id'],
        handle = recipient['username'],
        name = recipient['displayName'];
    if (id is! String ||
        id.isEmpty ||
        id.length > 160 ||
        handle is! String ||
        handle != expectedHandle ||
        exactGbRecipientHandle(handle) != handle ||
        name is! String ||
        name.trim().isEmpty ||
        name.length > 160) {
      throw const FormatException('Invalid recipient identity');
    }
    final avatar = recipient['avatarUrl'];
    final uri = avatar is String ? Uri.tryParse(avatar) : null;
    final safeAvatar =
        uri != null &&
            uri.scheme == 'https' &&
            uri.host.isNotEmpty &&
            uri.userInfo.isEmpty &&
            !uri.hasFragment &&
            avatar.length <= 2048
        ? avatar
        : null;
    return GbRecipientIdentity(id, handle, name, avatarUrl: safeAvatar);
  }
}

abstract class GbRecipientLookupTransport {
  Future<List<GbRecipientIdentity>> search(
    String query, {
    CancelToken? cancellation,
  });
  Future<GbRecipientIdentity> lookup(
    String exactHandle, {
    CancelToken? cancellation,
  });
}

class DioGbRecipientLookupTransport implements GbRecipientLookupTransport {
  const DioGbRecipientLookupTransport(this.dio);
  final Dio dio;
  @override
  Future<List<GbRecipientIdentity>> search(
    String query, {
    CancelToken? cancellation,
  }) async {
    final response = await dio.post<Object?>(
      '/v1/gb/wallet/recipients/search',
      data: {'q': query},
      cancelToken: cancellation,
      options: Options(headers: const {'Cache-Control': 'no-store'}),
    );
    final data = response.data;
    if (data is! Map ||
        data['recipients'] is! List ||
        (data['recipients'] as List).length > 8)
      throw const FormatException('Invalid recipient suggestions');
    final seen = <String>{}, handles = <String>{};
    return [
      for (final raw in data['recipients'] as List) ...[
        if (raw is! Map || raw['username'] is! String)
          throw const FormatException('Invalid recipient'),
        (() {
          final found = GbRecipientIdentity.read({
            'recipient': raw,
          }, raw['username'] as String);
          if (!seen.add(found.id) || !handles.add(found.handle))
            throw const FormatException('Repeated recipient');
          return found;
        })(),
      ],
    ];
  }

  @override
  Future<GbRecipientIdentity> lookup(
    String exactHandle, {
    CancelToken? cancellation,
  }) async {
    if (exactGbRecipientHandle(exactHandle) != exactHandle) {
      throw const FormatException('Complete @handle required');
    }
    final response = await dio.get<Object?>(
      '/v1/gb/wallet/recipients/${Uri.encodeComponent(exactHandle)}',
      cancelToken: cancellation,
      options: Options(headers: const {'Cache-Control': 'no-store'}),
    );
    return GbRecipientIdentity.read(response.data, exactHandle);
  }
}

final gbRecipientLookupTransportProvider = Provider<GbRecipientLookupTransport>(
  (ref) => DioGbRecipientLookupTransport(ref.watch(apiClientProvider).dio),
);

/// Suggestions discover eligible accounts; only the existing signed server
/// review and explicit confirmation can authorize a financial movement.
class GbRecipientField extends ConsumerStatefulWidget {
  const GbRecipientField({
    super.key,
    required this.controller,
    required this.owner,
    required this.label,
    required this.enabled,
    required this.onChanged,
  });
  final TextEditingController controller;
  final GbWalletOwner? owner;
  final String label;
  final bool enabled;
  final ValueChanged<String> onChanged;
  @override
  ConsumerState<GbRecipientField> createState() => _GbRecipientFieldState();
}

class _GbRecipientFieldState extends ConsumerState<GbRecipientField> {
  Timer? _timer;
  CancelToken? _cancel;
  GbRecipientIdentity? _verified;
  List<GbRecipientIdentity> _matches = [];
  String? _error;
  bool _checking = false, _searched = false;
  int _generation = 0;
  void _invalidate() {
    _generation++;
    _timer?.cancel();
    _cancel?.cancel();
    _cancel = null;
    _verified = null;
    _matches = [];
    _error = null;
    _checking = false;
    _searched = false;
  }

  @override
  void didUpdateWidget(covariant GbRecipientField old) {
    super.didUpdateWidget(old);
    if (old.owner != widget.owner ||
        old.controller != widget.controller ||
        (old.enabled && !widget.enabled))
      _invalidate();
  }

  @override
  void dispose() {
    _invalidate();
    super.dispose();
  }

  bool _same(GbWalletOwner owner, int generation, String query) {
    if (!mounted) return false;
    final session = ref.read(sessionProvider);
    return mounted &&
        widget.enabled &&
        generation == _generation &&
        owner == widget.owner &&
        widget.controller.text.trim() == query &&
        session is SessionSignedIn &&
        session.user.id == owner.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch ==
            owner.authorizationEpoch;
  }

  Future<void> _search(GbWalletOwner owner, String query) async {
    _cancel?.cancel();
    final cancel = CancelToken();
    _cancel = cancel;
    final generation = ++_generation;
    setState(() {
      _checking = true;
      _error = null;
      _verified = null;
      _matches = [];
    });
    try {
      final matches = await ref
          .read(gbRecipientLookupTransportProvider)
          .search(query, cancellation: cancel);
      if (!_same(owner, generation, query)) return;
      final exact = exactGbRecipientHandle(query);
      setState(() {
        _checking = false;
        _searched = true;
        _matches = matches;
        if (matches.length == 1 && matches.single.handle == exact) {
          _verified = matches.single;
          _matches = [];
        }
      });
    } catch (_) {
      if (!_same(owner, generation, query)) return;
      setState(() {
        _checking = false;
        _error = 'Recipient search is unavailable. Retry when connected.';
      });
    }
  }

  void _changed(String value) {
    setState(_invalidate);
    widget.onChanged(value);
    final query = value.trim(), owner = widget.owner;
    if (owner != null &&
        widget.enabled &&
        query.length >= 2 &&
        query.length <= 320)
      _timer = Timer(
        const Duration(milliseconds: 350),
        () => _search(owner, query),
      );
  }

  void _select(GbRecipientIdentity recipient) {
    if (widget.owner == null ||
        !_same(widget.owner!, _generation, widget.controller.text.trim()))
      return;
    _invalidate();
    widget.controller.text = '@${recipient.handle}';
    widget.controller.selection = TextSelection.collapsed(
      offset: widget.controller.text.length,
    );
    widget.onChanged(widget.controller.text);
    setState(() => _verified = recipient);
    FocusScope.of(context).unfocus();
  }

  Widget _person(
    GbRecipientIdentity recipient, {
    required bool selected,
  }) => ListTile(
    key: ValueKey('recipient-${recipient.id}'),
    onTap: selected || !widget.enabled ? null : () => _select(recipient),
    leading: CircleAvatar(
      foregroundImage: recipient.avatarUrl == null
          ? null
          : NetworkImage(recipient.avatarUrl!),
      onForegroundImageError: recipient.avatarUrl == null ? null : (_, _) {},
      child: Text(recipient.name.trim().characters.first.toUpperCase()),
    ),
    title: Text(recipient.name, maxLines: 2, overflow: TextOverflow.ellipsis),
    subtitle: Text('@${recipient.handle}'),
    trailing: selected
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.verified_user_outlined, size: 20),
              IconButton(
                tooltip: 'Clear recipient',
                onPressed: widget.enabled
                    ? () {
                        if (widget.owner == null ||
                            !_same(
                              widget.owner!,
                              _generation,
                              widget.controller.text.trim(),
                            ))
                          return;
                        widget.controller.clear();
                        setState(_invalidate);
                        widget.onChanged('');
                      }
                    : null,
                icon: const Icon(Icons.close),
              ),
            ],
          )
        : const Icon(Icons.chevron_right),
  );
  @override
  Widget build(BuildContext context) {
    final owner = widget.owner, query = widget.controller.text.trim();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: widget.controller,
          enabled: owner != null && widget.enabled,
          onChanged: _changed,
          autocorrect: false,
          enableSuggestions: false,
          maxLength: 320,
          textInputAction: TextInputAction.search,
          onSubmitted: (_) {
            if (owner != null && query.length >= 2) _search(owner, query);
          },
          decoration: InputDecoration(
            labelText: widget.label,
            hintText: 'Name, @username, email or phone',
            counterText: '',
            helperText: 'Search by @username, name, email or full phone.',
            helperMaxLines: 1,
            border: const OutlineInputBorder(),
            suffixIcon: _checking
                ? const Padding(
                    padding: EdgeInsets.all(14),
                    child: SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  )
                : IconButton(
                    tooltip: 'Search recipients',
                    onPressed:
                        owner == null || !widget.enabled || query.length < 2
                        ? null
                        : () => _search(owner, query),
                    icon: const Icon(Icons.person_search_outlined),
                  ),
          ),
        ),
        if (_verified != null) Card(child: _person(_verified!, selected: true)),
        if (_matches.isNotEmpty)
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final match in _matches) _person(match, selected: false),
              ],
            ),
          ),
        if (_searched && _verified == null && _matches.isEmpty)
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              'No eligible users found. Try a username or a complete email or phone.',
            ),
          ),
        if (_error != null)
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(_error!),
                TextButton(
                  onPressed:
                      owner == null || !widget.enabled || query.length < 2
                      ? null
                      : () => _search(owner, query),
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
