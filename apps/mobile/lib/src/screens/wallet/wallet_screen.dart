import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../commerce/wallet_models.dart';
import '../../core/network/api_client.dart';
import '../../core/providers.dart';
import '../../finance/crypto_wallet_screen.dart';
import '../../finance/msn_balance_card.dart';
import '../../finance/msn_balance_transport.dart';
import '../../finance/msn_funding_card.dart';
import '../../finance/msn_funding_transport.dart';
import '../../state/session_state.dart';
import 'send_credits_sheet.dart';
import 'wallet_receipt_sheet.dart';
import '../../state/wallet_state.dart';
import '../../theme/masanawa_theme.dart';
import '../../ui/components/masanawa_main_header.dart';

/// Compile-time rollout gate. Production APKs never expose Credits Send
/// until Gateway policy, real-account ledger replay and device checks qualify.
const bool kWalletCreditSendEnabled = bool.fromEnvironment(
  'MASANAWA_WALLET_CREDIT_SEND_ENABLED', defaultValue: false,
);

/// Exact MSN uses its own off-chain asset, not existing Credits.
/// Production Wallet does not reveal this until qualified and enabled.
const bool kWalletMsnBalanceEnabled = bool.fromEnvironment(
  'MASANAWA_MSN_BALANCE_ENABLED', defaultValue: false,
);

