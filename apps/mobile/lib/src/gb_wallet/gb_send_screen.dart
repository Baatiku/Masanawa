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

/// Server-bound signed review. The phone alone never authorizes or identifies
/// an MB recipient; only a canonical verified @handle is accepted.
class GbSendQuote {
  const GbSendQuote({
    required this.recipientHandle,
    required this.recipientName,
    required this.recipientId,
    required this.amountMb,
    required this.operationId,
    required this.reviewToken,
    required this.expiresAt,
  });

  final String recipientHandle, recipientName, recipientId;
  final int amountMb;
  final String operationId, reviewToken;
  final DateTime expiresAt;

  factory GbSendQuote.fromJson(Object? response, int requestedMb,
      {bool requireFresh = true}) {
    if (response is! Map<String, dynamic> ||
        response['recipient'] is! Map<String, dynamic>) {
      throw const FormatException('Unverified MB Send review');
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
    if (requestedMb < 1 || requestedMb > 1000000000 ||
        recipientId is! String || recipientId.isEmpty ||
        name is! String || name.trim().isEmpty ||
        handle is! String ||
        !RegExp(r'^[a-z0-9_][a-z0-9_.-]{1,63}$').hasMatch(handle) ||
        reviewToken is! String || reviewToken.length < 40 ||
        reviewToken.length > 4096 || operationId is! String ||
        !RegExp(r'^send_[A-Za-z0-9_-]{22,128}$').hasMatch(operationId) ||
        response['requiresConfirmation'] != true ||
        response['feeMb'] != 0 ||
        response['amountMb'] != requestedMb ||
        expires == null || !expires.isUtc ||
        expires.isAfter(now.add(const Duration(minutes: 6))) ||
        (requireFresh && !expires.isAfter(now))) {
      throw const FormatException('Inconsistent MB Send review');
    }
    return GbSendQuote(
      recipientHandle: handle, recipientName: name,
      recipientId: recipientId, amountMb: requestedMb,
      operationId: operationId, reviewToken: reviewToken,
      expiresAt: expires,
    );
  }

  Map<String,dynamic> toJson()=>{
    'recipient':{'id':recipientId,'username':recipientHandle,
      'displayName':recipientName},
    'amountMb':amountMb,'feeMb':0,'requiresConfirmation':true,
    'operationId':operationId,'reviewToken':reviewToken,
    'expiresAt':expiresAt.toIso8601String(),
  };
}

abstract class GbSendPendingStore {
  Future<GbSendQuote?> read(String accountId);
  Future<void> write(String accountId,GbSendQuote quote);
  Future<void> clear(String accountId);
}

/// Encrypted original operation recovery; a restored token is never replayed
/// automatically. Readback is separately reauthorized by the Gateway.
class SecureGbSendPendingStore implements GbSendPendingStore {
  const SecureGbSendPendingStore();
  static const _storage=FlutterSecureStorage();
  String _key(String accountId)=>
    'gb-send-v1-${sha256.convert(utf8.encode(accountId))}';

  @override
  Future<GbSendQuote?> read(String accountId) async {
    final raw=await _storage.read(key:_key(accountId));
    if(raw==null)return null;
    final data=jsonDecode(raw);
    if(data is! Map || data['ownerId']!=accountId || data['quote'] is! Map) {
      throw const FormatException('Mismatched pending Send owner');
    }
    final quote=Map<String,dynamic>.from(data['quote'] as Map);
    return GbSendQuote.fromJson(quote,quote['amountMb'] is int
      ? quote['amountMb'] as int : -1,requireFresh:false);
  }

  @override
  Future<void> write(String accountId,GbSendQuote quote)=>_storage.write(
    key:_key(accountId),value:jsonEncode({
      'ownerId':accountId,'quote':quote.toJson(),
    }));

  @override
  Future<void> clear(String accountId)=>_storage.delete(key:_key(accountId));
}

final gbSendPendingStoreProvider=Provider<GbSendPendingStore>(
  (ref)=>const SecureGbSendPendingStore());

class GbSendReceipt {
  const GbSendReceipt({required this.operationId, required this.amountMb});
  final String operationId;
  final int amountMb;

