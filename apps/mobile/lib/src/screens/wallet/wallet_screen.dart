import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/network/api_client.dart';
import '../../core/providers.dart';
import '../../finance/crypto_wallet_screen.dart';
import '../../finance/msn_balance_transport.dart';
import '../../finance/msnw_wallet_home.dart';
import '../../finance/msnw_transaction_history.dart';
import '../../finance/wallet_flow_page.dart';
import '../../finance/msnw_paystack_funding_sheet.dart';
import '../../finance/msnw_custody_send.dart';
import '../../finance/msnw_stablecoin_convert.dart';
import '../../finance/msnw_p2p_screen.dart';
import '../../state/session_state.dart';
import '../../theme/masanawa_theme.dart';
import '../../ui/components/masanawa_main_header.dart';

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
  final bool walletCreditSendEnabled;
  final bool walletMsnBalanceEnabled;
  final bool walletMsnFundingStatusEnabled;
  final bool walletPaystackDvaEnabled;

  @override
  ConsumerState<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends ConsumerState<WalletScreen> {
  bool _crypto = false;
  int _tab = 0;
  int _custodyRefresh = 0;

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
    Navigator.of(context).push(MaterialPageRoute<void>(
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
    ));
  }

  void _openCrypto() {
    final navigate = widget.onOpenCrypto;
    if (navigate != null) { navigate(); return; }
    setState(() => _crypto = true);
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
      key: ValueKey('history-$accountId-$_custodyRefresh'),
      dio: ref.read(dioProvider), baseUrl: kApiBaseUrl,
      expectedUserId: accountId,
      currentUserId: () => switch (ref.read(sessionProvider)) {
        SessionSignedIn(:final user) => user.id, _ => null,
      }, accessToken: () => ref.read(apiClientProvider).accessToken));

  @override Widget build(BuildContext context) {
    final u = context.masanawa;
    if (_crypto) return Scaffold(
      backgroundColor: u.surfaceCard,
      appBar: AppBar(
        backgroundColor: u.surfaceCard,
        title: const Text('Crypto assets'),
        leading: IconButton(
          tooltip: 'Back to wallet', icon: const Icon(Icons.arrow_back),
          onPressed: () => setState(() => _crypto = false)),
      ),
      body: const CryptoWalletScreen(embedded: true),
    );
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
      appBar: widget.embeddedInShell ? null : masanawaMainHeader(context),
      body: Column(children: [
        Expanded(child: _tab == 0 ? ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 28), children: [
            MsnwWalletBalanceCard(
              dio: ref.watch(dioProvider), baseUrl: kApiBaseUrl,
              accountId: accountId, refreshKey: _custodyRefresh,
              currentUserId: () => switch (ref.read(sessionProvider)) {
                SessionSignedIn(:final user) => user.id, _ => null,
              }, accessToken: () => ref.read(apiClientProvider).accessToken,
              onFund: _fund),
            const SizedBox(height: 24),
            WalletActionRow(onSend: accountId == null ? null : _sendMsnw,
              onConvert: accountId == null ? null : _convertMsnw,
              onReceive: accountId == null ? null : _receive,
              onP2p: accountId == null ? null : _openP2p),
            const SizedBox(height: 24),
            _tabs(),
            const SizedBox(height: 12),
            ListTile(contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(backgroundColor: u.brand.withValues(alpha: .10),
                child: Text('M', style: TextStyle(color: u.brandStrong, fontWeight: FontWeight.w800))),
              title: const Text('MSNW', style: TextStyle(fontWeight: FontWeight.w700)),
              subtitle: const Text('Masanawa'),
              trailing: const Icon(Icons.chevron_right), onTap: _receive),
            Divider(height: 1, color: u.structuralBorder),
            ListTile(contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(backgroundColor: u.surfaceMuted,
                child: Icon(Icons.currency_bitcoin, color: u.textPrimary)),
              title: const Text('Crypto assets', style: TextStyle(fontWeight: FontWeight.w700)),
              trailing: const Icon(Icons.chevron_right), onTap: openCrypto),
            const SizedBox(height: 12),
            WalletServiceShortcuts(onBuyBills: widget.onBuyBills,
              onOpenBillingService: widget.onOpenBillingService),
          ]) : Column(children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal:16), child:_tabs()),
            if(accountId != null) ...[
              Align(alignment:Alignment.centerRight,child:TextButton.icon(
                onPressed:()=>openWalletPage<void>(context:context,title:'Transaction history',builder:(_)=>_history(accountId)),
                icon:const Icon(Icons.open_in_full,size:18),label:const Text('View all transactions'))),
              Expanded(child:_history(accountId)),
            ]
            else const Expanded(child:Center(child:Text('Sign in to view transactions'))),
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
        onPressed:()=>setState(()=>_tab=item.$1),child:Text(item.$2))),
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
    if(snapshot.connectionState!=ConnectionState.done)return const Center(child:CircularProgressIndicator());
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
    return Column(children: [
      ...[
        for (final service in [
          ('data', 'Data bundles', Icons.bolt_outlined),
          ('airtime', 'Airtime', Icons.phone_android),
          ('electricity', 'Electricity', Icons.electric_bolt_outlined),
          ('tv', 'TV', Icons.live_tv_outlined),
        ]) ...[
          Divider(height:1,color:context.masanawa.structuralBorder),
          ListTile(contentPadding:EdgeInsets.zero,
            leading:CircleAvatar(backgroundColor:context.masanawa.surfaceMuted,
              child:Icon(service.$3,color:context.masanawa.textPrimary)),
            title:Text(service.$2,style:const TextStyle(fontWeight:FontWeight.w600)),
            trailing:const Icon(Icons.chevron_right),onTap:()=>billing(service.$1)),
        ],
      ],
    ]);
  }
}
