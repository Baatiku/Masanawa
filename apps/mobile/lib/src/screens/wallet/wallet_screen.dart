import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/network/api_client.dart';
import '../../core/providers.dart';
import '../../finance/crypto_wallet_screen.dart';
import '../../finance/msn_balance_card.dart';
import '../../finance/msn_balance_transport.dart';
import '../../finance/msnw_paystack_funding_sheet.dart';
import '../../finance/msnw_verified_funding_activity.dart';
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
  'MASANAWA_MSNW_ONCHAIN_BALANCE_ENABLED', defaultValue: false,
);

/// Legacy MSN funding journal remains internal until reconciled. An old
/// issuance is not evidence of a qualified MSNW token or customer balance.
const bool kWalletMsnFundingStatusEnabled = bool.fromEnvironment(
  'MASANAWA_MSN_FUNDING_READBACK_ENABLED', defaultValue: false,
);

/// Explicit opt-in only when Paystack is live, KYC-backed and staged schema installed.
const bool kWalletPaystackDvaEnabled = bool.fromEnvironment(
  'MASANAWA_MSNW_PAYSTACK_DVA_ENABLED', defaultValue: false,
);

const bool kWalletVerifiedFundingActivityEnabled = bool.fromEnvironment(
  'MASANAWA_MSNW_PAYSTACK_VERIFY_ENABLED', defaultValue: false,
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
    if (!widget.walletPaystackDvaEnabled || session is! SessionSignedIn) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('MSNW funding is not available yet.'),
      ));
      return;
    }
    final userId = session.user.id;
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (_) => MsnwPaystackFundingSheet(
        dio: ref.read(dioProvider),
        baseUrl: kApiBaseUrl,
        expectedUserId: userId,
        currentUserId: () => switch (ref.read(sessionProvider)) {
          SessionSignedIn(:final user) => user.id,
          _ => null,
        },
        accessToken: () => ref.read(apiClientProvider).accessToken,
      ),
    );
  }

  Future<void> _receive() async {
    final session = ref.read(sessionProvider);
    if (!widget.walletMsnBalanceEnabled || session is! SessionSignedIn) return;
    final expectedUserId = session.user.id;
    MsnBalance wallet;
    try {
      wallet = await GatewayMsnBalanceTransport(
        dio: ref.read(dioProvider),
        baseUrl: kApiBaseUrl,
        readAccessToken: () => ref.read(apiClientProvider).accessToken,
      ).read();
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Verified MSNW receive address unavailable.')),
      );
      return;
    }
    if (!mounted) return;
    final active = ref.read(sessionProvider);
    if (active is! SessionSignedIn || active.user.id != expectedUserId) return;
    final address = wallet.receiveAddress;
    if (address == null || wallet.chainId == null || wallet.tokenContract == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('MSNW deposit address is not yet verified.')),
      );
      return;
    }
    await showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (ctx) => SafeArea(child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Receive MSNW', style: Theme.of(ctx).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Chain ID: ${wallet.chainId}'),
            Text('Verified token: ${wallet.tokenContract}'),
            const SizedBox(height: 8),
            const Text('Only send MSNW on the shown blockchain to this '
              'verified address. Other assets or networks may be lost.'),
            const SizedBox(height: 16),
            SelectableText(address),
            OutlinedButton.icon(
              onPressed: () {
                final current = ref.read(sessionProvider);
                if (current is SessionSignedIn &&
                    current.user.id == expectedUserId) {
                  Clipboard.setData(ClipboardData(text: address));
                }
              },
              icon: const Icon(Icons.copy),
              label: const Text('Copy verified address'),
            ),
          ]),
      )),
    );
  }

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
    final sendAction = widget.onSend;
    final openCrypto = _openCrypto;
    return Scaffold(
      backgroundColor: u.surfaceCard,
      appBar: widget.embeddedInShell ? null : masanawaMainHeader(context),
      body: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 28),
          children: [
            if (widget.walletMsnBalanceEnabled && accountId != null)
              MsnBalanceCard(
                sessionIdentity: accountId,
                transport: GatewayMsnBalanceTransport(
                  dio: ref.watch(dioProvider),
                  baseUrl: kApiBaseUrl,
                  readAccessToken: () => ref.read(apiClientProvider).accessToken))
            else _MsnHero(signedIn: accountId != null),
            const SizedBox(height: 22),
            Wrap(alignment: WrapAlignment.spaceBetween,
              spacing: 12, runSpacing: 16, children: [
              _WalletShortcut(label: 'Send', icon: Icons.north_east,
                onTap: sendAction),
              _WalletShortcut(label: 'Convert', icon: Icons.swap_horiz,
                onTap: null),
              _WalletShortcut(label: 'Fund', icon: Icons.add,
                onTap: _fund),
              _WalletShortcut(label: 'Receive', icon: Icons.south_west,
                onTap: widget.walletMsnBalanceEnabled ? _receive : null),
            ]),
            const SizedBox(height: 24),
            _WalletSection(label: 'My assets', action: 'View crypto',
              onTap: openCrypto),
            const SizedBox(height: 8),
            Card(
              color: u.surfaceCard, margin: EdgeInsets.zero,
              child: Column(children: [
                const ListTile(
                  leading: CircleAvatar(child: Text('M')),
                  title: Text('MSNW', style: TextStyle(fontWeight: FontWeight.w700)),
                  subtitle: Text('Masanawa wallet token')),
                Divider(height: 1, color: u.structuralBorder),
                ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.currency_bitcoin)),
                  title: const Text('Crypto assets', style: TextStyle(
                    fontWeight: FontWeight.w700)),
                  subtitle: const Text('All supported networks'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: openCrypto),

              ]),
            ),
            const SizedBox(height: 22),
            const _WalletSection(label: 'Services'),
            const SizedBox(height: 8),
            WalletServiceShortcuts(
              onOpenCrypto: openCrypto,
              onBuyBills: widget.onBuyBills,
              onOpenBillingService: widget.onOpenBillingService),
            const SizedBox(height: 24),
            const _WalletSection(label: 'Recent activity'),
            if (kWalletVerifiedFundingActivityEnabled && accountId != null)
              MsnwVerifiedFundingActivity(
                sessionIdentity: accountId,
                dio: ref.watch(dioProvider),
                baseUrl: kApiBaseUrl,
                currentUserId: () => switch (ref.read(sessionProvider)) {
                  SessionSignedIn(:final user) => user.id,
                  _ => null,
                },
                accessToken: () => ref.read(apiClientProvider).accessToken,
              )
            else
              const ListTile(title: Text('MSNW history unavailable')),
          ],
      ),
    );
  }
}

