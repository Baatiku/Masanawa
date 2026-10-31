import 'dart:math' as math;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'gb_data_catalogue.dart';
import 'gb_data_pending_store.dart';
import 'gb_wallet_summary.dart';

/// A single durable original purchase, recovered without re-submitting a bill.
/// The encrypted intent must be written BEFORE the first financial request.
class GbDataPurchasePanel extends ConsumerStatefulWidget {
  const GbDataPurchasePanel({
    super.key,
    required this.owner,
    required this.quote,
    required this.onStarted,
    required this.onResolved,
    required this.onFinished,
    this.onInsufficientBalance,
    this.reviewVisible = false,
  });

  final GbDataOwner owner;
  final GbReadOnlyQuote? quote;
  final VoidCallback onStarted;
  final VoidCallback onResolved;
  final VoidCallback onFinished;
  final VoidCallback? onInsufficientBalance;
  final bool reviewVisible;

  @override
  ConsumerState<GbDataPurchasePanel> createState() =>
      GbDataPurchasePanelState();
}

class GbDataPurchasePanelState extends ConsumerState<GbDataPurchasePanel> {
  bool _busy = false;
  bool _restoring = true;
  bool _recoveryBlocked = false;
  GbPendingDataPurchase? _pending;
  GbPendingDataPurchase? _receiptDetails;
  String? _operationId;
  String? _status;
  String? _error;
  CancelToken? _cancel;
  int _generation = 0;

  bool get _isOwner {
    final session = ref.read(sessionProvider);
    return session is SessionSignedIn &&
        session.user.id == widget.owner.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch ==
            widget.owner.authorizationEpoch;
  }

  bool _current(int generation) =>
      mounted && generation == _generation && _isOwner;

  /// The review sheet may invoke only the existing durable purchase path.
  /// A false result means no request was attempted; it is never a success ACK.
  bool get canConfirmReviewedQuote {
    final quote = widget.quote;
    if (quote == null ||
        _busy ||
        _restoring ||
        _recoveryBlocked ||
        !_isOwner ||
        _pending != null ||
        _operationId != null ||
        !quote.expiresAt.isAfter(DateTime.now().toUtc()))
      return false;
    final wallet = ref.read(gbWalletSummaryProvider(widget.owner));
    final verified = wallet.valueOrNull;
    return !wallet.isLoading &&
        !wallet.hasError &&
        verified != null &&
        !verified.frozen &&
        verified.purchasedAvailableMb >= quote.bundle.costMb;
  }

  Future<bool> confirmReviewedQuote() async {
    if (!canConfirmReviewedQuote) return false;
    await _purchase();
    return true;
  }

  @override
  void initState() {
    super.initState();
    // Never expose a confirm button until the prior encrypted slot is read.
    Future<void>.microtask(_restore);
  }

