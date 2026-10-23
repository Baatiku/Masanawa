import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/network/api_client.dart';
import '../../core/providers.dart';
import '../../finance/crypto_wallet_screen.dart';
import '../../finance/wallet_asset_detail.dart';
import '../../finance/wallet_pending_banner.dart';
import '../../finance/msn_balance_transport.dart';
import '../../finance/msnw_wallet_home.dart';
import '../../finance/wallet_asset_overview.dart';
import '../../finance/msnw_transaction_history.dart';
import '../../finance/wallet_recent_activity.dart';
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
  // A receipt deep link opens the canonical scoped history once, not a
  // home tab or a second history store. Account changes discard the view.
  bool _initialReceiptOpened=false;
  bool _assetsExpanded = true;
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
        onReceiveMsnw:_receive,onConvertWithdraw:_convertMsnw,
        onActivity:()=>openWalletPage<void>(context:context,title:'Activity',builder:(_)=>_history(session.user.id)))));
  }

  Future<void> _sendMsnw() async {
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) return;
    final expected = session.user.id;
    await openWalletPage<void>(
      context: context, 
      title: 'Send MSNW',
      builder: (_) => _AccountWalletPage(accountId: expected, child: Column(children:[
        TextButton.icon(onPressed:()=>context.push('/wallet/pay'),icon:const Icon(Icons.link),label:const Text('Open payment request')),
        Expanded(child:MsnwCustodySendSheet(
        dio: ref.read(dioProvider), baseUrl: kApiBaseUrl,
        expectedUserId: expected,
        currentUserId: () => switch (ref.read(sessionProvider)) {
          SessionSignedIn(:final user) => user.id, _ => null,
        },
        accessToken: () => ref.read(apiClientProvider).accessToken,
        onCompleted: () { if (mounted) setState(() => _custodyRefresh++); },
      ))])),
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

  Future<void> _fund() async {
    final qualified = widget.onAddMoney;
    if (qualified != null) {
      qualified();
      return;
    }
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('MSNW funding is not available yet.'),
        ));
      }
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

  Widget _history(String accountId,{String? receiptId}) => _AccountWalletPage(accountId: accountId,
    child: MsnwTransactionHistory(
      key: ValueKey('history-$accountId'),
      refreshKey: _custodyRefresh,
      initialSearch: receiptId??widget.initialTransactionId,
      dio: ref.read(dioProvider), baseUrl: kApiBaseUrl,
      expectedUserId: accountId,
      currentUserId: () => switch (ref.read(sessionProvider)) {
        SessionSignedIn(:final user) => user.id, _ => null,
      }, accessToken: () => ref.read(apiClientProvider).accessToken));

  @override Widget build(BuildContext context) {
    final u=context.masanawa;
    final accountId=switch(ref.watch(sessionProvider)){
      SessionSignedIn(:final user)=>user.id,_=>null,
    };
    final hidden=_hiddenOwner==accountId&&_hideBalances;
    final billing=widget.onOpenBillingService ??
      (String category)=>context.push('/billing?service=$category');
    void viewHistory([String? receiptId]){
      if(accountId==null)return;
      final owner=accountId;
      openWalletPage<void>(context:context,title:'Transaction history',
        builder:(_)=>_history(owner,receiptId:receiptId));
    }
    if(widget.initialTransactionId!=null&&!_initialReceiptOpened&&accountId!=null){
      _initialReceiptOpened=true;
      WidgetsBinding.instance.addPostFrameCallback((_){
        if(mounted&&accountId==switch(ref.read(sessionProvider)){
          SessionSignedIn(:final user)=>user.id,_=>null,
        }){viewHistory(widget.initialTransactionId);}
      });
    }
    return Scaffold(
      backgroundColor:u.surfaceCard,
      appBar:widget.embeddedInShell?null:AppBar(
        title:const Text('Wallet'),
        leading:IconButton(tooltip:'Back',icon:const Icon(Icons.arrow_back),
          onPressed:()=>Navigator.of(context).canPop()
            ? Navigator.of(context).pop() : context.go('/home?tab=wallet')),
      ),
      body:ListView(
        key:PageStorageKey<String>('wallet-home-${accountId??'signed-out'}'),
        physics:const AlwaysScrollableScrollPhysics(),
        padding:const EdgeInsets.fromLTRB(16,12,16,32),
        children:[
          WalletPendingBanner(hideAmounts:hidden),
          MsnwWalletBalanceCard(
            dio:ref.watch(dioProvider),baseUrl:kApiBaseUrl,
            accountId:accountId,refreshKey:_custodyRefresh,
            includeAccountSummary:true,
            currentUserId:()=>switch(ref.read(sessionProvider)){
              SessionSignedIn(:final user)=>user.id,_=>null,
            },
            accessToken:()=>ref.read(apiClientProvider).accessToken,
            onFund:_depositChoices,
            onVisibilityChanged:(v)=>setState((){
              _hiddenOwner=accountId;_hideBalances=v;
            }),
            onBalance:(v){
              if(mounted&&accountId==switch(ref.read(sessionProvider)){
                SessionSignedIn(:final user)=>user.id,_=>null,
              }){setState((){_balance=v;_balanceOwner=accountId;});}
            },
          ),
          const SizedBox(height:12),
          _WalletHomeActionCard(label:'Withdraw',icon:Icons.call_made_outlined,
            enabled:accountId!=null,onTap:()=>_openCryptoOperation('withdraw')),
          _WalletHomeActionCard(label:'Send',icon:Icons.north_east_outlined,
            enabled:accountId!=null,onTap:_sendMsnw),
          _WalletHomeActionCard(label:'Swap',icon:Icons.swap_horiz_outlined,
            enabled:accountId!=null,onTap:()=>_openCryptoOperation('swap')),
          _WalletHomeActionCard(label:'P2P',icon:Icons.people_alt_outlined,
            enabled:accountId!=null,onTap:_openP2p),
          _WalletHomeActionCard(label:'Airtime',icon:Icons.phone_android_outlined,
            enabled:accountId!=null,onTap:()=>billing('airtime')),
          _WalletHomeActionCard(label:'Data',icon:Icons.wifi_outlined,
            enabled:accountId!=null,onTap:()=>billing('data')),
          _WalletHomeActionCard(label:'TV',icon:Icons.live_tv_outlined,
            enabled:accountId!=null,onTap:()=>billing('tv')),
          _WalletHomeActionCard(label:'Electricity',icon:Icons.bolt_outlined,
            enabled:accountId!=null,onTap:()=>billing('electricity')),
          _WalletCompositeCard(
            title:'My assets',icon:Icons.account_balance_wallet_outlined,
            onOpen:accountId==null?null:()=>setState(
              ()=>_assetsExpanded=!_assetsExpanded),
            child:accountId==null
              ? const Padding(padding:EdgeInsets.all(12),
                  child:Text('Sign in to view your assets.'))
              : !_assetsExpanded
              ? const Padding(padding:EdgeInsets.all(8),
                  child:Text('Tap My assets to show verified holdings'))
              : Column(children:[
                  ListTile(
                    contentPadding:EdgeInsets.zero,
                    leading:CircleAvatar(
                      backgroundColor:u.brand.withValues(alpha:.09),
                      child:Text('M',style:TextStyle(color:u.brandStrong,
                        fontWeight:FontWeight.bold))),
                    title:const Text('MSNW'),
                    subtitle:Text(hidden?'Balance hidden'
                      :_balanceOwner==accountId&&_balance!=null
                      ? 'Available: ${formatWalletAtomic(_balance!.available)} MSNW'
                      :'Verified balance unavailable'),
                    trailing:const Icon(Icons.chevron_right),
                    onTap:_assetDetail,
                  ),
                  WalletAssetOverview(ownedOnly:true,hideBalances:hidden),
                ]),
          ),
          _WalletCompositeCard(
            title:'Transaction history',icon:Icons.receipt_long_outlined,
            onOpen:accountId==null?null:()=>viewHistory(),
            child:Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
              WalletRecentActivity(
              key:ValueKey('wallet-preview-${accountId??'signed-out'}'),
              compact:true,dio:ref.watch(dioProvider),baseUrl:kApiBaseUrl,
              accountId:accountId,
              currentUserId:()=>switch(ref.read(sessionProvider)){
                SessionSignedIn(:final user)=>user.id,_=>null,
              },
              accessToken:()=>ref.read(apiClientProvider).accessToken,
              refreshKey:_custodyRefresh,hideAmounts:hidden,
              onViewAll:()=>viewHistory(),
              onOpenReceipt:(id)=>viewHistory(id),
              ),
              Align(alignment:Alignment.centerRight,child:TextButton(
                onPressed:accountId==null?null:()=>viewHistory(),
                child:const Text('View all'))),
            ]),
          ),
        ],
      ),
    );
  }

}


