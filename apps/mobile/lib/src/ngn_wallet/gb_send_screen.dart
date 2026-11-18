import '../../l10n/app_localizations.dart';
import 'dart:async';
import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';

import '../core/providers.dart';
import '../state/session_state.dart';
import 'gb_balance_card.dart';
import '../ui/components/masanawa_section_heading.dart';
import 'gb_recipient_lookup.dart';
import 'gb_wallet_summary.dart';
import 'gb_wallet_flow_components.dart';

/// Server-bound signed review. The phone alone never authorizes or identifies
/// an recipient; only a canonical verified @handle is accepted.
class GbSendQuote {
  const GbSendQuote({
    required this.recipientHandle,
    required this.recipientName,
    required this.recipientId,
    required this.amountKobo,
    required this.operationId,
    required this.reviewToken,
    required this.expiresAt,
  });

  final String recipientHandle, recipientName, recipientId;
  final int amountKobo;
  final String operationId, reviewToken;
  final DateTime expiresAt;

  factory GbSendQuote.fromJson(
    Object? response,
    int requestedKobo, {
    bool requireFresh = true,
  }) {
    if (response is! Map<String, dynamic> ||
        response['currency'] != 'NGN' || response['unit'] != 'kobo' || response['recipient'] is! Map<String, dynamic>) {
      throw const FormatException('Unverified Send review');
    }
    final recipient = response['recipient'] as Map<String, dynamic>;
    final name = recipient['displayName'];
    final handle = recipient['username'];
    final recipientId = recipient['id'];
    final reviewToken = response['reviewToken'];
    final operationId = response['operationId'];
    final time = response['expiresAt'];
    final expires = time is String ? DateTime.tryParse(time) : null;
    final now = DateTime.now().toUtc();
    if (requestedKobo < 1 ||
        requestedKobo > 1000000000 ||
        recipientId is! String ||
        recipientId.isEmpty ||
        name is! String ||
        name.trim().isEmpty ||
        handle is! String ||
        !RegExp(r'^[a-z0-9_][a-z0-9_.-]{1,63}$').hasMatch(handle) ||
        reviewToken is! String ||
        reviewToken.length < 40 ||
        reviewToken.length > 4096 ||
        operationId is! String ||
        !RegExp(r'^send_[A-Za-z0-9_-]{22,128}$').hasMatch(operationId) ||
        response['requiresConfirmation'] != true ||
        response['feeKobo'] != 0 ||
        response['amountKobo'] != requestedKobo ||
        expires == null ||
        !expires.isUtc ||
        expires.isAfter(now.add(const Duration(minutes: 6))) ||
        (requireFresh && !expires.isAfter(now))) {
      throw const FormatException('Inconsistent Send review');
    }
    return GbSendQuote(
      recipientHandle: handle,
      recipientName: name,
      recipientId: recipientId,
      amountKobo: requestedKobo,
      operationId: operationId,
      reviewToken: reviewToken,
      expiresAt: expires,
    );
  }

  Map<String, dynamic> toJson() => {
    'recipient': {
      'id': recipientId,
      'username': recipientHandle,
      'displayName': recipientName,
    },
    'currency':'NGN','unit':'kobo',
    'amountKobo': amountKobo,
    'feeKobo': 0,
    'requiresConfirmation': true,
    'operationId': operationId,
    'reviewToken': reviewToken,
    'expiresAt': expiresAt.toIso8601String(),
  };
}

abstract class GbSendPendingStore {
  Future<GbSendQuote?> read(String accountId);
  Future<void> write(String accountId, GbSendQuote quote);
  Future<void> clear(String accountId);
}

/// Encrypted original operation recovery; a restored token is never replayed
/// automatically. Readback is separately reauthorized by the Gateway.
class SecureGbSendPendingStore implements GbSendPendingStore {
  const SecureGbSendPendingStore();
  static const _storage = FlutterSecureStorage();
  String _key(String accountId) =>
      'ngn-send-v1-${sha256.convert(utf8.encode(accountId))}';

