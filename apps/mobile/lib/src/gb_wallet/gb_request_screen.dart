import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'gb_recipient_lookup.dart';
import 'gb_wallet_summary.dart';

typedef _Owner = ({String accountId, int authorizationEpoch});

String _secureRequestKey() {
  final random = Random.secure();
  return 'mbreq_' + List.generate(20,
    (_) => random.nextInt(256).toRadixString(16).padLeft(2, '0')).join();
}

class _MbRequest {
  const _MbRequest({
    required this.id,
    required this.requesterId,
    required this.payerId,
    required this.requesterName,
    required this.payerName,
    required this.amountMb,
    required this.state,
    required this.expiresAt,
    this.operationId,
  });

  final String id, requesterId, payerId;
  final String requesterName, payerName, state;
  final int amountMb;
  final DateTime expiresAt;
  final String? operationId;

  factory _MbRequest.fromJson(Object? raw) {
    if (raw is! Map<String, dynamic>) {
      throw const FormatException('Invalid payment request');
    }
    final id = raw['requestId'];
    final requester = raw['requesterId'];
    final payer = raw['payerId'];
    final amount = raw['amountMb'];
    final state = raw['state'];
    final expires = raw['expiresAt'];
    final expiry = expires is String ? DateTime.tryParse(expires) : null;
    if (id is! String ||
        !RegExp(r'^mbreq_[A-Za-z0-9_-]{24,80}$').hasMatch(id) ||
        requester is! String || requester.isEmpty ||
        payer is! String || payer.isEmpty || requester == payer ||
        amount is! int || amount < 1 || amount > 1000000000 ||
        state is! String ||
        !const {'open','expired','paid','cancelled','declined'}.contains(state) ||
        expiry == null || !expiry.isUtc) {
      throw const FormatException('Inconsistent payment request');
    }
    final operationId = raw['operationId'];
    if (operationId != null && operationId is! String ||
        (state == 'paid' && operationId == null)) {
      throw const FormatException('Unconfirmed payment receipt');
    }
    return _MbRequest(
      id: id, requesterId: requester, payerId: payer,
      requesterName: raw['requesterUsername'] is String
          ? raw['requesterUsername'] as String : 'Masanawa member',
      payerName: raw['payerUsername'] is String
          ? raw['payerUsername'] as String : 'Masanawa member',
      amountMb: amount, state: state, expiresAt: expiry,
      operationId: operationId as String?,
    );
  }
}

/// Durable request-to-pay without a human DM or legacy wallet.
class GbRequestScreen extends ConsumerStatefulWidget {
  const GbRequestScreen({super.key});

  @override
  ConsumerState<GbRequestScreen> createState() => _GbRequestScreenState();
}

class _GbRequestScreenState extends ConsumerState<GbRequestScreen> {
  final _recipient = TextEditingController();
  final _amount = TextEditingController();
  _Owner? _owner;
  CancelToken? _cancel;
  int _generation = 0;
  List<_MbRequest> _requests = [];
  bool _loading = false;
  bool _busy = false;
  bool _incoming = true;
  String? _error;
  String? _createKey;
  String? _quickSelection;

  @override
  void dispose() {
    _generation++;
    _cancel?.cancel();
    _recipient.dispose();
    _amount.dispose();
    super.dispose();
  }

  bool _isCurrent(_Owner owner) {
    final session = ref.read(sessionProvider);
    return session is SessionSignedIn &&
        session.user.id == owner.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch ==
            owner.authorizationEpoch;
  }