class _MsnHero extends StatelessWidget {
  const _MsnHero({required this.signedIn});
  final bool signedIn;
  @override Widget build(BuildContext context) {
    final u = context.masanawa;
    return Container(
      constraints: const BoxConstraints(minHeight: 156),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: u.brand, borderRadius: BorderRadius.circular(22)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Row(children: [
          Icon(Icons.account_balance_wallet_outlined, color: Colors.white),
          SizedBox(width: 10),
          Text('MSNW balance', style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16)),
        ]),
        const SizedBox(height: 22),
        const Text('— MSNW', style: TextStyle(
          color: Colors.white, fontSize: 32, fontWeight: FontWeight.w800)),
        Text(signedIn ? 'Balance unavailable' : 'Sign in to view balance',
          style: TextStyle(color: Colors.white.withValues(alpha: 0.86))),
      ]),
    );
  }
}

class _WalletShortcut extends StatelessWidget {
  const _WalletShortcut({required this.label, required this.icon, required this.onTap});
  final String label;
  final IconData icon;
  final VoidCallback? onTap;
  @override Widget build(BuildContext context) {
    final u = context.masanawa;
    return Column(children: [
      SizedBox.square(dimension: 62, child: FilledButton(
        onPressed: onTap,
        style: FilledButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: u.brand.withValues(alpha: 0.10),
          foregroundColor: u.brand,
          disabledBackgroundColor: u.surfaceBg,
          disabledForegroundColor: u.textMuted,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17))),
        child: Icon(icon, size: 24),
      )),
      const SizedBox(height: 7),
      Text(label, style: const TextStyle(fontSize: 12,
        fontWeight: FontWeight.w600)),
    ]);
  }
}

class _WalletSection extends StatelessWidget {
  const _WalletSection({required this.label, this.action, this.onTap});
  final String label;
  final String? action;
  final VoidCallback? onTap;
  @override Widget build(BuildContext context) => Row(children: [
    Expanded(child: Text(label, style: const TextStyle(
      fontSize: 17, fontWeight: FontWeight.w700))),
    if (action != null) TextButton(
      onPressed: onTap, child: Text(action!,
        style: const TextStyle(fontSize: 12))),
  ]);
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
    final billing = onOpenBillingService;
    if (onOpenCrypto == null && onBuyBills == null && billing == null) {
      return const SizedBox.shrink();
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        if (onOpenCrypto != null)
          ActionChip(
            avatar: const Icon(Icons.currency_bitcoin, size: 18),
            label: const Text('Crypto'),
            onPressed: onOpenCrypto,
          ),
        if (billing != null) ...[
          ActionChip(
            avatar: const Icon(Icons.bolt, size: 16),
            label: const Text('Data bundles'),
            onPressed: () => billing('data'),
          ),
          ActionChip(
            avatar: const Icon(Icons.phone_android, size: 16),
            label: const Text('Airtime'),
            onPressed: () => billing('airtime'),
          ),
          ActionChip(
            avatar: const Icon(Icons.electric_bolt_outlined, size: 16),
            label: const Text('Electricity'),
            onPressed: () => billing('electricity'),
          ),
          ActionChip(
            avatar: const Icon(Icons.live_tv_outlined, size: 16),
            label: const Text('TV / Cable'),
            onPressed: () => billing('tv'),
          ),
        ] else if (onBuyBills != null)
          ActionChip(
            avatar: const Icon(Icons.bolt, size: 16),
            label: const Text('Data bundles'),
            onPressed: onBuyBills,
          ),
      ],
    );
  }
}
