import 'wallet_pending_banner.dart';
import 'wallet_flow_page.dart';
import '../ui/components/masanawa_list_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/network/api_client.dart';
import '../core/providers.dart';
import 'wallet_step_up_page.dart';
import '../core/request_id.dart';
import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'crypto_models.dart';
import 'crypto_state.dart';

class CryptoWalletScreen extends ConsumerStatefulWidget {
  const CryptoWalletScreen({super.key, this.embedded = false,this.initialOperation,this.initialProviderCode});
  final bool embedded;
  final String? initialOperation;
  final String? initialProviderCode;

  static String operationTitle(String operation) {
    switch (operation) {
      case 'deposit':
        return 'Deposit';
      case 'withdraw':
        return 'Withdrawal';
      case 'convert':
        return 'Conversion';
      case 'buy':
        return 'Buy';
      default:
        return 'Crypto operation';
    }
  }

  @override
  ConsumerState<CryptoWalletScreen> createState() => _CryptoWalletScreenState();
}

class _CryptoWalletScreenState extends ConsumerState<CryptoWalletScreen> {
  bool _busy = false;
  @override
  void initState() {
    super.initState();
    if(widget.initialOperation!=null&&widget.initialProviderCode!=null) {
      final owner=ref.read(sessionProvider);
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        try {
          final loaded=await ref.read(cryptoWalletProvider.future);
          if(!mounted||ref.read(sessionProvider)!=owner)return;
          final data=loaded.copyWith(selectedProviderCode:widget.initialProviderCode);
          await _runAction(() async {
            switch(widget.initialOperation) {
              case 'deposit': if(data.capabilities.deposits)await _receive(context,ref,data); break;
              case 'withdraw': if(data.capabilities.withdrawals)await _withdraw(context,ref,data); break;
              case 'swap': if(data.capabilities.conversions)await _convert(context,ref,data); break;
            }
          });
        } catch(error) {if(mounted)_error(context,error);}
      });
    }
  }
  // In-memory, account-scoped UI inputs. Never persist a withdrawal address
  // into logs, unsecured preferences or a second account's widget.
  _BuyInput? _buyDraft;
  _ReceiveInput? _receiveDraft;
  _ConvertInput? _convertDraft;
  _WithdrawInput? _withdrawDraft;
  String? _receiveSource, _convertSource, _withdrawSource;

  void _clearDrafts() {
    _buyDraft = null;
    _receiveDraft = null;
    _convertDraft = null;
    _withdrawDraft = null;
    _receiveSource = null;
    _convertSource = null;
    _withdrawSource = null;
  }
  String? get _currentAccountId=>switch(ref.read(sessionProvider)){SessionSignedIn(:final user)=>user.id,_=>null};

  Future<void> _runAction(Future<void> Function() action) async {
    if (_busy) return;
    setState(() => _busy = true);
    try {
      await action();
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _refreshWallet() async {
    if (_busy) return;
    await ref.read(cryptoWalletProvider.notifier).refresh();
  }

  static void _message(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  static void _error(BuildContext context, Object error) {
    _message(
      context,
      error is ApiException
          ? error.message
          : error is FormatException
          ? 'Please check the amount and details you entered.'
          : 'Crypto service is temporarily unavailable. Please try again.',
    );
  }

  Future<void> _buy(
    BuildContext context,
    WidgetRef ref,
    CryptoWalletSnapshot wallet,
  ) async {
    final owner=_currentAccountId;
    bool current()=>context.mounted&&owner!=null&&_currentAccountId==owner;
    if(!current())return;
    final capabilities = wallet.capabilities;
    final settlement = capabilities.fiatSettlementProviderCode;
    if (!capabilities.fiatOnRamp ||
        capabilities.fiatCurrencies.isEmpty ||
        settlement == null) {
      return;
    }

    final input = await openWalletPage<_BuyInput>(
      context: context,
      builder: (_) => _BuySheet(
        fiatCurrencies: capabilities.fiatCurrencies,
        settlementAsset: settlement,
        initial: _buyDraft,
      ),
    );
    if (input == null || !current()) return;
    _buyDraft = input;

    try {
      final purchase = await ref
          .read(cryptoWalletProvider.notifier)
          .createFiatPurchase(
            requestId: createRequestId(),
            fiatAmount: input.amount,
            fiatCurrency: input.currency,
          );
      _buyDraft = null; // Provider accepted the idempotent request.
      final checkout = purchase.checkoutUrl == null
          ? null
          : Uri.tryParse(purchase.checkoutUrl!);
      if (checkout == null ||
          checkout.scheme != 'https' ||
          checkout.host.isEmpty) {
        throw const FormatException('Secure checkout is unavailable');
      }
      final opened = await launchUrl(
        checkout,
        mode: LaunchMode.externalApplication,
      );
      if (!current()) return;
      if (!opened) {
        _message(
          context,
          'The secure checkout could not be opened. Your purchase was not duplicated; open Wallet activity to try status refresh.',
        );
        return;
      }
      final checkStatus = await openWalletPage<bool>(
        context: context,
        builder: (dialogContext) => WalletReviewContent(
          scrollable: true,
          title: const Text('Checkout opened'),
          content: Text(
            'Complete the secure checkout, then return here. '
            'Masanawa credits only the exact ${purchase.settlementAsset} amount '
            'confirmed by the payment provider.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: const Text('Later'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              child: const Text('Check status'),
            ),
          ],
        ),
      );
      if (checkStatus == true && context.mounted) {
        final refreshed = await ref
            .read(cryptoWalletProvider.notifier)
            .refreshFiatPurchase(purchase.requestId);
        if (!current()) return;
        final message =
            refreshed.status == 'succeeded' && refreshed.cryptoAmount != null
            ? 'Purchase completed: ${refreshed.cryptoAmount} ${refreshed.settlementAsset}'
            : 'Purchase status: ${refreshed.status.replaceAll('_', ' ')}';
        _message(context, message);
      }
    } catch (error) {
      if (current()) {
        _error(context, error);
        _message(context,
          'Could not confirm the purchase. Your amount is retained. '
          'Check Wallet activity before starting another checkout.');
      }
    }
  }

  Future<void> _receive(
    BuildContext context,
    WidgetRef ref,
    CryptoWalletSnapshot wallet,
  ) async {
    final owner=_currentAccountId;
    bool current()=>context.mounted&&owner!=null&&_currentAccountId==owner;
    if(!current())return;
    final route = wallet.selectedRoute;
    if (route == null) return;
    final input = await openWalletPage<_ReceiveInput>(
      context: context,
      builder: (_) => _ReceiveSheet(
        route: route,
        initial: _receiveSource == route.providerCode ? _receiveDraft : null,
      ),
    );
    if (input == null || !current()) return;
    _receiveDraft = input;
    _receiveSource = route.providerCode;
    try {
      final intent = await ref
          .read(cryptoWalletProvider.notifier)
          .createDeposit(
            requestId: createRequestId(),
            providerCode: route.providerCode,
            amount: input.amount,
          );
      _receiveDraft = null;
      _receiveSource = null;
      if (!current()) return;
      await openWalletPage<void>(
        context: context,
        builder: (_) => _DepositDialog(intent: intent),
      );
    } catch (error) {
      if (current()) _error(context, error);
    }
  }

  Future<void> _convert(
    BuildContext context,
    WidgetRef ref,
    CryptoWalletSnapshot wallet,
  ) async {
    final owner=_currentAccountId;
    bool current()=>context.mounted&&owner!=null&&_currentAccountId==owner;
    if(!current())return;
    final pending=await ref.read(walletPendingCryptoProvider.future);
    if(!current())return;
    if(pending!=null){_message(context,'Check the previous operation from Wallet before starting another.');return;}
    final source = wallet.selectedRoute;
    if (source == null || !wallet.capabilities.conversions) return;
    final targets = wallet.conversionRoutes
        .where((route) => route.providerCode != source.providerCode)
        .toList(growable: false);
    if (targets.isEmpty) {
      _message(context, 'No conversion destination is available right now.');
      return;
    }
    final input = await openWalletPage<_ConvertInput>(
      context: context,
      builder: (_) => _ConvertSheet(
        source: source,
        targets: targets,
        initial: _convertSource == source.providerCode ? _convertDraft : null,
      ),
    );
    if (input == null || !current()) return;
    _convertDraft = input;
    _convertSource = source.providerCode;

    try {
      final controller = ref.read(cryptoWalletProvider.notifier);
      final quote = await controller.quoteConversion(
        providerCode: source.providerCode,
        targetProviderCode: input.targetProviderCode,
        amount: input.amount,
      );
      if (!current()) return;
      final confirmed = await openWalletPage<bool>(
        context: context,
        builder: (dialogContext) => WalletReviewContent(
          scrollable: true,
          title: const Text('Confirm conversion'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _SummaryRow(label: 'From', value: source.label),
              if (quote.quotedAt != null)
                _SummaryRow(
                  label: 'Quoted at',
                  value: _date(context, quote.quotedAt!),
                ),
              _SummaryRow(
                label: 'You convert',
                value: '${quote.amount} ${quote.providerCode}',
              ),
              _SummaryRow(
                label: 'Estimated receive',
                value:
                    '${quote.estimatedTargetAmount} ${quote.targetProviderCode}',
              ),
              _SummaryRow(
                label: 'Provider minimum',
                value: '${quote.minimumAmount} ${quote.providerCode}',
              ),
              const SizedBox(height: 8),
              const Text(
                'The final credited amount comes from provider settlement evidence, not the estimate.',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              child: const Text('Convert'),
            ),
          ],
        ),
      );
      if (confirmed != true || !current()) return;
      final intent = await controller.createConversion(
        requestId: createRequestId(),
        providerCode: source.providerCode,
        targetProviderCode: input.targetProviderCode,
        amount: input.amount,
      );
      _convertDraft = null;
      _convertSource = null;
      if (current()) _operationResult(context, intent);
    } catch (error) {
      if (current()) {
        _error(context, error);
        _message(context,
          'Could not confirm conversion. Your input is retained. '
          'Check Wallet activity before making another request.');
      }
    }
  }

  Future<void> _withdraw(
    BuildContext context,
    WidgetRef ref,
    CryptoWalletSnapshot wallet,
  ) async {
    final owner=_currentAccountId;
    bool current()=>context.mounted&&owner!=null&&_currentAccountId==owner;
    if(!current())return;
    final pending=await ref.read(walletPendingCryptoProvider.future);
    if(!current())return;
    if(pending!=null){_message(context,'Check the previous operation from Wallet before starting another.');return;}
    final route = wallet.selectedRoute;
    if (route == null || !wallet.capabilities.withdrawals) return;
    final input = await openWalletPage<_WithdrawInput>(
      context: context,
      builder: (_) => _WithdrawSheet(
        route: route,
        initial: _withdrawSource == route.providerCode ? _withdrawDraft : null,
      ),
    );
    if (input == null || !current()) return;
    _withdrawDraft = input;
    _withdrawSource = route.providerCode;

    try {
      final controller = ref.read(cryptoWalletProvider.notifier);
      final quote = await controller.quoteWithdrawal(
        providerCode: route.providerCode,
        amount: input.amount,
        destinationAddress: input.address,
      );
      if (!current()) return;
      final confirmed = await openWalletPage<bool>(
        context: context,
        builder: (dialogContext) => WalletReviewContent(
          scrollable: true,
          title: const Text('Confirm withdrawal'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _SummaryRow(label: 'Asset / network', value: route.label),
              if (quote.quotedAt != null)
                _SummaryRow(
                  label: 'Quoted at',
                  value: _date(context, quote.quotedAt!),
                ),
              _SummaryRow(
                label: 'Amount',
                value: '${quote.amount} ${quote.providerCode}',
              ),
              _SummaryRow(
                label: 'Network fee estimate',
                value: '${quote.networkFee} ${quote.providerCode}',
              ),
              _SummaryRow(
                label: 'Estimated receive',
                value: '${quote.estimatedReceiveAmount} ${quote.providerCode}',
              ),
              _SummaryRow(
                label: 'Fee handling',
                value: quote.networkFeeMode == 'sender'
                    ? 'Masanawa pays the network fee'
                    : 'Fee is deducted from the payout',
              ),
              _SummaryRow(
                label: 'Provider minimum',
                value: '${quote.minimumAmount} ${quote.providerCode}',
              ),
              const SizedBox(height: 8),
              SelectableText(
                quote.destinationAddress,
                textDirection: TextDirection.ltr,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              child: const Text('Withdraw'),
            ),
          ],
        ),
      );
      if (confirmed != true || !current()) return;
      final requestId=createRequestId();
      final api=ref.read(apiClientProvider);
      await api.beginWithdrawalStepUp(
        requestId:requestId,providerCode:route.providerCode,
        amount:input.amount,destinationAddress:input.address,
      );
      if(!current())return;
      final code=await openWalletPage<String>(
        context:context,wrapScaffold:false,title:'Verify withdrawal',builder:(_)=>const WalletStepUpPage(),
      );
      if(code==null || !current())return;
      final grant=await api.confirmWithdrawalStepUp(
        requestId:requestId,providerCode:route.providerCode,
        amount:input.amount,destinationAddress:input.address,code:code,
      );
      final intent = await controller.createWithdrawal(
        requestId: requestId,
        providerCode: route.providerCode,
        amount: input.amount,
        destinationAddress: input.address,
        stepUpToken:grant,
      );
      _withdrawDraft = null;
      _withdrawSource = null;
      if (current()) _operationResult(context, intent);
    } catch (error) {
      if (current()) {
        _error(context, error);
        _message(context,
          'Withdrawal status is not confirmed. Details are retained. '
          'Check transaction activity before submitting again.');
      }
    }
  }

  Future<void> _refreshIntent(
    BuildContext context,
    WidgetRef ref,
    CryptoIntent intent,
  ) async {
    try {
      final refreshed = await ref
          .read(cryptoWalletProvider.notifier)
          .refreshOperation(intent);
      if (context.mounted && refreshed.terminal) {
        _operationResult(context, refreshed);
      }
    } catch (error) {
      if (context.mounted) _error(context, error);
    }
  }

  void _operationResult(BuildContext context, CryptoIntent intent) {
    final message = switch (intent.status) {
      'succeeded' when intent.operation == 'convert' =>
        intent.providerTargetAmount == null
            ? 'Conversion completed'
            : 'Conversion completed: ${intent.providerTargetAmount} ${intent.targetAsset}',
      'succeeded' when intent.operation == 'buy' =>
        intent.providerTargetAmount == null
            ? 'Crypto purchase completed'
            : 'Purchase completed: ${intent.providerTargetAmount} ${intent.targetAsset}',
      'manual_review' =>
        'This transaction needs verification before any balance change is accepted.',
      'succeeded' =>
        '${CryptoWalletScreen.operationTitle(intent.operation)} completed',
      'failed' =>
        '${CryptoWalletScreen.operationTitle(intent.operation)} failed. Reserved funds were released when applicable.',
      _ =>
        '${CryptoWalletScreen.operationTitle(intent.operation)} submitted. It will update after provider confirmation.',
    };
    _message(context, message);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<SessionState>(sessionProvider, (previous, next) {
      final previousAccount = previous is SessionSignedIn ? previous.user.id : null;
      final nextAccount = next is SessionSignedIn ? next.user.id : null;
      if (previousAccount != nextAccount) _clearDrafts();
    });
    final wallet = ref.watch(cryptoWalletProvider).whenData((data)=>widget.initialProviderCode==null?data:data.copyWith(selectedProviderCode:widget.initialProviderCode));
    final u = context.masanawa;
    final content = wallet.when(
      loading: () => const MasanawaListSkeleton(semanticLabel: 'Loading crypto wallet'),
      error: (error, _) =>
          _WalletError(error: error, onRetry: _refreshWallet),
      data: (data) => RefreshIndicator(
        onRefresh: _refreshWallet,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
          children: [
              if(widget.initialProviderCode==null) _AssetList(
                wallet: data,
                onSelected: (value) => Navigator.of(context).push(MaterialPageRoute<void>(builder:(_)=>CryptoWalletScreen(initialProviderCode:value,initialOperation:widget.initialOperation))),
              ),
              if(widget.initialProviderCode!=null)...[
              const SizedBox(height: 10),
              _BalanceSummary(
                wallet: data,
                onRefreshBalance: data.selectedProviderCode == null
                    ? null
                    : () => ref
                          .read(cryptoWalletProvider.notifier)
                          .refreshBalance(),
              ),
              Text('Reserved: ${data.reservedBalances[data.selectedProviderCode]??'Unavailable'}. Portfolio prices require separate verified rates.'),
              const SizedBox(height: 14),
              _CryptoActions(
                busy: _busy,
                buy:
                    data.capabilities.fiatOnRamp &&
                        data.capabilities.fiatCurrencies.isNotEmpty &&
                        data.capabilities.fiatSettlementProviderCode != null
                    ? () => _runAction(() => _buy(context, ref, data))
                    : null,
                receive:
                    data.capabilities.deposits && data.selectedRoute != null
                    ? () => _runAction(() => _receive(context, ref, data))
                    : null,
                convert:
                    data.capabilities.conversions &&
                        data.selectedRoute != null &&
                        data.conversionRoutes.any(
                          (route) =>
                              route.providerCode != data.selectedProviderCode,
                        )
                    ? () => _runAction(() => _convert(context, ref, data))
                    : null,
                withdraw:
                    data.capabilities.withdrawals && data.selectedRoute != null
                    ? () => _runAction(() => _withdraw(context, ref, data))
                    : null,
              ),

              ],
              const SizedBox(height: 22),
              const WalletPendingBanner(),
              Text(
                'Activity',
                style: TextStyle(
                  color: u.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              if (data.history.isEmpty)
                _EmptyHistory(color: u.textMuted)
              else
                _ActivityList(
                  history: widget.initialProviderCode==null?data.history:data.history.where((entry)=>entry.asset==widget.initialProviderCode||entry.targetAsset==widget.initialProviderCode).toList(),
                  onRefresh: (intent) => _refreshIntent(context, ref, intent),
                ),
            ],
          ),
        ),
      );

    if (widget.embedded) {
      return content;
    }

    return Scaffold(
      backgroundColor: u.surfaceCard,
      appBar: AppBar(
        backgroundColor: u.surfaceCard,
        foregroundColor: u.textPrimary,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Text(widget.initialProviderCode==null?'Crypto assets':wallet.valueOrNull?.selectedRoute?.label??'Asset details'),
        actions: [
          IconButton(
            tooltip: 'Refresh wallet',
            onPressed: _busy ? null : _refreshWallet,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: content,
    );
  }
}

class _AssetList extends StatelessWidget {
  const _AssetList({required this.wallet, required this.onSelected});

  final CryptoWalletSnapshot wallet;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    if (wallet.assetRoutes.isEmpty) return const SizedBox.shrink();
    return Column(
      children: [
        for (final route in wallet.assetRoutes)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Material(
              color: context.masanawa.surfaceCard,
              borderRadius: BorderRadius.circular(16),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () => onSelected(route.providerCode),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      CircleAvatar(child: Text(route.asset.isEmpty ? '?' : route.asset.substring(0, 1))),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(route.asset, style: const TextStyle(fontWeight: FontWeight.w700)),
                            if (route.network != null) Text(route.network!),
                            const SizedBox(height: 6),
                            Text(
                              wallet.balances[route.providerCode] ?? 'Balance unavailable',
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.chevron_right, size: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _BalanceSummary extends StatelessWidget {
  const _BalanceSummary({required this.wallet, required this.onRefreshBalance});

  final CryptoWalletSnapshot wallet;
  final VoidCallback? onRefreshBalance;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final selected = wallet.selectedRoute;
    final balance = wallet.selectedBalance;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Available balance', style: TextStyle(color: u.textMuted)),
        const SizedBox(height: 6),
        Text(
          selected == null
              ? 'No supported assets'
              : balance ?? 'Balance unavailable',
          textDirection: balance == null ? null : TextDirection.ltr,
          style: TextStyle(
            color: u.textPrimary,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        if (selected != null)
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(selected.label, style: TextStyle(color: u.textMuted)),
              IconButton(
                tooltip: 'Refresh balance',
                onPressed: onRefreshBalance,
                icon: const Icon(Icons.sync),
              ),
            ],
          ),
      ],
    );
  }
}

class _CryptoActions extends StatelessWidget {
  const _CryptoActions({
    required this.busy,
    this.buy,
    this.receive,
    this.convert,
    this.withdraw,
  });
  final bool busy;
  final Future<void> Function()? buy, receive, convert, withdraw;
  @override
  Widget build(BuildContext context) => Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      if (buy != null) _button('Buy', Icons.add_card_rounded, buy!),
      if (receive != null)
        _button('Receive', Icons.call_received_rounded, receive!),
      if (convert != null)
        _button('Convert', Icons.swap_horiz_rounded, convert!),
      if (withdraw != null)
        _button('Withdraw', Icons.call_made_rounded, withdraw!),
    ],
  );
  Widget _button(String label, IconData icon, Future<void> Function() action) =>
      OutlinedButton.icon(
        onPressed: busy ? null : action,
        icon: Icon(icon, size: 18),
        label: Text(label),
      );
}

class _ActivityList extends StatelessWidget {
  const _ActivityList({required this.history, required this.onRefresh});
  final List<CryptoIntent> history;
  final ValueChanged<CryptoIntent> onRefresh;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var index = 0; index < history.length; index++) ...[
          _HistoryTile(intent: history[index], onRefresh: onRefresh),
          if (index != history.length - 1) const Divider(height: 1),
        ],
      ],
    );
  }
}

class _HistoryTile extends StatelessWidget {
  const _HistoryTile({required this.intent, required this.onRefresh});
  final CryptoIntent intent;
  final ValueChanged<CryptoIntent> onRefresh;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final statusColor = switch (intent.status) {
      'succeeded' => u.success,
      'failed' || 'expired' || 'refunded' => u.emergency,
      _ => u.warning,
    };
    final icon = switch (intent.operation) {
      'deposit' => Icons.call_received_rounded,
      'withdraw' => Icons.call_made_rounded,
      'convert' => Icons.swap_horiz_rounded,
      'buy' => Icons.add_card_rounded,
      _ => Icons.currency_bitcoin,
    };
    final showsTarget =
        (intent.operation == 'convert' || intent.operation == 'buy') &&
        intent.targetAsset != null;
    final amount = showsTarget
        ? intent.providerTargetAmount == null
              ? '${intent.amount} ${intent.asset} → ${intent.targetAsset}'
              : '${intent.amount} ${intent.asset} → ${intent.providerTargetAmount} ${intent.targetAsset}'
        : '${intent.amount} ${intent.asset}';

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton.icon(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              alignment: AlignmentDirectional.centerStart,
            ),
            onPressed: () => openWalletPage<void>(
              context: context,
              builder: (_) => _IntentDetails(intent: intent),
            ),
            icon: Icon(icon, color: statusColor),
            label: Text(CryptoWalletScreen.operationTitle(intent.operation)),
          ),
          Text(
            amount,
            textDirection: TextDirection.ltr,
            style: TextStyle(color: u.textPrimary),
          ),
          Text(
            intent.status.replaceAll('_', ' '),
            style: TextStyle(color: statusColor),
          ),
          if (intent.createdAt != null)
            Text(
              _date(context, intent.createdAt!),
              style: TextStyle(color: u.textMuted),
            ),
          if (intent.pending &&
              const {'withdraw', 'convert', 'buy'}.contains(intent.operation))
            TextButton.icon(
              onPressed: () => onRefresh(intent),
              icon: const Icon(Icons.refresh, size: 18),
              label: const Text('Check status'),
            ),
        ],
      ),
    );
  }
}

