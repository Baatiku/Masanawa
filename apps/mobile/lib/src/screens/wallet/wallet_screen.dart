import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/network/api_client.dart';
import '../../core/providers.dart';
import '../../finance/crypto_wallet_screen.dart';
import '../../finance/wallet_asset_detail.dart';
import '../../finance/wallet_portfolio_summary.dart';
import '../../finance/msn_balance_transport.dart';
import '../../finance/msnw_wallet_home.dart';
import '../../finance/wallet_asset_overview.dart';
import '../../finance/msnw_transaction_history.dart';
import '../../finance/wallet_flow_page.dart';
import '../../finance/msnw_paystack_funding_sheet.dart';
import '../../finance/msnw_custody_send.dart';
import '../../finance/msnw_stablecoin_convert.dart';
import '../../finance/msnw_p2p_screen.dart';
import '../../state/session_state.dart';
import '../../theme/masanawa_theme.dart';
import '../../ui/components/masanawa_list_skeleton.dart';

/// Historical credit ledger compatibility only. Never expose a second
/// customer-facing credit balance alongside MSNW.
const bool kWalletCreditSendEnabled = bool.fromEnvironment(
  'MASANAWA_WALLET_CREDIT_SEND_ENABLED', defaultValue: false,
);

/// MSNW is the canonical customer-facing token and credit. This readback
/// is permitted only when Gateway returns asset MSNW, not legacy MSN.
const bool kWalletMsnBalanceEnabled = bool.fromEnvironment(
  'MASANAWA_MSNW_ONCHAIN_BALANCE_ENABLED', defaultValue: true,
);

/// Legacy MSN funding journal remains internal until reconciled. An old
/// issuance is not evidence of a qualified MSNW token or customer balance.
const bool kWalletMsnFundingStatusEnabled = bool.fromEnvironment(
  'MASANAWA_MSN_FUNDING_READBACK_ENABLED', defaultValue: false,
);

/// Funding opens by default; Gateway checks qualified provider/KYC availability.
const bool kWalletPaystackDvaEnabled = bool.fromEnvironment(
  'MASANAWA_MSNW_PAYSTACK_DVA_ENABLED', defaultValue: true,
);

const bool kWalletVerifiedFundingActivityEnabled = bool.fromEnvironment(
  'MASANAWA_MSNW_PAYSTACK_VERIFY_ENABLED', defaultValue: true,
);

class WalletScreen extends ConsumerStatefulWidget {
  const WalletScreen({
    super.key,
    this.onAddMoney,
    this.onSend,
    this.onWithdraw,
    this.onBuyBills,
    this.onOpenCrypto,
    this.onOpenBillingService,
    this.embeddedInShell = false,
    this.initialTransactionId,
    this.walletCreditSendEnabled = kWalletCreditSendEnabled,
    this.walletMsnBalanceEnabled = kWalletMsnBalanceEnabled,
    this.walletMsnFundingStatusEnabled = kWalletMsnFundingStatusEnabled,
    this.walletPaystackDvaEnabled = kWalletPaystackDvaEnabled,
  });

  final VoidCallback? onAddMoney;
  final VoidCallback? onSend;
  final VoidCallback? onWithdraw;
  final VoidCallback? onBuyBills;
  final VoidCallback? onOpenCrypto;

  /// Opens the existing qualified Billing category; selecting it does not pay.
  final ValueChanged<String>? onOpenBillingService;

  /// Root owns the header when this surface is selected as a bottom tab.
  final bool embeddedInShell;
  /// An authorized receipt hint; never itself a spend or payment approval.
  final String? initialTransactionId;
  final bool walletCreditSendEnabled;
  final bool walletMsnBalanceEnabled;
  final bool walletMsnFundingStatusEnabled;
  final bool walletPaystackDvaEnabled;

