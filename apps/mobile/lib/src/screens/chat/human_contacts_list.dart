import '../../human_chat/human_chat.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../social/human_contacts.dart';
import '../../state/human_contacts_state.dart';
import '../../state/session_state.dart';
import '../../theme/masanawa_theme.dart';
import '../../ui/components/masanawa_list_skeleton.dart';

/// Public contacts share the creator profile. Message admission is a separate
/// server-owned journey; following alone never grants private chat permission.
class HumanContactsList extends ConsumerStatefulWidget {
  const HumanContactsList({super.key, required this.query, this.onCall});
  final String query;
  /// Contacts remains a messaging entry by default. Calls supplies a scoped
  /// callback so selecting a person never silently opens a chat instead.
  final Future<void> Function(String handle)? onCall;
  @override
  ConsumerState<HumanContactsList> createState() => _HumanContactsListState();
}

class _HumanContactsListState extends ConsumerState<HumanContactsList> {
  List<HumanContact> _items = const [];
  String? _nextCursor, _error;
  bool _loading = true;
  int _generation = 0;
  Timer? _debounce;
  String? get _owner {
    final session = ref.read(sessionProvider);
    return session is SessionSignedIn ? session.user.id : null;
  }

  String get _query => widget.query.trim().replaceFirst(RegExp(r'^@'), '');
  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  @override
  void didUpdateWidget(covariant HumanContactsList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.query == widget.query) return;
    _generation++;
    _debounce?.cancel();
    _items = const [];
    _nextCursor = null;
    _error = null;
    _loading = _query.isEmpty || _query.length >= 2;
    if (_loading)
      _debounce = Timer(
        const Duration(milliseconds: 300),
        () => unawaited(_load()),
      );
  }

  @override
  void dispose() {
    _generation++;
    _debounce?.cancel();
    super.dispose();
  }

  Future<void> _load({bool more = false}) async {
    final owner = _owner;
    final generation = ++_generation;
    final after = more ? _nextCursor : null;
    if (owner == null || (_query.isNotEmpty && _query.length < 2)) {
      if (mounted)
        setState(() {
          _loading = false;
          _items = const [];
        });
      return;
    }
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final page = await ref
          .read(humanContactsTransportProvider)
          .load(query: _query, after: after);
      if (!mounted || generation != _generation || owner != _owner) return;
      setState(() {
        final combined = [if (more) ..._items, ...page.items];
        _items = {for (final contact in combined) contact.handle: contact}
            .values
            .toList();
        _nextCursor = page.nextCursor;
      });
    } catch (_) {
      if (!mounted || generation != _generation || owner != _owner) return;
      setState(
        () => _error =
            'Could not load people. Check your connection and try again.',
      );
    } finally {
      if (mounted && generation == _generation && owner == _owner)
        setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    ref.listen(
      sessionProvider.select((s) => s is SessionSignedIn ? s.user.id : null),
      (previous, next) {
        if (previous == next) return;
        _generation++;
        _debounce?.cancel();
        setState(() {
          _items = const [];
          _nextCursor = null;
          _error = null;
          _loading = next != null;
        });
        if (next != null) unawaited(_load());
      },
    );
    if (_owner == null)
      return const Center(child: Text('Sign in to find people.'));
    if (_query.isNotEmpty && _query.length < 2) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text('Enter at least two characters to find someone.'),
        ),
      );
    }
    if (_loading && _items.isEmpty)
      return const MasanawaListSkeleton(
        semanticLabel: 'Loading human contacts',
      );
    return RefreshIndicator(
      key: ValueKey('human-list-${_owner ?? 'signed-out'}'),
      onRefresh: () => _load(),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          if (_error != null)
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(_error!, textAlign: TextAlign.center),
                  TextButton(
                    onPressed: _loading
                        ? null
                        : () => _load(
                            more: _items.isNotEmpty && _nextCursor != null,
                          ),
                    child: const Text('Try again'),
                  ),
                ],
              ),
            ),
          if (_items.isEmpty && _error == null)
            Padding(
              padding: const EdgeInsets.all(28),
              child: Column(
                children: [
                  Icon(Icons.people_outline, size: 44, color: colors.brand),
                  const SizedBox(height: 12),
                  Text(
                    _query.isEmpty
                        ? 'Find someone to start a conversation'
                        : 'No matching people',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _query.isEmpty
                        ? 'Search a public name or @username above. People you follow appear here.'
                        : 'Try another name or @username.',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          for (final person in _items)
            ListTile(
              key: ValueKey('human-contact-${person.handle}'),
              leading: GestureDetector(
                onTap: () =>
                    context.push('/u/${Uri.encodeComponent(person.handle)}'),
                child: CircleAvatar(
                  foregroundImage: person.avatarUrl?.isNotEmpty == true
                      ? NetworkImage(person.avatarUrl!)
                      : null,
                  onForegroundImageError: person.avatarUrl?.isNotEmpty == true
                      ? (_, __) {}
                      : null,
                  child: Text(
                    person.displayName.characters.first.toUpperCase(),
                  ),
                ),
              ),
              title: Text(
                person.displayName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '@${person.handle}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(widget.onCall == null
                  ? Icons.chevron_right
                  : Icons.call_outlined),
              onTap: () async {
                final owner = _owner;
                final startCall = widget.onCall;
                if (startCall != null) {
                  await startCall(person.handle);
                } else {
                  await humanConversationStart(context, ref, person.handle);
                }
                if (mounted && owner == _owner) await _load();
              },
            ),
          if (_nextCursor != null)
            Center(
              child: TextButton(
                onPressed: _loading ? null : () => _load(more: true),
                child: Text(_loading ? 'Loading…' : 'Load more'),
              ),
            ),
        ],
      ),
    );
  }
}