String _date(BuildContext context, DateTime value) {
  final local = value.toLocal();
  final labels = MaterialLocalizations.of(context);
  return '${labels.formatMediumDate(local)} · ${labels.formatTimeOfDay(TimeOfDay.fromDateTime(local))}';
}

class _IntentDetails extends StatelessWidget {
  const _IntentDetails({required this.intent});
  final CryptoIntent intent;
  @override
  Widget build(BuildContext context) => WalletReviewContent(
    scrollable: true,
    title: const Text('Transaction details'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SummaryRow(
          label: 'Operation',
          value: CryptoWalletScreen.operationTitle(intent.operation),
        ),
        _SummaryRow(label: 'Amount', value: '${intent.amount} ${intent.asset}'),
        if (intent.network != null)
          _SummaryRow(label: 'Network', value: intent.network!),
        if (intent.targetAsset != null)
          _SummaryRow(label: 'Target', value: intent.targetAsset!),
        if (intent.targetNetwork != null)
          _SummaryRow(label: 'Target network', value: intent.targetNetwork!),
        if (intent.providerTargetAmount != null)
          _SummaryRow(
            label: 'Settled target amount',
            value: intent.providerTargetAmount!,
          ),
        if (intent.destinationAddress != null)
          _SummaryRow(label: 'Recipient', value: intent.destinationAddress!),
        if (intent.payAddress != null)
          _SummaryRow(label: 'Deposit address', value: intent.payAddress!),
        if (intent.providerNetworkFee != null)
          _SummaryRow(
            label: 'Network fee',
            value: '${intent.providerNetworkFee} ${intent.asset}',
          ),
        if (intent.withdrawalFeePayer != null)
          _SummaryRow(label: 'Fee payer', value: intent.withdrawalFeePayer!),
        _SummaryRow(label: 'Status', value: intent.status.replaceAll('_', ' ')),
        if (intent.pending)
          const Text(
            'Awaiting provider confirmation. Check status in activity before trying another transaction.',
          ),
        _SummaryRow(label: 'Request ID', value: intent.requestId),
        if (intent.createdAt != null)
          _SummaryRow(
            label: 'Created',
            value: _date(context, intent.createdAt!),
          ),
        if (intent.updatedAt != null)
          _SummaryRow(
            label: 'Updated',
            value: _date(context, intent.updatedAt!),
          ),
      ],
    ),
    actions: [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text('Done'),
      ),
    ],
  );
}