  @override
  ConsumerState<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends ConsumerState<WalletScreen> {
  int _tab = 0;
  @override
  void initState() {
    super.initState();
    if (widget.initialTransactionId != null) {
      _tab = 1;
      _visitedWalletTabs.add(1);
    }
  }
  // Build the history tab only after its first visit, then keep its filters,
  // query, list position and in-flight loading state mounted when switching.
  final Set<int> _visitedWalletTabs = <int>{0};
  int _custodyRefresh = 0;
  MsnwCustodyBalance? _balance;
  String? _balanceOwner;
  bool _hideBalances=false;
  String? _hiddenOwner;

  Future<void> _depositChoices() => openWalletPage<void>(context:context,title:'Deposit',builder:(_)=>ListView(padding:const EdgeInsets.all(16),children:[
    ListTile(title:const Text('From another Masanawa user'),subtitle:const Text('Share your account number'),onTap:()=>_receiveInternal()),
    ListTile(title:const Text('Blockchain deposit'),subtitle:const Text('Choose a supported asset and network'),onTap:()=>_openCryptoOperation('deposit')),
    ListTile(title:const Text('Buy MSNW with local payment'),onTap:_fund),
    ListTile(title:const Text('Buy through P2P'),onTap:_openP2p),
  ]));

  Future<void> _receiveInternal() async {
    final session=ref.read(sessionProvider);
    if(session is! SessionSignedIn)return;
    await openWalletPage<void>(context:context,title:'Receive in Masanawa',builder:(_)=>_AccountWalletPage(accountId:session.user.id,
      child:MsnwAccountBadge(dio:ref.read(dioProvider),baseUrl:kApiBaseUrl,accountId:session.user.id,
        currentUserId:()=>switch(ref.read(sessionProvider)){SessionSignedIn(:final user)=>user.id,_=>null},
        accessToken:()=>ref.read(apiClientProvider).accessToken)));
  }

  Future<void> _assetDetail() async {
    final session=ref.read(sessionProvider);
    if(session is! SessionSignedIn)return;
    await openWalletPage<void>(context:context,title:'MSNW',builder:(_)=>_AccountWalletPage(accountId:session.user.id,
      child:MsnwAssetDetail(balance:_balanceOwner==session.user.id?_balance:null,onDeposit:_depositChoices,onSend:_sendMsnw,
        onActivity:()=>openWalletPage<void>(context:context,title:'Activity',builder:(_)=>_history(session.user.id)))));
  }

  Future<void> _sendMsnw() async {
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) return;
    final expected = session.user.id;
    await openWalletPage<void>(
      context: context, 
      title: 'Send MSNW',
      builder: (_) => _AccountWalletPage(accountId: expected, child: MsnwCustodySendSheet(
        dio: ref.read(dioProvider), baseUrl: kApiBaseUrl,
        expectedUserId: expected,
        currentUserId: () => switch (ref.read(sessionProvider)) {
          SessionSignedIn(:final user) => user.id, _ => null,
        },
        accessToken: () => ref.read(apiClientProvider).accessToken,
        onCompleted: () { if (mounted) setState(() => _custodyRefresh++); },
      )),
    );
  }