  @override
  Future<GbSendQuote?> read(String accountId) async {
    final raw = await _storage.read(key: _key(accountId));
    if (raw == null) return null;
    final data = jsonDecode(raw);
    if (data is! Map || data['ownerId'] != accountId || data['quote'] is! Map) {
      throw const FormatException('Mismatched pending Send owner');
    }
    final quote = Map<String, dynamic>.from(data['quote'] as Map);
    return GbSendQuote.fromJson(
      quote,
      quote['amountKobo'] is int ? quote['amountKobo'] as int : -1,
      requireFresh: false,
    );
  }

  @override
  Future<void> write(String accountId, GbSendQuote quote) => _storage.write(
    key: _key(accountId),
    value: jsonEncode({'ownerId': accountId, 'quote': quote.toJson()}),
  );

  @override
  Future<void> clear(String accountId) => _storage.delete(key: _key(accountId));
}

final gbSendPendingStoreProvider = Provider<GbSendPendingStore>(
  (ref) => const SecureGbSendPendingStore(),
);

class GbSendReceipt {
  const GbSendReceipt({required this.operationId, required this.amountKobo});
  final String operationId;
  final int amountKobo;

  factory GbSendReceipt.fromJson(Object? data, GbSendQuote quote) {
    if (data is! Map<String, dynamic> ||
        data['receipt'] is! Map<String, dynamic>) {
      throw const FormatException('Unconfirmed Send receipt');
    }
    final value = data['receipt'] as Map<String, dynamic>;
    if (value['currency']!='NGN'||value['unit']!='kobo'||value['state'] != 'completed' ||
        value['operationId'] != quote.operationId ||
        value['amountKobo'] != quote.amountKobo) {
      throw const FormatException('NGN Send receipt does not match review');
    }
    return GbSendReceipt(
      operationId: quote.operationId,
      amountKobo: quote.amountKobo,
    );
  }
}

/// Never silently repeats a POST on timeout. Original reviewToken and
/// operationId stay available for explicit idempotent receipt recovery.
class GbSendScreen extends ConsumerStatefulWidget {
  const GbSendScreen({super.key});

  @override
  ConsumerState<GbSendScreen> createState() => _GbSendScreenState();
}

class _GbSendScreenState extends ConsumerState<GbSendScreen> {
  final _username = TextEditingController();
  final _mb = TextEditingController();
  GbWalletOwner? _owner;
  GbSendQuote? _quote;
  GbSendReceipt? _receipt;
  CancelToken? _cancel;
  bool _busy = false;
  bool _uncertain = false;
  bool _storeReady = false, _restoring = false;
  String? _error;
  String? _quickSelection;
  int? _reviewBalanceKobo;
  int _request = 0;
  Timer? _sendQuoteExpiryTimer;

  @override
  void dispose() {
    _request++;
    _cancel?.cancel();
    _sendQuoteExpiryTimer?.cancel();
    _username.dispose();
    _mb.dispose();
    super.dispose();
  }

  void _clearReview() {
    _request++;
    _cancel?.cancel();
    _quote = null;
    _receipt = null;
    _busy = false;
    _uncertain = false;
    _error = null;
    _reviewBalanceKobo = null;
  }

  // An unsubmitted quote can be edited. Never release an original send
  // whose confirmation may already have reached the payment service.
  void _editUnsubmitted(GbWalletOwner owner) {
    if (_busy || _uncertain || _receipt != null || !_storeReady ||
        !_isOwner(owner)) return;
    setState(_clearReview);
  }

  bool _isOwner(GbWalletOwner owner) {
    final state = ref.read(sessionProvider);
    return state is SessionSignedIn &&
        state.user.id == owner.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch ==
            owner.authorizationEpoch;
  }