class _EmptyHistory extends StatelessWidget {
  const _EmptyHistory({required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 36),
      child: Center(
        child: Text('No crypto activity yet', style: TextStyle(color: color)),
      ),
    );
  }
}

class _WalletError extends StatelessWidget {
  const _WalletError({required this.error, required this.onRetry});
  final Object error;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final message = error is ApiException
        ? (error as ApiException).message
        : 'Wallet unavailable';
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.account_balance_wallet_outlined,
              size: 48,
              color: u.brand,
            ),
            const SizedBox(height: 14),
            Text(message, textAlign: TextAlign.center),
            const SizedBox(height: 18),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Try again'),
            ),
          ],
        ),
      ),
    );
  }
}

class _DepositDialog extends StatelessWidget {
  const _DepositDialog({required this.intent});
  final CryptoIntent intent;

  @override
  Widget build(BuildContext context) {
    final address = intent.payAddress;
    final amount = intent.providerPayAmount ?? intent.amount;
    return WalletReviewContent(
      scrollable: true,
      title: const Text('Receive crypto'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SummaryRow(label: 'Send exactly', value: '$amount ${intent.asset}'),
          if (intent.network != null)
            _SummaryRow(label: 'Network', value: intent.network!),
          _SummaryRow(
            label: 'Status',
            value: intent.status.replaceAll('_', ' '),
          ),
          const SizedBox(height: 12),
          const Text('Deposit address'),
          const SizedBox(height: 6),
          SelectableText(
            address ?? 'Address unavailable',
            textDirection: TextDirection.ltr,
          ),
          if (address != null) ...[
            const SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: address));
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Address copied')),
                  );
                }
              },
              icon: const Icon(Icons.copy),
              label: const Text('Copy address'),
            ),
          ],
          const SizedBox(height: 10),
          const Text(
            'Send only the selected asset and network to this address. The balance updates after provider confirmation.',
          ),
        ],
      ),
      actions: [
        FilledButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Done'),
        ),
      ],
    );
  }
}