/// Independent, read-only quote/status rollout. Defaults OFF until staged
/// finance schema, provider/custody and operator release checks qualify.
const bool kWalletMsnFundingStatusEnabled = bool.fromEnvironment(
  'MASANAWA_MSN_FUNDING_READBACK_ENABLED', defaultValue: false,
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

  Future<void> _fund(WalletView? value) async {
    if (widget.onAddMoney != null) { widget.onAddMoney!(); return; }
    if (value?.accountNumber case final number? when number.isNotEmpty) {
      await showModalBottomSheet<void>(
        context: context, showDragHandle: true,
        builder: (_) => SafeArea(child: Padding(
          padding: const EdgeInsets.all(14),
          child: _BankAccountCard(
            bankName: value?.bankName ?? 'Bank',
            accountNumber: number,
            accountHolderName: value?.accountHolderName ?? 'Wallet owner'))));
      return;
    }
    if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Funding is unavailable until a verified bank account is assigned.')));
  }

  Future<void> _send(WalletView view, String accountId) async {
    final receipt = await showModalBottomSheet<CreditTransferReceipt>(
      context: context, isScrollControlled: true,
      builder: (_) => SendCreditsSheet(
        expectedAccountId: accountId,
        currentAccountId: () => switch (ref.read(sessionProvider)) {
          SessionSignedIn(:final user) => user.id, _ => null,
        },
        spendableCredits: view.spendableCredits,
        onSend: (recipient, amount) => ref.read(walletProvider.notifier)
            .sendCredits(recipient: recipient, amountCredits: amount),
      ),
    );
    if (!mounted || receipt == null) return;
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn || session.user.id != accountId) return;
    await showModalBottomSheet<void>(
      context: context, isScrollControlled: true,
      builder: (_) => WalletReceiptSheet(
        title: 'Credits sent', amountCredits: receipt.amountCredits,
        reference: receipt.transferId,
        detail: 'Sent to ' + receipt.recipientUserId + '.'));
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
    final wallet = ref.watch(walletProvider);
    final accountId = switch (ref.watch(sessionProvider)) {
      SessionSignedIn(:final user) => user.id, _ => null,
    };
    final balance = wallet.valueOrNull;
    // Primary Send is MSN-only and requires a qualified host action. Legacy
    // Credits Send is exposed separately on the Credits asset row below.
    final sendAction = widget.onSend;
    final openCrypto = _openCrypto;
    return Scaffold(
      backgroundColor: u.surfaceCard,
      appBar: widget.embeddedInShell ? null : masanawaMainHeader(context),
      body: RefreshIndicator(
        onRefresh: () => ref.read(walletProvider.notifier).refresh(),
        child: ListView(
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
                onTap: openCrypto),
              _WalletShortcut(label: 'Fund', icon: Icons.add,
                onTap: () => _fund(balance)),
              _WalletShortcut(label: 'Receive', icon: Icons.south_west,
                onTap: openCrypto),
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
                  title: Text('MSN', style: TextStyle(fontWeight: FontWeight.w700)),
                  subtitle: Text('Masanawa')),
                Divider(height: 1, color: u.structuralBorder),
                ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.currency_bitcoin)),
                  title: const Text('Crypto assets', style: TextStyle(
                    fontWeight: FontWeight.w700)),
                  subtitle: const Text('All supported networks'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: openCrypto),
                if (balance != null) ...[
                  Divider(height: 1, color: u.structuralBorder),
                  ListTile(
                    leading: const CircleAvatar(child: Icon(Icons.toll_outlined)),
                    title: const Text('Credits'),
                    subtitle: const Text('Legacy service balance'),
                    trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 90),
                        child: Text(balance.spendableCredits.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w700))),
                      if (widget.walletCreditSendEnabled && accountId != null)
                        IconButton(
                          tooltip: 'Send Credits',
                          onPressed: () => _send(balance, accountId),
                          icon: const Icon(Icons.north_east_rounded, size: 20)),
                    ])),
                ],
              ]),
            ),
            if (widget.walletMsnFundingStatusEnabled && accountId != null) ...[
              const SizedBox(height: 14),
              MsnFundingCard(
                sessionIdentity: accountId,
                transport: GatewayMsnFundingTransport(
                  dio: ref.watch(dioProvider),
                  baseUrl: kApiBaseUrl,
                  readAccessToken: () => ref.read(apiClientProvider).accessToken)),
            ],
            if (balance?.accountNumber != null) ...[
              const SizedBox(height: 14),
              _BankAccountCard(
                bankName: balance?.bankName ?? 'Bank',
                accountNumber: balance!.accountNumber!,
                accountHolderName: balance.accountHolderName ?? 'Wallet owner'),
            ],
            const SizedBox(height: 22),
            const _WalletSection(label: 'Services'),
            const SizedBox(height: 8),
            WalletServiceShortcuts(
              onOpenCrypto: openCrypto,
              onBuyBills: widget.onBuyBills,
              onOpenBillingService: widget.onOpenBillingService),
            const SizedBox(height: 24),
            _WalletSection(label: 'Recent activity', action: 'Refresh',
              onTap: () => ref.read(walletProvider.notifier).refresh()),
            if (wallet.isLoading && balance == null)
              const Padding(padding: EdgeInsets.all(16),
                child: LinearProgressIndicator(minHeight: 2))
            else if (wallet.hasError)
              ListTile(title: const Text('Activity unavailable'),
                trailing: TextButton(
                  onPressed: () => ref.read(walletProvider.notifier).refresh(),
                  child: const Text('Retry')))
            else if (balance == null || balance.entries.isEmpty)
              const ListTile(title: Text('No recent activity'))
            else ...balance.entries.take(8).map(
              (item) => _WalletEntryTile(entry: item)),
          ],
        ),
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
          Text('MSN balance', style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16)),
        ]),
        const SizedBox(height: 22),
        const Text('— MSN', style: TextStyle(
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

class _BankAccountCard extends StatelessWidget {
  const _BankAccountCard({
    required this.bankName,
    required this.accountNumber,
    required this.accountHolderName,
  });

  final String bankName;
  final String accountNumber;
  final String accountHolderName;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: u.surfaceCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: u.structuralBorder),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: u.brand.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.account_balance_rounded, color: u.brand, size: 20),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dedicated Bank Account',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: u.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Bank transfer',
                      style: TextStyle(fontSize: 11.5, color: u.textMuted),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Divider(height: 1, color: u.structuralBorder.withValues(alpha: 0.5)),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ACCOUNT NUMBER',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.8,
                      color: u.textMuted,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    accountNumber,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.2,
                      color: u.textPrimary,
                    ),
                  ),
                ],
              ),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: u.brandStrong,
                  side: BorderSide(color: u.brand),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: accountNumber));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Account number copied to clipboard'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                icon: const Icon(Icons.copy_rounded, size: 16),
                label: const Text('Copy', style: TextStyle(fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BANK NAME',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.8,
                        color: u.textMuted,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      bankName,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: u.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ACCOUNT NAME',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.8,
                        color: u.textMuted,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      accountHolderName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: u.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Balances extends StatelessWidget {
  const _Balances({required this.view});
  final WalletView view;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Credits', style: TextStyle(color: u.textMuted)),
          const SizedBox(height: 4),
          Text(
            '${view.spendableCredits} Credits',
            style: TextStyle(
              color: u.textPrimary,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 24,
            runSpacing: 12,
            children: [
              _SmallBalance(
                label: 'Pending',
                value: '${view.pendingEarningsCredits} Credits',
              ),
              _SmallBalance(
                label: 'Available',
                value: '${view.availableEarningsCredits} Credits',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SmallBalance extends StatelessWidget {
  const _SmallBalance({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: TextStyle(color: u.textPrimary, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 2),
        Text(label, style: TextStyle(color: u.textMuted, fontSize: 12)),
      ],
    );
  }
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

class _Actions extends StatelessWidget {
  const _Actions({
    required this.onAddMoney,
    required this.onSend,
    required this.onWithdraw,
  });

  final VoidCallback? onAddMoney;
  final VoidCallback? onSend;
  final VoidCallback? onWithdraw;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        if (onAddMoney != null)
          FilledButton.icon(
            onPressed: onAddMoney,
            icon: const Icon(Icons.add),
            label: const Text('Add money'),
          ),
        if (onSend != null)
          OutlinedButton.icon(
            onPressed: onSend,
            icon: const Icon(Icons.send_outlined),
            label: const Text('Send'),
          ),
        if (onWithdraw != null)
          IconButton.outlined(
            tooltip: 'Withdraw',
            onPressed: onWithdraw,
            icon: const Icon(Icons.south_west),
          ),
      ],
    );
  }
}

class _WalletEntryTile extends StatelessWidget {
  const _WalletEntryTile({required this.entry});
  final WalletEntry entry;

  IconData get icon {
    switch (entry.kind) {
      case WalletEntryKind.funding:
        return Icons.add_circle_outline;
      case WalletEntryKind.transferSent:
        return Icons.north_east;
      case WalletEntryKind.transferReceived:
        return Icons.south_west;
      case WalletEntryKind.purchase:
        return Icons.shopping_bag_outlined;
      case WalletEntryKind.commission:
        return Icons.percent;
      case WalletEntryKind.gift:
        return Icons.card_giftcard_outlined;
      case WalletEntryKind.voice:
        return Icons.graphic_eq;
      case WalletEntryKind.ownerSession:
        return Icons.person_outline;
      case WalletEntryKind.refund:
        return Icons.replay_outlined;
      case WalletEntryKind.withdrawal:
        return Icons.account_balance_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final sign = entry.incoming ? '+' : '-';
    final date = entry.createdAt;
    final months = MaterialLocalizations.of(context).formatShortMonthDay(date);
    final time =
        '${date.hour.toString().padLeft(2, '0')}:'
        '${date.minute.toString().padLeft(2, '0')}';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: u.brand, size: 22),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  entry.title,
                  style: TextStyle(color: u.textPrimary, fontSize: 14),
                ),
                const SizedBox(height: 4),
                Text(
                  '$months ${date.year} · $time',
                  style: TextStyle(color: u.textMuted, fontSize: 12),
                ),
                const SizedBox(height: 4),
                Text(
                  '$sign${entry.amountCredits} Credits',
                  style: TextStyle(
                    color: u.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