  Future<void> _restore(GbWalletOwner owner) async {
    if (!_isOwner(owner)) return;
    final sequence = ++_request;
    setState(() {
      _storeReady = false;
      _restoring = true;
      _error = null;
    });
    try {
      final pending = await ref
          .read(gbSendPendingStoreProvider)
          .read(owner.accountId);
      if (!mounted || sequence != _request || !_isOwner(owner)) return;
      setState(() {
        _storeReady = true;
        _restoring = false;
        if (pending != null) {
          _quote = pending;
          _uncertain = true;
          _username.text = '@${pending.recipientHandle}';
          _mb.text = ngnInput(pending.amountKobo);
          _error =
              'An original Send may be pending. Check its receipt '
              'before starting another transfer.';
        }
      });
    } catch (_) {
      if (!mounted || sequence != _request || !_isOwner(owner)) return;
      setState(() {
        _restoring = false;
        _storeReady = false;
        _error =
            'Could not read secure Send recovery. Retry before sending.';
      });
    }
  }

  int? get _amount => parseNgnInput(_mb.text);

  bool get _validHandle => RegExp(
    r'^@?[a-zA-Z0-9_][a-zA-Z0-9_.-]{1,63}$',
  ).hasMatch(_username.text.trim());

  Future<void> _review(GbWalletOwner owner) async {
    final amount = _amount;
    if (amount == null ||
        !_validHandle ||
        !_isOwner(owner) ||
        _busy ||
        !_storeReady ||
        _quote != null)
      return;
    final balance = ref.read(gbWalletSummaryProvider(owner)).valueOrNull;
    if (balance == null ||
        balance.frozen ||
        amount > balance.availableKobo)
      return;
    final cancel = CancelToken();
    _cancel = cancel;
    final sequence = ++_request;
    setState(() {
      _quote = null;
      _receipt = null;
      _error = null;
      _busy = true;
    });
    try {
      final response = await ref
          .read(apiClientProvider)
          .dio
          .post<Object?>(
            '/v1/ngn/wallet/send/quote',
            data: {'username': _username.text.trim(), 'amountKobo': amount},
            cancelToken: cancel,
            options: Options(headers: const {'Cache-Control': 'no-store'}),
          );
      final quote = GbSendQuote.fromJson(response.data, amount);
      if (!mounted || sequence != _request || !_isOwner(owner)) return;
      setState(() {
        _quote = quote;
        _reviewBalanceKobo = balance.availableKobo;
        _busy = false;
      });
      if (mounted) _showSendReview(owner, quote);
    } on DioException catch (error) {
      if (!mounted || sequence != _request || !_isOwner(owner)) return;
      setState(() {
        _busy = false;
        _error = switch (error.response?.statusCode) {
          404 => 'No verified recipient or Send service was found.',
          409 => _insufficientPurchasedMb(error)
              ? 'Insufficient money for this transfer.'
              : 'This Send review was declined. Check details and retry.',
          401 || 403 => 'Please sign in again or check your account status.',
          _ => 'Send review is unavailable. No money was moved.',
        };
      });
    } catch (_) {
      if (!mounted || sequence != _request || !_isOwner(owner)) return;
      setState(() {
        _busy = false;
        _error = 'Send review could not be verified. No money was moved.';
      });
    }
  }

  bool _insufficientPurchasedMb(DioException error) {
    final data = error.response?.data;
    if (data is! Map) return false;
    final details = data['error'];
    return details is Map && details['code'] == 'insufficient_balance';
  }