class _BuySheet extends StatefulWidget {
  const _BuySheet({
    required this.fiatCurrencies,
    required this.settlementAsset,
    this.initial,
  });

  final List<String> fiatCurrencies;
  final String settlementAsset;
  final _BuyInput? initial;

  @override
  State<_BuySheet> createState() => _BuySheetState();
}

class _BuySheetState extends State<_BuySheet> {
  late final TextEditingController _amount;
  late String _currency;

  @override
  void initState() {
    super.initState();
    _amount = TextEditingController(text: widget.initial?.amount ?? '');
    _currency = widget.initial != null &&
        widget.fiatCurrencies.contains(widget.initial!.currency)
        ? widget.initial!.currency : widget.fiatCurrencies.first;
  }

  @override
  void dispose() {
    _amount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _SheetScaffold(
      title: 'Buy crypto',
      subtitle: 'Choose how much to pay, then continue to the secure provider checkout.',
      icon: Icons.add_card,
      sectionTitle: 'Purchase details',
      children: [
        WalletSelectionField<String>(
          initialValue: _currency,
          decoration: const InputDecoration(labelText: 'Pay with'),
          items: [
            for (final currency in widget.fiatCurrencies)
              DropdownMenuItem(value: currency, child: Text(currency)),
          ],
          onChanged: (value) {
            if (value != null) setState(() => _currency = value);
          },
        ),
        const SizedBox(height: 12),
        _AmountField(controller: _amount, label: 'Fiat amount'),
        const SizedBox(height: 12),
        _SummaryRow(label:'Receive',value:widget.settlementAsset),
        const SizedBox(height: 8),

        const SizedBox(height: 16),
        FilledButton.icon(
          onPressed: () {
            final amount = _validAmount(_amount.text, maxDecimals: 2);
            if (amount != null) {
              Navigator.pop(context, _BuyInput(_currency, amount));
            } else {
              _invalidAmount(context);
            }
          },
          icon: const Icon(Icons.open_in_new),
          label: const Text('Continue to secure checkout'),
        ),
      ],
    );
  }
}