  Future<void> _convertMsnw() async {
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) return;
    final expected = session.user.id;
    await openWalletPage<void>(
      context: context, 
      title: 'Convert MSNW',
      builder: (_) => _AccountWalletPage(accountId: expected, child: MsnwStablecoinConvertSheet(
        dio: ref.read(dioProvider), baseUrl: kApiBaseUrl,
        expectedUserId: expected,
        currentUserId: () => switch (ref.read(sessionProvider)) {
          SessionSignedIn(:final user) => user.id, _ => null,
        },
        accessToken: () => ref.read(apiClientProvider).accessToken,
        onCompleted: () { if (mounted) setState(() => _custodyRefresh++); },
      )),
    );
  }

  void _openP2p() {
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Sign in to trade MSNW.')));
      return;
    }
    final expectedId = session.user.id;
    openWalletPage<void>(context:context,title:'P2P',wrapScaffold:false,
      builder: (_) => MsnwP2pScreen(
        dio: ref.read(dioProvider),
        baseUrl: kApiBaseUrl,
        expectedUserId: expectedId,
        currentUserId: () => switch (ref.read(sessionProvider)) {
          SessionSignedIn(:final user) => user.id,
          _ => null,
        },
        accessToken: () => ref.read(apiClientProvider).accessToken,
      ),
    );
  }

  void _openCryptoOperation(String operation) {
    Navigator.of(context).push<void>(MaterialPageRoute<void>(builder:(_)=>CryptoWalletScreen(initialOperation:operation)));
  }

  void _openCrypto() {
    final navigate = widget.onOpenCrypto;
    if (navigate != null) { navigate(); return; }
    // Navigating over the Wallet instead of replacing its Scaffold keeps
    // search, transaction history and the asset list alive for Back.
    Navigator.of(context).push<void>(
      MaterialPageRoute<void>(
        settings: const RouteSettings(name: '/wallet/crypto-assets'),
        builder: (_) => const CryptoWalletScreen(),
      ),
    );
  }

  Future<void> _fund() async {
    final qualified = widget.onAddMoney;
    if (qualified != null) {
      qualified();
      return;
    }
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('MSNW funding is not available yet.'),
      ));
      return;
    }
    final userId = session.user.id;
    await openWalletPage<void>(
      context: context,
      title: 'Fund wallet',
      builder: (_) => _AccountWalletPage(accountId: userId, child: MsnwPaystackFundingSheet(
        dio: ref.read(dioProvider),
        baseUrl: kApiBaseUrl,
        expectedUserId: userId,
        currentUserId: () => switch (ref.read(sessionProvider)) {
          SessionSignedIn(:final user) => user.id,
          _ => null,
        },
        accessToken: () => ref.read(apiClientProvider).accessToken,
      )),
    );
    if (mounted) setState(() => _custodyRefresh++);
  }

  Future<void> _receive() async {
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) return;
    final expected = session.user.id;
    await openWalletPage<void>(context: context, title: 'Receive MSNW',
      builder: (_) => _AccountWalletPage(accountId: expected,
        child: _ReceiveMsnwPage(transport: GatewayMsnBalanceTransport(
          dio: ref.read(dioProvider), baseUrl: kApiBaseUrl,
          readAccessToken: () => ref.read(apiClientProvider).accessToken))));
  }

  Widget _history(String accountId) => _AccountWalletPage(accountId: accountId,
    child: MsnwTransactionHistory(
      key: ValueKey('history-$accountId'),
      refreshKey: _custodyRefresh,
      initialSearch: widget.initialTransactionId,
      dio: ref.read(dioProvider), baseUrl: kApiBaseUrl,
      expectedUserId: accountId,
      currentUserId: () => switch (ref.read(sessionProvider)) {
        SessionSignedIn(:final user) => user.id, _ => null,
      }, accessToken: () => ref.read(apiClientProvider).accessToken));

  @override Widget build(BuildContext context) {
    final u = context.masanawa;
    // Never show a legacy Credits projection as MSNW, even when it holds
    // historical value. Only an MSNW-asset readback may display a balance.
    final accountId = switch (ref.watch(sessionProvider)) {
      SessionSignedIn(:final user) => user.id, _ => null,
    };
    // The old callback was legacy Credits Send. MSNW is the only
    // customer-facing Send authority; use the canonical custody API.
    final openCrypto = _openCrypto;
    return Scaffold(
      backgroundColor: u.surfaceCard,
      appBar: widget.embeddedInShell
          ? null
          : AppBar(
              title: const Text('Wallet'),
              leading: IconButton(
                tooltip: 'Back',
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).canPop()
                    ? Navigator.of(context).pop()
                    : context.go('/home?tab=wallet'),
              ),
            ),
      body: Column(children: [
        Expanded(child: IndexedStack(index: _tab, children: [ListView(
          key: PageStorageKey<String>('wallet-assets-${accountId ?? 'signed-out'}'),
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 28), children: [
            WalletPortfolioSummary(balance:_balanceOwner==accountId?_balance:null,hidden:_hiddenOwner==accountId&&_hideBalances),
            MsnwWalletBalanceCard(
              dio: ref.watch(dioProvider), baseUrl: kApiBaseUrl,
              accountId: accountId, refreshKey: _custodyRefresh,
              currentUserId: () => switch (ref.read(sessionProvider)) {
                SessionSignedIn(:final user) => user.id, _ => null,
              }, accessToken: () => ref.read(apiClientProvider).accessToken,
              onFund: _fund,
              onVisibilityChanged:(hidden)=>setState((){_hiddenOwner=accountId;_hideBalances=hidden;}),
              onBalance:(value){if(mounted&&accountId==switch(ref.read(sessionProvider)){SessionSignedIn(:final user)=>user.id,_=>null})setState((){_balance=value;_balanceOwner=accountId;});}),
            MsnwAccountBadge(
              dio: ref.watch(dioProvider), baseUrl: kApiBaseUrl, accountId: accountId,
              currentUserId: () => switch (ref.read(sessionProvider)) {
                SessionSignedIn(:final user) => user.id, _ => null,
              }, accessToken: () => ref.read(apiClientProvider).accessToken),
            const SizedBox(height: 24),
            WalletActionRow(onSend: accountId == null ? null : _sendMsnw,
              onConvert: accountId == null ? null : ()=>_openCryptoOperation('swap'),
              onDeposit: accountId == null ? null : _depositChoices,
              onWithdraw: accountId == null ? null : ()=>_openCryptoOperation('withdraw'),
              onReceive: accountId == null ? null : _receive,
              onP2p: accountId == null ? null : _openP2p),
            const SizedBox(height: 24),
            Wrap(spacing:12,children:[TextButton(onPressed:accountId==null?null:_openP2p,child:const Text('P2P')),TextButton(onPressed:accountId==null?null:_convertMsnw,child:const Text('Convert MSNW & withdraw'))]),
            _tabs(),
            const SizedBox(height: 12),
            ListTile(contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(backgroundColor: u.brand.withValues(alpha: .10),
                child: Text('M', style: TextStyle(color: u.brandStrong, fontWeight: FontWeight.w800))),
              title: const Text('MSNW', style: TextStyle(fontWeight: FontWeight.w700)),
              subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text('Masanawa'),
                Text(_hiddenOwner == accountId && _hideBalances ? '••••'
                  : _balanceOwner == accountId && _balance != null
                    ? formatWalletAtomic(_balance!.available) : '—',
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              ]),
              trailing: const Icon(Icons.chevron_right, size: 18), onTap: _assetDetail),
            Divider(height: 1, color: u.structuralBorder),
            WalletAssetOverview(hideBalances:_hiddenOwner==accountId&&_hideBalances),
            ListTile(contentPadding:EdgeInsets.zero,title:const Text('All crypto assets'),trailing:const Icon(Icons.chevron_right),onTap:openCrypto),
            const SizedBox(height: 20),
            Align(alignment: Alignment.centerLeft, child: Text('Bills & services',
              style: Theme.of(context).textTheme.titleMedium)),
            const SizedBox(height: 12),
            WalletServiceShortcuts(onBuyBills: widget.onBuyBills,
              onOpenBillingService: widget.onOpenBillingService),
          ]),
          _visitedWalletTabs.contains(1) ? Column(children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal:16), child:_tabs()),
            if(accountId != null) ...[
              Align(alignment:Alignment.centerRight,child:TextButton.icon(
                onPressed:()=>openWalletPage<void>(context:context,title:'Transaction history',builder:(_)=>_history(accountId)),
                icon:const Icon(Icons.open_in_full,size:18),label:const Text('View all transactions'))),
              Expanded(child:_history(accountId)),
            ]
            else const Expanded(child:Center(child:Text('Sign in to view transactions'))),
          ]) : const SizedBox.shrink(),
        ])),
      ]),
    );
  }

  Widget _tabs() => Row(children: [
    for (final item in [(0, 'My assets'), (1, 'Transactions')])
      Expanded(child:TextButton(
        style:TextButton.styleFrom(
          foregroundColor: _tab == item.$1 ? context.masanawa.brandStrong : context.masanawa.textMuted,
          backgroundColor: _tab == item.$1 ? context.masanawa.brand.withValues(alpha:.08) : null,
          shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(12))),
        onPressed:()=>setState(() { _tab=item.$1; _visitedWalletTabs.add(_tab); }),child:Text(item.$2))),
  ]);
}