  factory GbSendReceipt.fromJson(Object? data, GbSendQuote quote) {
    if (data is! Map<String, dynamic> ||
        data['receipt'] is! Map<String, dynamic>) {
      throw const FormatException('Unconfirmed MB Send receipt');
    }
    final value = data['receipt'] as Map<String, dynamic>;
    if (value['state'] != 'completed' ||
        value['operationId'] != quote.operationId ||
        value['amountMb'] != quote.amountMb) {
      throw const FormatException('MB Send receipt does not match review');
    }
    return GbSendReceipt(
      operationId: quote.operationId, amountMb: quote.amountMb);
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
  int? _reviewBalanceMb;
  int _request = 0;

  @override
  void dispose() {
    _request++;
    _cancel?.cancel();
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
    _reviewBalanceMb = null;
  }

  bool _isOwner(GbWalletOwner owner) {
    final state = ref.read(sessionProvider);
    return state is SessionSignedIn &&
        state.user.id == owner.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch ==
            owner.authorizationEpoch;
  }

  Future<void> _restore(GbWalletOwner owner) async {
    if(!_isOwner(owner))return;
    final sequence=++_request;
    setState((){_storeReady=false;_restoring=true;_error=null;});
    try {
      final pending=await ref.read(gbSendPendingStoreProvider)
        .read(owner.accountId);
      if(!mounted||sequence!=_request||!_isOwner(owner))return;
      setState(() {
        _storeReady=true;_restoring=false;
        if(pending!=null){
          _quote=pending;_uncertain=true;
          _username.text='@${pending.recipientHandle}';
          _mb.text=pending.amountMb.toString();
          _error='An original Send may be pending. Check its receipt '
            'before starting another transfer.';
        }
      });
    }catch (_) {
      if(!mounted||sequence!=_request||!_isOwner(owner))return;
      setState(() {
        _restoring=false;_storeReady=false;
        _error='Could not read secure Send recovery. Retry before sending MB.';
      });
    }
  }

  int? get _amount {
    final text = _mb.text.trim();
    if (!RegExp(r'^[1-9][0-9]{0,8}$').hasMatch(text) &&
        text != '1000000000') return null;
    final amount = int.tryParse(text);
    return amount != null && amount >= 1 && amount <= 1000000000
        ? amount : null;
  }

  bool get _validHandle =>
      RegExp(r'^@?[a-zA-Z0-9_][a-zA-Z0-9_.-]{1,63}$')
          .hasMatch(_username.text.trim());

  Future<void> _review(GbWalletOwner owner) async {
    final amount = _amount;
    if (amount == null || !_validHandle || !_isOwner(owner) || _busy ||
        !_storeReady || _quote!=null) return;
    final balance = ref.read(gbWalletSummaryProvider(owner)).valueOrNull;
    if (balance == null || balance.frozen ||
        amount > balance.purchasedAvailableMb) return;
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
      final response = await ref.read(apiClientProvider).dio.post<Object?>(
        '/v1/gb/wallet/send/quote',
        data: {
          'username': _username.text.trim(),
          'amountMb': amount,
        },
        cancelToken: cancel,
        options: Options(headers: const {'Cache-Control': 'no-store'}),
      );
      final quote = GbSendQuote.fromJson(response.data, amount);
      if (!mounted || sequence != _request || !_isOwner(owner)) return;
      setState(() {
        _quote = quote;
        _reviewBalanceMb = balance.purchasedAvailableMb;
        _busy = false;
      });
      if (mounted) _showSendReview(owner, quote);
    } on DioException catch (error) {
      if (!mounted || sequence != _request || !_isOwner(owner)) return;
      setState(() {
        _busy = false;
        _error = switch (error.response?.statusCode) {
          404 => 'No verified recipient or Send service was found.',
          409 => 'Insufficient purchased MB for this transfer.',
          401 || 403 => 'Please sign in again or check your account status.',
          _ => 'Send review is unavailable. No MB was moved.',
        };
      });
    } catch (_) {
      if (!mounted || sequence != _request || !_isOwner(owner)) return;
      setState(() {
        _busy = false;
        _error = 'Send review could not be verified. No MB was moved.';
      });
    }
  }