class _ReceiveSheet extends StatefulWidget {
  const _ReceiveSheet({required this.route, this.initial});
  final CryptoRoute route;
  final _ReceiveInput? initial;

  @override
  State<_ReceiveSheet> createState() => _ReceiveSheetState();
}

class _ReceiveSheetState extends State<_ReceiveSheet> {
  late final TextEditingController _amount;

  @override
  void initState() {
    super.initState();
    _amount = TextEditingController(text: widget.initial?.amount ?? '');
  }

  @override
  void dispose() {
    _amount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _SheetScaffold(
      title: 'Receive ${widget.route.asset}',
      subtitle: 'Create a deposit address for this asset and network. Other networks may result in lost funds.',
      icon: Icons.south_west,
      sectionTitle: 'Deposit details',
      children: [
        Text('${widget.route.label} deposit'),
        const SizedBox(height: 14),
        _AmountField(controller: _amount, label: 'Amount (${widget.route.asset})'),
        const SizedBox(height: 16),
        FilledButton(
          onPressed: () {
            final value = _validAmount(_amount.text);
            if (value != null) {
              Navigator.pop(context, _ReceiveInput(value));
            } else {
              _invalidAmount(context);
            }
          },
          child: const Text('Create deposit address'),
        ),
      ],
    );
  }
}