/// One native vertically scrollable action surface. It grows with accessibility
/// text rather than hiding P2P or Bills behind a grid or horizontal carousel.
class _WalletHomeActionCard extends StatelessWidget {
  const _WalletHomeActionCard({required this.label,required this.icon,
    required this.onTap,required this.enabled});
  final String label;
  final IconData icon;
  final VoidCallback onTap;
  final bool enabled;
  @override Widget build(BuildContext context){
    final u=context.masanawa;
    return Padding(padding:const EdgeInsets.only(bottom:8),child:Material(
      key:ValueKey('wallet-action-${label.toLowerCase()}'),
      color:u.surfaceCard,
      shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(16),
        side:BorderSide(color:u.structuralBorder)),
      clipBehavior:Clip.antiAlias,
      child:InkWell(
        onTap:enabled?onTap:null,
        child:ConstrainedBox(constraints:const BoxConstraints(minHeight:60),
          child:Padding(padding:const EdgeInsets.symmetric(
            horizontal:14,vertical:8),child:Row(children:[
            Container(width:38,height:38,alignment:Alignment.center,
              decoration:BoxDecoration(color:u.surfaceMuted,
                borderRadius:BorderRadius.circular(12)),
              child:Icon(icon,color:enabled?u.textPrimary:u.textMuted)),
            const SizedBox(width:12),
            Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisSize:MainAxisSize.min,children:[
                Text(label,style:TextStyle(fontWeight:FontWeight.w600,
                  color:enabled?u.textPrimary:u.textMuted)),
                if(!enabled)Text('Sign in to continue',
                  style:TextStyle(fontSize:12,color:u.textMuted)),
              ])),
            Icon(enabled?Icons.chevron_right:Icons.lock_outline,
              color:u.textMuted),
          ]))),
        ),
      ),
    );
  }
}

/// The last two cards contain actual account-scoped projections. Their titles
/// are actionable card labels, never free-floating home section headings.
class _WalletCompositeCard extends StatelessWidget {
  const _WalletCompositeCard({required this.title,required this.icon,
    required this.child,required this.onOpen});
  final String title;
  final IconData icon;
  final Widget child;
  final VoidCallback? onOpen;
  @override Widget build(BuildContext context){
    final u=context.masanawa;
    return Padding(padding:const EdgeInsets.only(bottom:8),child:Material(
      key:ValueKey('wallet-composite-${title.toLowerCase().replaceAll(' ', '-')}'),
      color:u.surfaceCard,
      shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(16),
        side:BorderSide(color:u.structuralBorder)),
      child:Padding(padding:const EdgeInsets.fromLTRB(14,4,14,12),child:
        Column(children:[
          ListTile(contentPadding:EdgeInsets.zero,
            leading:Icon(icon,color:u.textPrimary),
            title:Text(title,style:const TextStyle(fontWeight:FontWeight.w700)),
            trailing:Icon(Icons.chevron_right,color:u.textMuted),
            onTap:onOpen),
          child,
        ]),
      ),
    ));
  }
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