  @override
  void didUpdateWidget(covariant GbDataPurchasePanel oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.owner != widget.owner) {
      _generation++;
      _cancel?.cancel();
      _busy = false;
      _restoring = true;
      _recoveryBlocked = false;
      _pending = null;
      _receiptDetails = null;
      _operationId = null;
      _status = null;
      _error = null;
      _receiptDetails = null;
      Future<void>.microtask(_restore);
    } else if (oldWidget.quote != widget.quote && _pending == null) {
      // A newly reviewed quote creates a new, distinct purchase review.
      _operationId = null;
      _status = null;
      _error = null;
    }
  }

  @override
  void dispose() {
    _generation++;
    _cancel?.cancel();
    super.dispose();
  }

  static String _originalKey() {
    final random = math.Random.secure();
    return 'redeem_${List<int>.generate(24, (_) => random.nextInt(256)).map((n) => n.toRadixString(16).padLeft(2, '0')).join()}';
  }

  // The Gateway returns this exact 409 only when the purchased-MB reserve
  // failed, before a journal claim or provider dispatch. Generic 409, 404,
  // timeout and transport errors are NOT evidence that it is safe to retry.
  static bool _definiteInsufficientMb(Object error) {
    if (error is! DioException || error.response?.statusCode != 409) {
      return false;
    }
    final body = error.response?.data;
    if (body is! Map) return false;
    final detail = body['error'];
    return detail is Map && detail['code'] == 'insufficient_purchased_mb';
  }

  Future<void> _restore() async {
    if (!mounted || !_isOwner) return;
    final generation = ++_generation;
    widget.onStarted();
    try {
      final saved = await ref
          .read(gbDataPendingStoreProvider)
          .read(widget.owner.accountId);
      if (!_current(generation)) return;
      setState(() {
        _pending = saved;
        _restoring = false;
        _recoveryBlocked = false;
        _error = null;
      });
      if (saved == null) {
        widget.onResolved();
      } else {
        await _recoverOriginal();
      }
    } catch (_) {
      if (!_current(generation)) return;
      setState(() {
        _restoring = false;
        _recoveryBlocked = true;
        _error =
            'Could not read the saved data purchase. '
            'Try recovery before buying again.';
      });
      // An inaccessible secure slot must NOT unlock another purchase.
    }
  }

  /// Apply only authoritative server states to the exact saved request.
  Future<void> _accept(
    Object? raw,
    int generation, {
    String? expectedId,
    bool originalLookup = false,
  }) async {
    if (raw is! Map<String, dynamic> ||
        raw['operationId'] is! String ||
        !RegExp(
          r'^data_[a-f0-9]{48}$',
        ).hasMatch(raw['operationId'] as String) ||
        (expectedId != null && raw['operationId'] != expectedId) ||
        !const ['pending', 'delivered', 'failed'].contains(raw['state'])) {
      throw const FormatException('Unverified data purchase readback');
    }
    final saved = _pending;
    if (saved == null) throw const FormatException('Original request missing');
    if (originalLookup &&
        (raw['bundleId'] != saved.bundleId ||
            raw['version'] != saved.version ||
            raw['recipientPhone'] != saved.recipientPhone ||
            raw['costMb'] != saved.costMb)) {
      throw const FormatException('Original request details differ');
    }
    final id = raw['operationId'] as String;
    final state = raw['state'] as String;
    if (state != 'pending') {
      if (!_current(generation)) return;
      // Keep the lock if encrypted cleanup fails; never silently discard it.
      await ref.read(gbDataPendingStoreProvider).clear(widget.owner.accountId);
    }
    if (!_current(generation)) return;
    setState(() {
      _operationId = id;
      _status = state;
      _busy = false;
      _error = null;
      _receiptDetails = saved;
      if (state != 'pending') _pending = null;
    });
    if (state != 'pending') {
      if (state == 'delivered') {
        ref.invalidate(gbWalletSummaryProvider(widget.owner));
      }
      widget.onFinished();
      widget.onResolved();
    }
  }

  /// GET by the ORIGINAL key. A 404, timeout or lost ACK is not permission
  /// to re-POST /redeem: the server might still be committing its journal.
  Future<void> _recoverOriginal() async {
    final saved = _pending;
    if (_busy || !_isOwner || saved == null) return;
    final generation = ++_generation;
    final token = CancelToken();
    _cancel?.cancel();
    _cancel = token;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final response = await ref
          .read(apiClientProvider)
          .dio
          .get<Object?>(
            '/v1/gb/data/purchases/intent/${Uri.encodeComponent(saved.idempotencyKey)}',
            cancelToken: token,
            options: Options(headers: const {'Cache-Control': 'no-store'}),
          );
      if (!_current(generation)) return;
      await _accept(response.data, generation, originalLookup: true);
    } catch (_) {
      if (!_current(generation)) return;
      setState(() {
        _busy = false;
        _error = 'Previous purchase could not be checked.';
      });
    }
  }

  Future<void> _purchase() async {
    final quote = widget.quote;
    final wallet = ref.read(gbWalletSummaryProvider(widget.owner));
    final verified = wallet.hasError || wallet.isLoading
        ? null
        : wallet.valueOrNull;
    if (_busy ||
        _restoring ||
        _recoveryBlocked ||
        !_isOwner ||
        _pending != null ||
        _operationId != null ||
        quote == null ||
        verified == null ||
        verified.frozen ||
        verified.purchasedAvailableMb < quote.bundle.costMb ||
        !quote.expiresAt.isAfter(DateTime.now().toUtc()))
      return;
    final saved = GbPendingDataPurchase(
      idempotencyKey: _originalKey(),
      bundleId: quote.bundle.id,
      version: quote.bundle.version,
      recipientPhone: quote.recipientPhone,
      costMb: quote.bundle.costMb,
    );
    final generation = ++_generation;
    final token = CancelToken();
    _cancel?.cancel();
    _cancel = token;
    widget.onStarted();
    setState(() {
      _busy = true;
      _pending = saved;
      _error = null;
    });
    try {
      await ref
          .read(gbDataPendingStoreProvider)
          .write(widget.owner.accountId, saved);
    } catch (_) {
      if (!_current(generation)) return;
      setState(() {
        _pending = null;
        _busy = false;
        _error = 'Secure saving failed. No purchase was submitted.';
      });
      widget.onResolved();
      return;
    }
    if (!_current(generation)) return;
    try {
      final response = await ref
          .read(apiClientProvider)
          .dio
          .post<Object?>(
            '/v1/gb/data/redeem',
            data: {
              'bundleId': saved.bundleId,
              'version': saved.version,
              'recipientPhone': saved.recipientPhone,
              'idempotencyKey': saved.idempotencyKey,
            },
            cancelToken: token,
            options: Options(headers: const {'Cache-Control': 'no-store'}),
          );
      if (!_current(generation)) return;
      await _accept(response.data, generation);
    } catch (error) {
      if (!_current(generation)) return;
      if (_definiteInsufficientMb(error)) {
        // This response proves the reserve was rejected before provider work.
        // A successful secure-slot clear permits an ordinary fresh review;
        // if clearing fails, retain the original idempotency lock instead.
        try {
          await ref
              .read(gbDataPendingStoreProvider)
              .clear(widget.owner.accountId);
          if (!_current(generation)) return;
          setState(() {
            _pending = null;
            _busy = false;
            _error = null;
          });
          ref.invalidate(gbWalletSummaryProvider(widget.owner));
          widget.onInsufficientBalance?.call();
          widget.onResolved();
        } catch (_) {
          if (!_current(generation)) return;
          setState(() {
            _busy = false;
            _error = 'Previous purchase could not be reset.';
          });
        }
        return;
      }
      setState(() {
        _busy = false;
        _error = 'Previous purchase needs checking.';
      });
    }
  }

  Future<void> _checkStatus() async {
    final id = _operationId;
    if (id == null || _pending == null || _busy || !_isOwner) return;
    final generation = ++_generation;
    final token = CancelToken();
    _cancel?.cancel();
    _cancel = token;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final response = await ref
          .read(apiClientProvider)
          .dio
          .post<Object?>(
            '/v1/gb/data/purchases/${Uri.encodeComponent(id)}/reconcile',
            cancelToken: token,
            options: Options(headers: const {'Cache-Control': 'no-store'}),
          );
      if (!_current(generation)) return;
      await _accept(response.data, generation, expectedId: id);
    } catch (_) {
      if (!_current(generation)) return;
      setState(() {
        _busy = false;
        _error =
            'Status unavailable. Keep the original reference and try again.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Never display an old account's recovery or receipt after a user switch.
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn || !_isOwner) {
      return const SizedBox.shrink();
    }
    // Prime the same authorized, read-only spendable balance used by both the
    // review sheet and the durable confirmation guard (including on restore).
    ref.watch(gbWalletSummaryProvider(widget.owner));
    if (!_restoring &&
        _pending == null &&
        _operationId == null &&
        widget.quote == null &&
        _error == null)
      return const SizedBox.shrink();
    final theme = Theme.of(context);
    final colors = context.masanawa;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (_restoring || _busy) const LinearProgressIndicator(minHeight: 3),
        if (_restoring)
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Checking previous purchase…',
              textAlign: TextAlign.center,
            ),
          ),
        if (_error != null && _pending == null && !_recoveryBlocked)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: Text(
              _error!,
              textAlign: TextAlign.center,
              style: TextStyle(color: theme.colorScheme.error),
            ),
          ),
        if (!_restoring &&
            _pending == null &&
            _operationId == null &&
            _recoveryBlocked)
          Center(
            child: Column(
              children: [
                const Text(
                  'Could not restore the previous purchase.',
                  textAlign: TextAlign.center,
                ),
                OutlinedButton.icon(
                  onPressed: _restore,
                  icon: const Icon(Icons.refresh_rounded),
                  label: const Text('Try again'),
                ),
              ],
            ),
          ),
        if (_pending != null && _operationId == null)
          Card(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                children: [
                  Text(
                    _error == null
                        ? 'Previous purchase is being checked.'
                        : 'Previous purchase needs checking.',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 9),
                  OutlinedButton.icon(
                    onPressed: _busy ? null : _recoverOriginal,
                    icon: const Icon(Icons.search_rounded),
                    label: const Text('Check previous purchase'),
                  ),
                ],
              ),
            ),
          ),
        if (_operationId != null)
          Card(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                children: [
                  Text(
                    switch (_status) {
                      'delivered' => 'Data delivered',
                      'failed' => 'Purchase unsuccessful',
                      _ => 'Purchase pending',
                    },
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  SelectableText(
                    _operationId!,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: colors.textMuted),
                  ),
                  if (_receiptDetails != null) ...[
                    const SizedBox(height: 6),
                    Text('Recipient: ${_receiptDetails!.recipientPhone}'),
                    Text('Bundle: ${_receiptDetails!.bundleId}'),
                    Text('Cost: ${groupedMb(_receiptDetails!.costMb)} MB'),
                  ],
                  TextButton.icon(
                    onPressed: () =>
                        Clipboard.setData(ClipboardData(text: _operationId!)),
                    icon: const Icon(Icons.copy_rounded),
                    label: const Text('Copy original reference'),
                  ),
                  if (_pending != null)
                    TextButton.icon(
                      onPressed: _busy
                          ? null
                          : _status == 'pending'
                          ? _checkStatus
                          : _recoverOriginal,
                      icon: const Icon(Icons.sync_rounded),
                      label: Text(
                        _status == 'pending'
                            ? 'Check status'
                            : 'Finish recovery',
                      ),
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