class _ConvertSheet extends StatefulWidget {
  const _ConvertSheet({required this.source, required this.targets, this.initial});
  final CryptoRoute source;
  final List<CryptoRoute> targets;
  final _ConvertInput? initial;

  @override
  State<_ConvertSheet> createState() => _ConvertSheetState();
}

class _ConvertSheetState extends State<_ConvertSheet> {
  late final TextEditingController _amount;
  late String _target;

  @override
  void initState() {
    super.initState();
    _amount = TextEditingController(text: widget.initial?.amount ?? '');
    _target = widget.initial != null &&
        widget.targets.any((route) => route.providerCode == widget.initial!.targetProviderCode)
        ? widget.initial!.targetProviderCode : widget.targets.first.providerCode;
  }

  @override
  void dispose() {
    _amount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _SheetScaffold(
      title: 'Convert ${widget.source.asset}',
      subtitle: 'Choose the amount and destination asset. Review the live quote before confirming.',
      icon: Icons.swap_horiz,
      sectionTitle: 'Conversion details',
      children: [
        _SummaryRow(label: 'From', value: widget.source.label),
        const SizedBox(height: 12),
        _AmountField(controller: _amount, label: 'Amount (${widget.source.asset})'),
        const SizedBox(height: 12),
        WalletSelectionField<String>(
          initialValue: _target,
          isExpanded: true,
          decoration: const InputDecoration(labelText: 'Convert to'),
          items: [
            for (final route in widget.targets)
              DropdownMenuItem(
                value: route.providerCode,
                child: Text(route.label),
              ),
          ],
          onChanged: (value) {
            if (value != null) setState(() => _target = value);
          },
        ),
        const SizedBox(height: 16),
        FilledButton(
          onPressed: () {
            final value = _validAmount(_amount.text);
            if (value != null) {
              Navigator.pop(context, _ConvertInput(_target, value));
            } else {
              _invalidAmount(context);
            }
          },
          child: const Text('Review quote'),
        ),
      ],
    );
  }
}