  Future<void> _showSendReview(GbWalletOwner owner, GbSendQuote quote) async {
    await showModalBottomSheet<void>(
      context: context, isScrollControlled: true, isDismissible: false,
      enableDrag: false, useSafeArea: true,
      builder: (sheetContext) => StatefulBuilder(
        builder: (sheetContext, refreshSheet) => PopScope(
          canPop: !_busy && !_uncertain,
          child: FractionallySizedBox(heightFactor: .75,
            child: ListView(padding: const EdgeInsets.all(20), children: [
              Row(children: [
                Expanded(child: Text('Review MB send',
                  style: Theme.of(sheetContext).textTheme.titleLarge)),
                IconButton(tooltip: 'Close review',
                  onPressed: _busy || _uncertain ? null
                    : () => Navigator.pop(sheetContext),
                  icon: const Icon(Icons.close_rounded)),
              ]),
              const SizedBox(height: 12),
              Text('${groupedMb(quote.amountMb)} MB',
                style: Theme.of(sheetContext).textTheme.headlineMedium),
              const SizedBox(height: 12),
              _SendReviewLine('Recipient', quote.recipientName),
              _SendReviewLine('Username', '@${quote.recipientHandle}'),
              _SendReviewLine('Amount',
                '${groupedMb(quote.amountMb)} MB (${decimalGb(quote.amountMb)} GB)'),
              const _SendReviewLine('Fee', '0 MB'),
              if (_reviewBalanceMb != null)
                _SendReviewLine('Remaining sendable',
                  '${groupedMb(_reviewBalanceMb! - quote.amountMb)} MB'),
              const SizedBox(height: 12),
              SelectableText('Reference: ${quote.operationId}'),
              const SizedBox(height: 12),
              if (_error != null) Text(_error!,
                style: TextStyle(color: Theme.of(sheetContext).colorScheme.error)),
              if (_receipt != null) ...[
                const Text('MB transfer completed'),
                SelectableText('Receipt: ${_receipt!.operationId}'),
              ]
              else ...[
                FilledButton(
                  onPressed: _busy || !quote.expiresAt.isAfter(DateTime.now().toUtc())
                    ? null : () async {
                      await _confirm(owner, quote);
                      if (sheetContext.mounted) refreshSheet(() {});
                    },
                  child: Text(_uncertain ? 'Retry same confirmation' : 'Send MB')),
                TextButton.icon(
                  onPressed: _busy ? null : () async {
                    await _checkOriginal(owner, quote);
                    if (sheetContext.mounted) refreshSheet(() {});
                  },
                  icon: const Icon(Icons.receipt_long_outlined),
                  label: const Text('Check original transfer')),
              ],
            ])),
        )),
    );
  }

  Future<void> _confirm(GbWalletOwner owner, GbSendQuote quote) async {
    if (_busy || !_isOwner(owner) ||
        !_storeReady || !quote.expiresAt.isAfter(DateTime.now().toUtc())) return;
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
      await ref.read(gbSendPendingStoreProvider).write(owner.accountId,quote);
    }catch (_) {
      if(!mounted||sequence!=_request||!_isOwner(owner))return;
      setState(() {
        _busy=false;_error='Could not save secure transfer recovery. '
          'No MB was submitted. Retry the same review.';
      });
      return;
    }
    if(!mounted||sequence!=_request||!_isOwner(owner))return;
    setState(()=>_uncertain=true);
    try {
      final response = await ref.read(apiClientProvider).dio.post<Object?>(
        '/v1/gb/wallet/send/confirm',
        data: {'reviewToken': quote.reviewToken, 'reviewAccepted': true},
        cancelToken: cancel,
        options: Options(headers: const {'Cache-Control': 'no-store'}),
      );
      final receipt = GbSendReceipt.fromJson(response.data, quote);
      if (!mounted || sequence != _request || !_isOwner(owner)) return;
      await _complete(owner,sequence,receipt);
    } catch (_) {
      if (!mounted || sequence != _request || !_isOwner(owner)) return;
      setState(() {
        _busy = false;
        _uncertain = true;
        _error = 'Confirmation was not verified. Do not start another Send. '
            'Retry this SAME review, or contact support with the reference.';
      });
    }
  }