  void _resetForAccount(_Owner? owner) {
    _generation++;
    _cancel?.cancel();
    _requests = [];
    _error = null;
    _loading = false;
    _busy = false;
    _incoming = true;
    _createKey = null;
    _quickSelection = null;
    _recipient.clear();
    _amount.clear();
    _owner = owner;
    if (owner != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _isCurrent(owner)) _load(owner);
      });
    }
  }

  Future<void> _load(_Owner owner) async {
    if (!_isCurrent(owner)) return;
    final sequence = ++_generation;
    _cancel?.cancel();
    final cancel = CancelToken();
    _cancel = cancel;
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final response = await ref.read(apiClientProvider).dio.get<Object?>(
        '/v1/gb/wallet/requests',
        cancelToken: cancel,
        options: Options(headers: const {'Cache-Control':'no-store'}),
      );
      final body = response.data;
      if (body is! Map<String, dynamic> || body['requests'] is! List) {
        throw const FormatException('Invalid request listing');
      }
      final entries = (body['requests'] as List)
          .map(_MbRequest.fromJson).toList(growable: false);
      if (!mounted || sequence != _generation || !_isCurrent(owner)) return;
      setState(() {
        _requests = entries.where((item) =>
            item.requesterId == owner.accountId ||
            item.payerId == owner.accountId).toList(growable: false);
        _loading = false;
      });
    } catch (_) {
      if (!mounted || sequence != _generation || !_isCurrent(owner)) return;
      setState(() {
        _loading = false;
        _error = 'Requests unavailable';
      });
    }
  }

  int? get _validAmount {
    final text = _amount.text.trim();
    if (!RegExp(r'^[1-9][0-9]{0,9}$').hasMatch(text)) return null;
    final mb = int.tryParse(text);
    return mb != null && mb <= 1000000000 ? mb : null;
  }

  bool get _validHandle => RegExp(
    r'^@?[a-zA-Z0-9_][a-zA-Z0-9_.-]{2,63}$',
  ).hasMatch(_recipient.text.trim());

  Future<void> _create(_Owner owner) async {
    final mb = _validAmount;
    if (mb == null || !_validHandle || _busy || !_isCurrent(owner)) return;
    final key = _createKey ??= _secureRequestKey();
    final sequence = ++_generation;
    _cancel?.cancel();
    final cancel = CancelToken();
    _cancel = cancel;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final response = await ref.read(apiClientProvider).dio.post<Object?>(
        '/v1/gb/wallet/requests',
        data: {
          'username': _recipient.text.trim(),
          'amountMb': mb,
          'idempotencyKey': key,
        },
        cancelToken: cancel,
        options: Options(headers: const {'Cache-Control':'no-store'}),
      );
      final raw = response.data;
      if (raw is! Map<String, dynamic>) {
        throw const FormatException('Missing request receipt');
      }
      final created = _MbRequest.fromJson(raw['request']);
      if (created.requesterId != owner.accountId ||
          created.amountMb != mb) {
        throw const FormatException('Request account mismatch');
      }
      if (!mounted || sequence != _generation || !_isCurrent(owner)) return;
      setState(() {
        _busy = false;
        _recipient.clear();
        _amount.clear();
        _createKey = null;
        _quickSelection = null;
        _incoming = false;
      });
      await _load(owner);
    } catch (_) {
      if (!mounted || sequence != _generation || !_isCurrent(owner)) return;
      setState(() {
        _busy = false;
        _error = 'Request not confirmed. Retry without changing the details.';
      });
    }
  }

  Future<void> _action(
    _Owner owner, _MbRequest item, {required String action}
  ) async {
    if (_busy || !_isCurrent(owner)) return;
    final pay = action == 'pay';
    final decline = action == 'decline';
    final accepted = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(pay ? 'Pay MB request?' : decline
            ? 'Decline request?' : 'Cancel request?'),
        content: Text(pay
            ? 'Send ${groupedMb(item.amountMb)} purchased MB to '
                '@${item.requesterName}?'
            : decline
            ? 'Decline the ${groupedMb(item.amountMb)} MB request from '
                '@${item.requesterName}? No MB will move.'
            : 'Cancel the ${groupedMb(item.amountMb)} MB request?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Back'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(pay ? 'Confirm payment' : decline
                ? 'Confirm decline' : 'Cancel request'),
          ),
        ],
      ),
    );
    if (accepted != true || !mounted || !_isCurrent(owner)) return;
    final sequence = ++_generation;
    final cancel = CancelToken();
    _cancel?.cancel();
    _cancel = cancel;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final result = await ref.read(apiClientProvider).dio.post<Object?>(
        '/v1/gb/wallet/requests/${Uri.encodeComponent(item.id)}/'
            '$action',
        data: pay ? {'reviewAccepted':true} : <String, Object>{},
        cancelToken: cancel,
        options: Options(headers: const {'Cache-Control':'no-store'}),
      );
      if (pay) {
        final body=result.data;
        if (body is! Map<String, dynamic> ||
            body['receipt'] is! Map<String, dynamic>) {
          throw const FormatException('Unconfirmed request payment');
        }
        final receipt=body['receipt'] as Map<String, dynamic>;
        if (receipt['state'] != 'completed' ||
            receipt['operationId'] != 'request_pay_${item.id}' ||
            receipt['amountMb'] != item.amountMb) {
          throw const FormatException('Request payment receipt mismatch');
        }
      } else {
        final body=result.data;
        if (body is! Map<String, dynamic>) {
          throw const FormatException('Request closure mismatch');
        }
        final changed=_MbRequest.fromJson(body['request']);
        if (changed.id != item.id || changed.state !=
            (decline ? 'declined' : 'cancelled')) {
          throw const FormatException('Request closure mismatch');
        }
      }
      if (!mounted || sequence != _generation || !_isCurrent(owner)) return;
      setState(() => _busy = false);
      ref.invalidate(gbWalletSummaryProvider(owner));
      await _load(owner);
    } catch (_) {
      if (!mounted || sequence != _generation || !_isCurrent(owner)) return;
      setState(() {
        _busy = false;
        _error = pay
            ? 'Payment not confirmed. Refresh this request before retrying.'
            : '${decline ? 'Decline' : 'Cancellation'} not confirmed. '
                'Refresh and retry.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    final owner = session is SessionSignedIn
        ? (accountId: session.user.id,
            authorizationEpoch:
                ref.read(sessionProvider.notifier).authorizationEpoch)
        : null;
    if (_owner != owner) _resetForAccount(owner);
    final colors = context.masanawa;
    final theme = Theme.of(context);
    final entries = _requests.where((item) => _incoming
        ? item.payerId == owner?.accountId
        : item.requesterId == owner?.accountId).toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Request MB')),
      body: RefreshIndicator(
        onRefresh: owner == null ? () async {} : () => _load(owner),
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 30),
          children: [
            Text('New request', style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700)),
            const SizedBox(height: 12),
            GbRecipientField(
              controller: _recipient,
              owner: owner,
              enabled: owner != null && !_busy,
              onChanged: (_) {
                _createKey = null;
                setState(() {});
              },
              label: 'Request from @username',
            ),
            const SizedBox(height: 10),
            Text('Quick amounts', style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700)),
            const SizedBox(height: 6),
            SingleChildScrollView(
              key: const ValueKey('request-quick-amounts'),
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                for (final entry in const <int, String>{
                  100: '100 MB', 500: '500 MB', 1000: '1 GB',
                  5000: '5 GB', 10000: '10 GB',
                }.entries)
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 6),
                    child: ChoiceChip(
                      key: ValueKey('request-quick-${entry.key}'),
                      label: Text(entry.value),
                      selected: _quickSelection == '${entry.key}',
                      onSelected: owner == null || _busy ? null : (_) {
                        setState(() {
                          if (_amount.text.trim() != entry.key.toString()) {
                            _amount.text = entry.key.toString();
                            _createKey = null;
                          }
                          _quickSelection = '${entry.key}';
                        });
                      },
                    ),
                  ),
              ]),
            ),
            const SizedBox(height: 10),
            TextField(
              key: const ValueKey('request-custom-mb'),
              controller: _amount,
              enabled: owner != null && !_busy,
              keyboardType: TextInputType.number,
              onChanged: (_) {
                _createKey = null;
                _quickSelection = null;
                setState(() {});
              },
              decoration: const InputDecoration(
                isDense: true,
                labelText: 'Custom amount (whole MB)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 6),
            Text('They decide whether to pay. No MB is charged now.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colors.textMuted)),
            const SizedBox(height: 10),
            FilledButton.icon(
              onPressed: owner != null && !_busy && _validHandle &&
                      _validAmount != null ? () => _create(owner) : null,
              icon: const Icon(Icons.call_received_rounded),
              label: const Text('Send request'),
            ),
            const SizedBox(height: 20),
            Row(children: [
              Expanded(child: Text('MB requests',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700))),
              IconButton(
                tooltip: 'Refresh requests',
                onPressed: owner == null ? null : () => _load(owner),
                icon: const Icon(Icons.refresh_rounded),
              ),
            ]),
            Wrap(spacing: 8, children: [
              ChoiceChip(
                label: const Text('Incoming'),
                selected: _incoming,
                selectedColor: colors.brand.withValues(alpha: .18),
                onSelected: (_) => setState(() => _incoming = true),
              ),
              ChoiceChip(
                label: const Text('Sent'),
                selected: !_incoming,
                selectedColor: colors.brand.withValues(alpha: .18),
                onSelected: (_) => setState(() => _incoming = false),
              ),
            ]),
            Text(_incoming ? 'Requests you can choose to pay' :
                'Requests you asked others to pay',
              style: theme.textTheme.labelSmall?.copyWith(
                color: colors.textMuted)),
            if (_loading || _busy) const LinearProgressIndicator(),
            if (_error != null)
              Center(child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(_error!, textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium),
              )),
            if (!_loading && entries.isEmpty)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Center(child: Text('No requests here')),
              ),
            for (final item in entries)
              Card(
                margin: const EdgeInsets.only(top: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: colors.structuralBorder),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(children: [
                        CircleAvatar(
                          backgroundColor: colors.surfaceMuted,
                          child: Icon(Icons.person_outline_rounded,
                            color: colors.brand)),
                        const SizedBox(width: 10),
                        Expanded(child: Text(
                          '@${_incoming ? item.requesterName : item.payerName}',
                          maxLines: 1, overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleSmall)),
                        Text('${groupedMb(item.amountMb)} MB',
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w800)),
                      ]),
                      const SizedBox(height: 5),
                      Text(item.state == 'open' ? 'Pending' :
                        item.state == 'paid' ? 'Paid' :
                        item.state == 'expired' ? 'Expired' :
                        item.state == 'declined' ? 'Declined' : 'Cancelled',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colors.textMuted)),
                      if (item.operationId != null)
                        SelectableText('Receipt: ${item.operationId!}',
                          style: theme.textTheme.labelSmall),
                      if (item.state == 'open') Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Wrap(spacing:8,children:[
                          if (_incoming) TextButton.icon(
                            onPressed: _busy || owner == null ? null
                                : () => _action(owner,item,action:'decline'),
                            icon:const Icon(Icons.close_rounded),
                            label:const Text('Decline')),
                          TextButton.icon(
                            onPressed: _busy || owner == null ? null
                                : () => _action(owner,item,
                                    action:_incoming ? 'pay' : 'cancel'),
                            icon: Icon(_incoming
                                ? Icons.check_circle_outline
                                : Icons.cancel_outlined),
                            label: Text(_incoming ? 'Pay request' : 'Cancel'),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