class _WithdrawSheet extends StatefulWidget {
  const _WithdrawSheet({required this.route, this.initial});
  final CryptoRoute route;
  final _WithdrawInput? initial;

  @override
  State<_WithdrawSheet> createState() => _WithdrawSheetState();
}

class _WithdrawSheetState extends State<_WithdrawSheet> {
  late final TextEditingController _amount;
  late final TextEditingController _address;

  @override
  void initState() {
    super.initState();
    _amount = TextEditingController(text: widget.initial?.amount ?? '');
    _address = TextEditingController(text: widget.initial?.address ?? '');
  }

  @override
  void dispose() {
    _amount.dispose();
    _address.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _SheetScaffold(
      title: 'Withdraw ${widget.route.asset}',
      subtitle: 'Check the destination network carefully. You will review the fee before authorizing the withdrawal.',
      icon: Icons.north_east,
      sectionTitle: 'Withdrawal details',
      children: [
        _SummaryRow(label: 'Network', value: widget.route.label),
        const SizedBox(height: 12),
        _AmountField(controller: _amount, label: 'Amount (${widget.route.asset})'),
        const SizedBox(height: 12),
        TextField(
          controller: _address,
          minLines: 1,
          maxLines: 3,
          autocorrect: false,
          enableSuggestions: false,
          textDirection: TextDirection.ltr,
          decoration: const InputDecoration(
            labelText: 'Destination address',
            hintText: 'Paste the receiving wallet address',
            prefixIcon: Icon(Icons.account_balance_wallet_outlined),
          ),
        ),
        const SizedBox(height: 16),
        FilledButton(
          onPressed: () {
            final amount = _validAmount(_amount.text);
            final address = _address.text.trim();
            if (amount != null && address.isNotEmpty && address.length <= 512) {
              Navigator.pop(context, _WithdrawInput(amount, address));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Enter a valid positive amount and destination address.'),
              ));
            }
          },
          child: const Text('Review fee'),
        ),
      ],
    );
  }
}