  Future<void> _complete(GbWalletOwner owner,int sequence,
      GbSendReceipt receipt) async {
    if(!mounted||sequence!=_request||!_isOwner(owner))return;
    setState((){_busy=false;_receipt=receipt;_uncertain=false;_error=null;});
    ref.invalidate(gbWalletSummaryProvider(owner));
    try {
      await ref.read(gbSendPendingStoreProvider).clear(owner.accountId);
    }catch (_) {
      if(mounted&&sequence==_request&&_isOwner(owner))setState(() {
        _error='Transfer completed, but secure recovery cleanup is pending. '
          'The original receipt can be checked again after reopening Send.';
      });
    }
  }

  Future<void> _checkOriginal(GbWalletOwner owner,GbSendQuote quote) async {
    if(_busy || !_isOwner(owner))return;
    final ticket=++_request;
    _cancel?.cancel();
    final cancel=CancelToken();_cancel=cancel;
    setState((){_busy=true;_error=null;});
    try {
      final response=await ref.read(apiClientProvider).dio.get<Object?>(
        '/v1/gb/wallet/send/receipt/${Uri.encodeComponent(quote.operationId)}',
        cancelToken:cancel,
        options:Options(headers:const {'Cache-Control':'no-store'}));
      final receipt=GbSendReceipt.fromJson(response.data,quote);
      if(!mounted || ticket!=_request || !_isOwner(owner))return;
      await _complete(owner,ticket,receipt);
    }on DioException catch(error) {
      if(!mounted || ticket!=_request || !_isOwner(owner))return;
      setState((){
        _busy=false;
        _uncertain=true;
        _error=error.response?.statusCode==404
          ? 'No confirmed transfer was found yet. This does not mean it failed. '
              'Keep the original review and check again.'
          : 'Original transfer readback is unavailable. Keep this same review '
              'and reference; no MB was sent by this check.';
      });
    }catch (_) {
      if(!mounted || ticket!=_request || !_isOwner(owner))return;
      setState((){
        _busy=false;
        _uncertain=true;
        _error='Original transfer could not be verified. Keep the same review; '
          'do not create another Send.';
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
    if (owner != _owner) {
      _clearReview();
      _username.clear();
      _mb.clear();
      _quickSelection = null;
      _owner = owner;
      _storeReady=false;_restoring=false;
      if(owner!=null) WidgetsBinding.instance.addPostFrameCallback((_) {
        if(mounted&&_owner==owner)_restore(owner);
      });
    }
    final balanceState = owner == null
        ? null : ref.watch(gbWalletSummaryProvider(owner));
    final balance = balanceState?.valueOrNull;
    final loadingBalance = balanceState?.isLoading ?? false;
    final sendableMb = balance == null || balance.frozen
        ? null : balance.purchasedAvailableMb;
    final maxSendMb = sendableMb == null ? null
        : sendableMb > 1000000000 ? 1000000000 : sendableMb;
    final chosenMb = _amount;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Send MB')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          GbWalletBalanceCard(
            balance: balance, loading: loadingBalance, showSendable: true,
            compact: true),
          if (balance == null && !loadingBalance && owner != null)
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton.icon(
                onPressed: () => ref.invalidate(gbWalletSummaryProvider(owner)),
                icon: const Icon(Icons.refresh_rounded, size: 18),
                label: const Text('Retry balance'),
              ),
            ),
          const SizedBox(height: 18),
          GbRecipientField(
            controller: _username,
            owner: owner,
            enabled: owner != null && !_busy && _quote == null,
            onChanged: (_) => setState(_clearReview),
            label: 'Find recipient',
          ),
          const SizedBox(height: 12),
          MasanawaSectionHeading('Quick amounts',
            style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 6),
          Center(child: SingleChildScrollView(
            key: const ValueKey('send-quick-amounts'),
            scrollDirection: Axis.horizontal,
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              for (final entry in const <int, String>{
                100: '100 MB', 500: '500 MB', 1000: '1 GB',
                5000: '5 GB', 10000: '10 GB',
              }.entries)
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 6),
                  child: ChoiceChip(
                    key: ValueKey('send-quick-${entry.key}'),
                    label: Text(entry.value),
                    selected: _quickSelection == '${entry.key}',
                    onSelected: owner == null || _busy || _quote != null ||
                        sendableMb == null || entry.key > sendableMb
                        ? null : (_) => setState(() {
                            _mb.text = entry.key.toString();
                            _quickSelection = '${entry.key}';
                            _clearReview();
                          }),
                  ),
                ),
              ChoiceChip(
                key: const ValueKey('send-quick-max'),
                label: const Text('Max'),
                selected: _quickSelection == 'max',
                onSelected: owner == null || _busy || _quote != null ||
                    maxSendMb == null || maxSendMb < 1
                    ? null : (_) => setState(() {
                        _mb.text = maxSendMb.toString();
                        _quickSelection = 'max';
                        _clearReview();
                      }),
              ),
            ]),
          )),
          const SizedBox(height: 12),
          TextField(
            key: const ValueKey('send-custom-mb'),
            controller: _mb,
            enabled: owner != null && !_busy && _quote == null,
            keyboardType: TextInputType.number,
            onChanged: (_) => setState(() {
              _quickSelection = null;
              _clearReview();
            }),
            decoration: const InputDecoration(
              labelText: 'Custom amount (whole MB)',
              hintText: 'Enter MB',
              border: OutlineInputBorder(),
            ),
          ),
          if (chosenMb != null && sendableMb != null &&
              chosenMb > sendableMb)
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text('Amount exceeds sendable purchased MB',
                style: TextStyle(color: theme.colorScheme.error)),
            ),
          if (_busy) const LinearProgressIndicator(),
          if (_restoring) const LinearProgressIndicator(),
          if (_error != null) Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(_error!, style: TextStyle(
              color: theme.colorScheme.error)),
          ),
          if(owner!=null && !_storeReady && !_restoring)
            TextButton.icon(
              onPressed:()=>_restore(owner),
              icon:const Icon(Icons.refresh_rounded),
              label:const Text('Retry secure Send recovery')),
          const SizedBox(height: 14),
          if (owner == null)
            const Text('Sign in before transferring MB.')
          else if (_quote == null && _receipt == null)
            FilledButton.icon(
              onPressed: _validHandle && chosenMb != null && !_busy &&
                  _storeReady &&
                  sendableMb != null && chosenMb <= sendableMb
                  ? () => _review(owner) : null,
              icon: const Icon(Icons.fact_check_outlined),
              label: const Text('Review recipient and amount'),
            ),
          if (_quote != null && _receipt == null)
            FilledButton.icon(
              onPressed: _busy ? null : () => _showSendReview(owner!, _quote!),
              icon: const Icon(Icons.fact_check_outlined),
              label: const Text('Open send review')),
          if (_receipt != null) Card(child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(Icons.check_circle_outline, size: 36),
                Text('MB transfer completed',
                    style: theme.textTheme.titleMedium),
                Text('${groupedMb(_receipt!.amountMb)} MB'),
                SelectableText('Receipt: ${_receipt!.operationId}'),
              ],
            ),
          )),
          TextButton(
            onPressed: () => context.go('/home?tab=wallet'),
            child: const Text('Back to Wallet'),
          ),
        ],
      ),
    );
  }
}

class _SendReviewLine extends StatelessWidget {
  const _SendReviewLine(this.label, this.value);
  final String label, value;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 7),
    child: Row(children: [
      Expanded(child: Text(label)),
      Flexible(child: Text(value, textAlign: TextAlign.end,
        style: const TextStyle(fontWeight: FontWeight.w700))),
    ]),
  );
}