class _AccountWalletPage extends ConsumerWidget {
  const _AccountWalletPage({required this.accountId, required this.child});
  final String accountId;
  final Widget child;
  @override Widget build(BuildContext context, WidgetRef ref) {
    final session=ref.watch(sessionProvider);
    return session is SessionSignedIn && session.user.id == accountId
      ? child : const Center(child:Text('Sign in again to continue'));
  }
}

class _ReceiveMsnwPage extends StatefulWidget {
  const _ReceiveMsnwPage({required this.transport});
  final MsnBalanceTransport transport;
  @override State<_ReceiveMsnwPage> createState()=>_ReceiveMsnwState();
}
class _ReceiveMsnwState extends State<_ReceiveMsnwPage> {
  late Future<MsnBalance> future=widget.transport.read();
  @override Widget build(BuildContext context)=>FutureBuilder<MsnBalance>(future:future,builder:(context,snapshot){
    if(snapshot.connectionState!=ConnectionState.done) {
      return const MasanawaListSkeleton(
        itemCount: 4,
        semanticLabel: 'Loading verified receiving address',
      );
    }
    final value=snapshot.data;
    if(value==null||value.receiveAddress==null||value.chainId==null||value.tokenContract==null) {
      return Center(child:Padding(padding:const EdgeInsets.all(24),child:Column(mainAxisSize:MainAxisSize.min,children:[
        const Icon(Icons.account_balance_wallet_outlined,size:48),const SizedBox(height:16),
        const Text('Verified deposit address unavailable',textAlign:TextAlign.center),const SizedBox(height:12),
        FilledButton(onPressed:()=>setState(()=>future=widget.transport.read()),child:const Text('Retry')),
      ])));
    }
    return ListView(padding:const EdgeInsets.all(24),children:[
      const Icon(Icons.south_west,size:48),const SizedBox(height:24),
      Text('MSNW',style:Theme.of(context).textTheme.headlineMedium),const SizedBox(height:16),
      Text('Chain ID: ${value.chainId}'),const SizedBox(height:8),
      SelectableText('Token: ${value.tokenContract}'),const SizedBox(height:24),
      SelectableText(value.receiveAddress!),const SizedBox(height:16),
      FilledButton.icon(onPressed:()async{
        await Clipboard.setData(ClipboardData(text:value.receiveAddress!));
        if(context.mounted)ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Address copied')));
      },icon:const Icon(Icons.copy),label:const Text('Copy address')),
      const SizedBox(height:24),const Text('Only send MSNW on this verified network. Other assets or networks may be lost.'),
    ]);
  });
}