class _SheetScaffold extends StatelessWidget {
  const _SheetScaffold({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.sectionTitle,
    required this.children,
  });
  final String title, subtitle, sectionTitle;
  final IconData icon;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => SafeArea(
    child: SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 560),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              WalletFlowHeader(title: title, subtitle: subtitle, icon: icon),
              WalletFormSection(
                title: sectionTitle,
                children: children.take(children.length - 1).toList(),
              ),
              children.last,
            ],
          ),
        ),
      ),
    ),
  );
}

class _AmountField extends StatelessWidget {
  const _AmountField({required this.controller, this.label = 'Amount'});
  final TextEditingController controller;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))],
      decoration: InputDecoration(labelText: label, hintText: '0.00'),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(color: u.textMuted)),
          SelectableText(
            value,
            textDirection: TextDirection.ltr,
            style: TextStyle(color: u.textPrimary, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

void _invalidAmount(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    content: Text('Enter a valid positive amount within the supported precision.'),
  ));
}

String? _validAmount(String raw, {int maxDecimals = 18}) {
  final value = raw.trim();
  final match = RegExp(r'^(?:0|[1-9]\d*)(?:\.(\d+))?$').firstMatch(value);
  if (match == null || (match.group(1)?.length ?? 0) > maxDecimals) {
    return null;
  }
  final number = num.tryParse(value);
  return number == null || number <= 0 ? null : value;
}

class _BuyInput {
  const _BuyInput(this.currency, this.amount);
  final String currency;
  final String amount;
}

class _ReceiveInput {
  const _ReceiveInput(this.amount);
  final String amount;
}

class _ConvertInput {
  const _ConvertInput(this.targetProviderCode, this.amount);
  final String targetProviderCode;
  final String amount;
}

class _WithdrawInput {
  const _WithdrawInput(this.amount, this.address);
  final String amount;
  final String address;
}