  Future<void> _showSendReview(GbWalletOwner owner, GbSendQuote quote) async {
    var sheetBusy = false;
    _sendQuoteExpiryTimer?.cancel();
    try {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      useSafeArea: true,
      builder: (sheetContext) => StatefulBuilder(
        builder: (sheetContext, refreshSheet) {
          _sendQuoteExpiryTimer ??= Timer(
            quote.expiresAt.difference(DateTime.now().toUtc()).isNegative
                ? Duration.zero
                : quote.expiresAt.difference(DateTime.now().toUtc()) +
                    const Duration(milliseconds: 50),
            () { if (sheetContext.mounted) refreshSheet(() {}); },
          );
          return PopScope(
          canPop: !sheetBusy,
          child: GbWalletReviewSheet(
            title: _receipt != null
                ? 'Transfer completed'
                : _uncertain
                ? 'Check original transfer'
                : 'Review send',
            busy: sheetBusy,
            onEdit: sheetBusy || _uncertain || _receipt != null ? null : () {
              Navigator.pop(sheetContext);
              _editUnsubmitted(owner);
            },
            onClose: sheetBusy ? null : () => Navigator.pop(sheetContext),
            children: [
              GbWalletAmountHero(
                '${ngnMoney(quote.amountKobo)}',
                caption: _receipt != null
                    ? 'NGN sent successfully'
                    : 'Send to a Masanawa user',
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      GbWalletReviewLine(
                        'To',
                        quote.recipientName,
                        emphasize: true,
                      ),
                      GbWalletReviewLine(
                        'Verified username',
                        '@${quote.recipientHandle}',
                      ),
                      GbWalletReviewLine(
                        'Amount',
                        '${ngnMoney(quote.amountKobo)}',
                      ),
                      const GbWalletReviewLine('Transfer fee', '₦0'),
                      if (_reviewBalanceKobo != null)
                        GbWalletReviewLine(
                          'Estimated remaining balance',
                          '${ngnMoney(_reviewBalanceKobo! - quote.amountKobo)}',
                          emphasize: true,
                        ),
                    ],
                  ),
                ),
              ),
              if (!_uncertain && _receipt == null)
                TextButton.icon(
                  key: const ValueKey('send-edit-details'),
                  onPressed: sheetBusy ? null : () {
                    Navigator.pop(sheetContext);
                    _editUnsubmitted(owner);
                  },
                  icon: const Icon(Icons.edit_outlined),
                  label: const Text('Change recipient or amount'),
                ),
              if (_uncertain || _receipt != null)
                ExpansionTile(
                  title: const Text('Original reference'),
                  children: [SelectableText(quote.operationId)],
                ),
              if (_error != null) GbWalletInlineNotice(message: _error!),
              if (_uncertain && _receipt == null)
                OutlinedButton.icon(
                  onPressed:
                      sheetBusy ||
                          !quote.expiresAt.isAfter(DateTime.now().toUtc())
                      ? null
                      : () async {
                          refreshSheet(() => sheetBusy = true);
                          await _confirm(
                            owner,
                            quote,
                          ); // Same signed review token.
                          if (sheetContext.mounted)
                            refreshSheet(() => sheetBusy = false);
                        },
                  icon: const Icon(Icons.refresh_rounded),
                  label: const Text('Retry same confirmation'),
                ),
              if (!_uncertain &&
                  _receipt == null &&
                  !quote.expiresAt.isAfter(DateTime.now().toUtc()))
                GbWalletInlineNotice(
                  message:
                      'Review expired. Change details and request a fresh review.',
                ),
            ],
            action: FilledButton.icon(
              onPressed: sheetBusy
                  ? null
                  : _receipt != null
                  ? () => Navigator.pop(sheetContext)
                  : _uncertain
                  ? () async {
                      refreshSheet(() => sheetBusy = true);
                      await _checkOriginal(owner, quote);
                      if (sheetContext.mounted)
                        refreshSheet(() => sheetBusy = false);
                    }
                  : !quote.expiresAt.isAfter(DateTime.now().toUtc())
                  ? () { Navigator.pop(sheetContext); _editUnsubmitted(owner); }
                  : () async {
                      refreshSheet(() => sheetBusy = true);
                      await _confirm(owner, quote);
                      if (sheetContext.mounted)
                        refreshSheet(() => sheetBusy = false);
                    },
              icon: Icon(
                _receipt != null
                    ? Icons.check_circle_outline
                    : _uncertain
                    ? Icons.search_rounded
                    : Icons.send_rounded,
              ),
              label: Text(
                sheetBusy
                    ? (_uncertain ? 'Checking original…' : 'Sending…')
                    : _receipt != null
                    ? 'Done'
                    : _uncertain
                    ? 'Check original transfer'
                    : !quote.expiresAt.isAfter(DateTime.now().toUtc())
                    ? 'Review again'
                    : 'Send',
              ),
            ),
          ),
        );
        },
      ),
    );
    } finally {
      _sendQuoteExpiryTimer?.cancel();
      _sendQuoteExpiryTimer = null;
    }
  }

  Future<void> _confirm(GbWalletOwner owner, GbSendQuote quote) async {
    if (_busy ||
        !_isOwner(owner) ||
        !_storeReady ||
        !quote.expiresAt.isAfter(DateTime.now().toUtc()))
      return;
    final cancel = CancelToken();
    _cancel = cancel;
    final sequence = ++_request;
    setState(() {
      _busy = true;
      _error = null;
    });
    // Persist the signed original BEFORE issuing the financial write. If
    // encrypted storage fails, no HTTP confirm is permitted.
    try {
      await ref.read(gbSendPendingStoreProvider).write(owner.accountId, quote);
    } catch (_) {
      if (!mounted || sequence != _request || !_isOwner(owner)) return;
      setState(() {
        _busy = false;
        _error =
            'Could not save secure transfer recovery. '
            'No money was submitted. Retry the same review.';
      });
      return;
    }
    if (!mounted || sequence != _request || !_isOwner(owner)) return;
    setState(() => _uncertain = true);
    try {
      final response = await ref
          .read(apiClientProvider)
          .dio
          .post<Object?>(
            '/v1/ngn/wallet/send/confirm',
            data: {'reviewToken': quote.reviewToken, 'reviewAccepted': true},
            cancelToken: cancel,
            options: Options(headers: const {'Cache-Control': 'no-store'}),
          );
      final receipt = GbSendReceipt.fromJson(response.data, quote);
      if (!mounted || sequence != _request || !_isOwner(owner)) return;
      await _complete(owner, sequence, receipt);
    } catch (_) {
      if (!mounted || sequence != _request || !_isOwner(owner)) return;
      setState(() {
        _busy = false;
        _uncertain = true;
        _error =
            'Send not yet confirmed. Check the original reference; do not start another transfer.';
      });
    }
  }

  Future<void> _complete(
    GbWalletOwner owner,
    int sequence,
    GbSendReceipt receipt,
  ) async {
    if (!mounted || sequence != _request || !_isOwner(owner)) return;
    setState(() {
      _busy = false;
      _receipt = receipt;
      _uncertain = false;
      _error = null;
    });
    ref.invalidate(gbWalletSummaryProvider(owner));
    try {
      await ref.read(gbSendPendingStoreProvider).clear(owner.accountId);
    } catch (_) {
      if (mounted && sequence == _request && _isOwner(owner))
        setState(() {
          _error =
              'Transfer completed, but secure recovery cleanup is pending. '
              'The original receipt can be checked again after reopening Send.';
        });
    }
  }

  Future<void> _checkOriginal(GbWalletOwner owner, GbSendQuote quote) async {
    if (_busy || !_isOwner(owner)) return;
    final ticket = ++_request;
    _cancel?.cancel();
    final cancel = CancelToken();
    _cancel = cancel;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final response = await ref
          .read(apiClientProvider)
          .dio
          .get<Object?>(
            '/v1/ngn/wallet/send/receipt/${Uri.encodeComponent(quote.operationId)}',
            cancelToken: cancel,
            options: Options(headers: const {'Cache-Control': 'no-store'}),
          );
      final receipt = GbSendReceipt.fromJson(response.data, quote);
      if (!mounted || ticket != _request || !_isOwner(owner)) return;
      await _complete(owner, ticket, receipt);
    } on DioException catch (error) {
      if (!mounted || ticket != _request || !_isOwner(owner)) return;
      setState(() {
        _busy = false;
        _uncertain = true;
        _error = error.response?.statusCode == 404
            ? 'No confirmed transfer was found yet. This does not mean it failed. '
                  'Keep the original review and check again.'
            : 'Original transfer readback is unavailable. Keep this same review '
                  'and reference; no was sent by this check.';
      });
    } catch (_) {
      if (!mounted || ticket != _request || !_isOwner(owner)) return;
      setState(() {
        _busy = false;
        _uncertain = true;
        _error =
            'Original transfer could not be verified. Keep the same review; '
            'do not create another Send.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    final owner = session is SessionSignedIn
        ? (
            accountId: session.user.id,
            authorizationEpoch: ref
                .read(sessionProvider.notifier)
                .authorizationEpoch,
          )
        : null;
    if (owner != _owner) {
      _clearReview();
      _username.clear();
      _mb.clear();
      _quickSelection = null;
      _owner = owner;
      _storeReady = false;
      _restoring = false;
      if (owner != null)
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && _owner == owner) _restore(owner);
        });
    }
    final balanceState = owner == null
        ? null
        : ref.watch(gbWalletSummaryProvider(owner));
    final balance = balanceState?.valueOrNull;
    final loadingBalance = balanceState?.isLoading ?? false;
    final sendableKobo = balance == null || balance.frozen
        ? null
        : balance.availableKobo;
    final maxSendKobo = sendableKobo == null
        ? null
        : sendableKobo > 1000000000
        ? 1000000000
        : sendableKobo;
    final chosenKobo = _amount;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).sendMoneyLabel)),
      bottomNavigationBar: owner == null
          ? null
          : SafeArea(
              minimum: const EdgeInsets.fromLTRB(16, 8, 16, 12),
              child: _receipt != null
                  ? Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => context.go('/home?tab=wallet'),
                            child: const Text('Done'),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: FilledButton(
                            onPressed: () => context.push('/wallet/activity'),
                            child: const Text('View activity'),
                          ),
                        ),
                      ],
                    )
                  : FilledButton.icon(
                      onPressed: _quote != null
                          ? _busy
                                ? null
                                : () => _showSendReview(owner, _quote!)
                          : _validHandle &&
                                chosenKobo != null &&
                                !_busy &&
                                _storeReady &&
                                sendableKobo != null &&
                                chosenKobo <= sendableKobo
                          ? () => _review(owner)
                          : null,
                      icon: const Icon(Icons.fact_check_outlined),
                      label: Text(
                        _quote == null
                            ? 'Review recipient and amount'
                            : _uncertain
                            ? 'Check original transfer'
                            : 'Open send review',
                      ),
                    ),
            ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (_receipt != null) ...[
            GbWalletAmountHero(
              '${ngnMoney(_receipt!.amountKobo)}',
              caption: 'Sent successfully',
            ),
            if (_quote != null)
              Card(child: ListTile(
                leading: const Icon(Icons.verified_user_outlined),
                title: Text(_quote!.recipientName),
                subtitle: Text('@${_quote!.recipientHandle}'),
              )),
            const GbWalletResultSummary(
              title: 'NGN sent',
              detail: 'Your Naira transfer is confirmed.',
            ),
            Card(
              child: ExpansionTile(
                title: const Text('Original transfer reference'),
                children: [SelectableText(_receipt!.operationId)],
              ),
            ),
          ] else ...[
            GbWalletBalanceCard(
              balance: balance,
              loading: loadingBalance,
              showSendable: true,
              compact: true,
            ),
            if (balance == null && !loadingBalance && owner != null)
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton.icon(
                  onPressed: () =>
                      ref.invalidate(gbWalletSummaryProvider(owner)),
                  icon: const Icon(Icons.refresh_rounded, size: 18),
                  label: const Text('Retry balance'),
                ),
              ),
            const SizedBox(height: 18),
            if (_quote != null && !_uncertain && !_busy && _receipt == null)
              TextButton.icon(
                key: const ValueKey('send-form-change-details'),
                onPressed: owner == null ? null : () => _editUnsubmitted(owner),
                icon: const Icon(Icons.edit_outlined),
                label: const Text('Change recipient or amount'),
              ),
            GbRecipientField(
              controller: _username,
              owner: owner,
              enabled: owner != null && !_busy && _quote == null,
              onChanged: (_) => setState(_clearReview),
              label: 'Find recipient',
            ),
            if (!_validHandle && _username.text.trim().isNotEmpty)
              Text('Select a verified recipient from search results.',
                style: theme.textTheme.bodySmall),
            const SizedBox(height: 12),
            MasanawaSectionHeading(
              'Quick amounts',
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 6),
            Row(children: [
              Expanded(child: SingleChildScrollView(
                key: const ValueKey('send-quick-amounts'),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final entry in const <int, String>{
                      10000: '₦100',
                      50000: '₦500',
                      100000: '₦1,000',
                      500000: '₦5,000',
                      1000000: '₦10,000',
                    }.entries)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(end: 6),
                        child: ChoiceChip(
                          key: ValueKey('send-quick-${entry.key}'),
                          label: Text(entry.value),
                          selected: _quickSelection == '${entry.key}',
                          onSelected:
                              owner == null ||
                                  _busy ||
                                  _quote != null ||
                                  sendableKobo == null ||
                                  entry.key > sendableKobo
                              ? null
                              : (_) => setState(() {
                                  _mb.text = ngnInput(entry.key);
                                  _quickSelection = '${entry.key}';
                                  _clearReview();
                                }),
                        ),
                      ),
                    ChoiceChip(
                      key: const ValueKey('send-quick-max'),
                      label: const Text('Max'),
                      selected: _quickSelection == 'max',
                      onSelected:
                          owner == null ||
                              _busy ||
                              _quote != null ||
                              maxSendKobo == null ||
                              maxSendKobo < 1
                          ? null
                          : (_) => setState(() {
                              _mb.text = ngnInput(maxSendKobo);
                              _quickSelection = 'max';
                              _clearReview();
                            }),
                    ),
                  ],
                ),
              )),
              const Tooltip(message: 'Swipe for more amounts',
                child: Icon(Icons.chevron_right_rounded, size: 20)),
            ]),
            const SizedBox(height: 12),
            TextField(
              key: const ValueKey('send-custom-mb'),
              controller: _mb,
              enabled: owner != null && !_busy && _quote == null,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              onChanged: (value) => setState(() {
                _quickSelection = const <String>{'100', '500', '1000', '5000', '10000'}.contains(value.trim())
                    ? '${parseNgnInput(value)??0}' : null;
                _clearReview();
              }),
              decoration: InputDecoration(
                labelText: 'Amount (NGN)',
                hintText: 'Enter Naira',
                helperText: 'Up to ₦10,000,000',
                errorText: _mb.text.trim().isNotEmpty && chosenKobo == null
                    ? 'Enter a Naira amount within the transfer limit'
                    : null,
                border: const OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                sendableKobo == null
                    ? 'Available balance unavailable'
                    : 'Available to send: ${ngnMoney(sendableKobo)}',
                style: theme.textTheme.bodySmall,
              ),
            ),
            if (chosenKobo != null && sendableKobo != null && chosenKobo > sendableKobo)
              GbWalletInlineNotice(
                message: 'Amount exceeds your available balance.',
                actionLabel: 'Add Money',
                onAction: owner == null
                    ? null
                    : () async {
                        await context.push('/wallet/fund');
                        if (mounted && _isOwner(owner)) {
                          ref.invalidate(gbWalletSummaryProvider(owner));
                          setState(_clearReview);
                        }
                      },
              ),
            if (_busy) const LinearProgressIndicator(),
            if (_restoring) const LinearProgressIndicator(),
            if (_error != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  _error!,
                  style: TextStyle(color: theme.colorScheme.error),
                ),
              ),
            if (owner != null && !_storeReady && !_restoring)
              TextButton.icon(
                onPressed: () => _restore(owner),
                icon: const Icon(Icons.refresh_rounded),
                label: const Text('Retry secure Send recovery'),
              ),
            const SizedBox(height: 14),
            if (owner == null)
              const Text('Sign in before transferring.')
            else if (_quote == null && _receipt == null)
              const Text('Verify the recipient and amount before sending.'),
            TextButton(
              onPressed: () => context.go('/home?tab=wallet'),
              child: const Text('Back to Wallet'),
            ),
          ],
        ],
      ),
    );
  }
}
