import 'dart:math' as math;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'gb_data_catalogue.dart';
import 'gb_wallet_summary.dart';

/// A single reviewed whole-GB purchase. An uncertain response never generates
/// a second idempotency key or pretends that provider delivery is confirmed.
class GbDataPurchasePanel extends ConsumerStatefulWidget {
  const GbDataPurchasePanel({
    super.key,
    required this.owner,
    required this.quote,
    required this.onStarted,
    required this.onResolved,
  });

  final GbDataOwner owner;
  final GbReadOnlyQuote quote;
  final VoidCallback onStarted;
  final VoidCallback onResolved;

  @override
  ConsumerState<GbDataPurchasePanel> createState() =>
      _GbDataPurchasePanelState();
}

class _GbDataPurchasePanelState extends ConsumerState<GbDataPurchasePanel> {
  bool _busy = false;
  String? _key;
  String? _operationId;
  String? _status;
  String? _error;
  CancelToken? _cancel;
  int _generation = 0;

  bool get _isOwner {
    final active = ref.read(sessionProvider);
    return active is SessionSignedIn &&
        active.user.id == widget.owner.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch ==
            widget.owner.authorizationEpoch;
  }

  @override
  void didUpdateWidget(covariant GbDataPurchasePanel oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.owner != widget.owner ||
        oldWidget.quote.bundle.id != widget.quote.bundle.id ||
        oldWidget.quote.recipientPhone != widget.quote.recipientPhone) {
      _generation++;
      _cancel?.cancel();
      _key = null;
      _operationId = null;
      _status = null;
      _error = null;
      _busy = false;
    }
  }

  @override
  void dispose() {
    _generation++;
    _cancel?.cancel();
    super.dispose();
  }

  static String _originalKey() {
    final secure = math.Random.secure();
    return 'redeem_${List<int>.generate(24, (_) => secure.nextInt(256))
        .map((n) => n.toRadixString(16).padLeft(2, '0')).join()}';
  }

  void _acceptResult(Object? response, {required String? originalId}) {
    if (response is! Map<String, dynamic> ||
        response['operationId'] is! String ||
        !RegExp(r'^data_[a-f0-9]{48}$')
            .hasMatch(response['operationId'] as String) ||
        (originalId != null && response['operationId'] != originalId) ||
        !const ['pending', 'delivered', 'failed']
            .contains(response['state'])) {
      throw const FormatException('Unverified data purchase readback');
    }
    _operationId = response['operationId'] as String;
    _status = response['state'] as String;
    if (_status == 'delivered') {
      ref.invalidate(gbWalletSummaryProvider((
        accountId: widget.owner.accountId,
        authorizationEpoch: widget.owner.authorizationEpoch,
      )));
      widget.onResolved();
    } else if (_status == 'failed') {
      widget.onResolved();
    }
  }

  Future<void> _purchase() async {
    if (_busy || !_isOwner || _operationId != null ||
        !widget.quote.expiresAt.isAfter(DateTime.now().toUtc())) return;
    final key = _key ?? _originalKey();
    final generation = ++_generation;
    final token = CancelToken();
    _cancel?.cancel();
    _cancel = token;
    if (_key == null) widget.onStarted();
    setState(() {
      _key = key;
      _busy = true;
      _error = null;
    });
    try {
      final response = await ref.read(apiClientProvider).dio.post<Object?>(
        '/v1/gb/data/redeem',
        data: {
          'bundleId': widget.quote.bundle.id,
          'version': widget.quote.bundle.version,
          'recipientPhone': widget.quote.recipientPhone,
          'idempotencyKey': key,
        },
        cancelToken: token,
        options: Options(headers: const {'Cache-Control': 'no-store'}),
      );
      if (!mounted || generation != _generation || !_isOwner) return;
      setState(() {
        _acceptResult(response.data, originalId: null);
        _busy = false;
      });
    } catch (_) {
      if (!mounted || generation != _generation || !_isOwner) return;
      setState(() {
        _busy = false;
        _error = 'Payment not confirmed. Retry the same request.';
      });
    }
  }

  Future<void> _checkStatus() async {
    final id = _operationId;
    if (id == null || _busy || !_isOwner) return;
    final generation = ++_generation;
    final token = CancelToken();
    _cancel?.cancel();
    _cancel = token;
    setState(() { _busy = true; _error = null; });
    try {
      final response = await ref.read(apiClientProvider).dio.post<Object?>(
        '/v1/gb/data/purchases/${Uri.encodeComponent(id)}/reconcile',
        cancelToken: token,
        options: Options(headers: const {'Cache-Control': 'no-store'}),
      );
      if (!mounted || generation != _generation || !_isOwner) return;
      setState(() {
        _acceptResult(response.data, originalId: id);
        _busy = false;
      });
    } catch (_) {
      if (!mounted || generation != _generation || !_isOwner) return;
      setState(() {
        _busy = false;
        _error = 'Status unavailable. Keep this reference and try again.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Watch session so a signed-out user never sees another account's receipt.
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn || !_isOwner) {
      return const SizedBox.shrink();
    }
    final colors = context.masanawa;
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (_busy) const LinearProgressIndicator(minHeight: 3),
        if (_error != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(_error!, textAlign: TextAlign.center,
                style: TextStyle(color: theme.colorScheme.error)),
          ),
        if (_key == null)
          FilledButton.icon(
            onPressed: widget.quote.expiresAt.isAfter(DateTime.now().toUtc())
                ? _purchase : null,
            icon: const Icon(Icons.shopping_bag_outlined),
            label: const Text('Confirm data purchase'),
          ),
        if (_key != null && _operationId == null && !_busy)
          OutlinedButton.icon(
            onPressed: _purchase,
            icon: const Icon(Icons.refresh_rounded),
            label: const Text('Retry same request'),
          ),
        if (_operationId != null)
          Card(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(children: [
                Text(switch (_status) {
                  'delivered' => 'Data delivered',
                  'failed' => 'Purchase unsuccessful',
                  _ => 'Purchase pending',
                }, style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700)),
                const SizedBox(height: 6),
                SelectableText(_operationId!, textAlign: TextAlign.center,
                  style: TextStyle(color: colors.textMuted)),
                if (_status == 'pending')
                  TextButton.icon(
                    onPressed: _busy ? null : _checkStatus,
                    icon: const Icon(Icons.sync_rounded),
                    label: const Text('Check status'),
                  ),
              ]),
            ),
          ),
      ],
    );
  }
}