/// Shared service links remain navigation-only until the private durable
/// voice-first financial task contract is integrated (R06/R07).
class WalletServiceShortcuts extends StatelessWidget {
  const WalletServiceShortcuts({
    super.key,
    this.onOpenCrypto,
    this.onBuyBills,
    this.onOpenBillingService,
  });

  final VoidCallback? onOpenCrypto;
  final VoidCallback? onBuyBills;
  final ValueChanged<String>? onOpenBillingService;

  @override
  Widget build(BuildContext context) {
    final billing = onOpenBillingService ?? (String service) => context.push('/billing?service=$service');
    final u=context.masanawa;
    return Row(crossAxisAlignment:CrossAxisAlignment.start,children:[
      for(final service in [
        ('data','Data bundles',Icons.wifi_outlined),('airtime','Airtime',Icons.phone_android),
        ('electricity','Electricity',Icons.bolt_outlined),('tv','TV',Icons.live_tv_outlined),
      ])Expanded(child:InkWell(borderRadius:BorderRadius.circular(12),onTap:()=>billing(service.$1),child:Padding(padding:const EdgeInsets.symmetric(vertical:4),child:Column(children:[
        Container(width:52,height:52,decoration:BoxDecoration(color:u.surfaceMuted,borderRadius:BorderRadius.circular(16)),child:Icon(service.$3,color:u.textPrimary)),
        const SizedBox(height:6),Text(service.$2,textAlign:TextAlign.center,style:const TextStyle(fontSize:12,fontWeight:FontWeight.w600)),
      ])))),
    ]);
  }
}
