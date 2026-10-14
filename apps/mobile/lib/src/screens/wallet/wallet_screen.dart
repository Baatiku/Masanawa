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

class _WalletScreenState extends ConsumerState<WalletScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final wallet = ref.watch(walletProvider);
    final accountId = (widget.walletCreditSendEnabled ||
            widget.walletMsnBalanceEnabled ||
            widget.walletMsnFundingStatusEnabled)
        ? switch (ref.watch(sessionProvider)) {
            SessionSignedIn(:final user) => user.id,
            _ => null,
          }
        : null;

    // Loading or a balance failure must not remove entry to separate,
    // independently qualified Billing/Crypto routes.
    Widget pendingOrUnavailableWallet({bool loading = false}) => ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
      children: [
        WalletServiceShortcuts(
          onOpenCrypto: widget.onOpenCrypto,
          onBuyBills: widget.onBuyBills,
          onOpenBillingService: widget.onOpenBillingService,
        ),
        const SizedBox(height: 24),
        if (loading)
          const Center(child: CircularProgressIndicator())
        else ...[
          Text(
            'Wallet balances are unavailable right now.',
            textAlign: TextAlign.center,
            style: TextStyle(color: u.textMuted),
          ),
          const SizedBox(height: 12),
          Center(
            child: OutlinedButton(
              onPressed: () => ref.read(walletProvider.notifier).refresh(),
              child: const Text('Retry'),
            ),
          ),
        ],
      ],
    );

    Widget balanceTab = RefreshIndicator(
      onRefresh: () => ref.read(walletProvider.notifier).refresh(),
      child: wallet.when(
        skipLoadingOnRefresh: false,
        loading: () => pendingOrUnavailableWallet(loading: true),
        error: (_, _) => pendingOrUnavailableWallet(),
        data: (value) {
          if (value == null) return pendingOrUnavailableWallet();
          VoidCallback? sendAction = widget.onSend;
          if (sendAction == null &&
              widget.walletCreditSendEnabled &&
              accountId != null) {
            sendAction = () async {
              final receipt = await showModalBottomSheet<CreditTransferReceipt>(
                context: context,
                isScrollControlled: true,
                builder: (_) => SendCreditsSheet(
                  expectedAccountId: accountId,
                  currentAccountId: () => switch (ref.read(sessionProvider)) {
                    SessionSignedIn(:final user) => user.id,
                    _ => null,
                  },
                  spendableCredits: value.spendableCredits,
                  onSend: (recipient, amount) =>
                      ref.read(walletProvider.notifier).sendCredits(
                        recipient: recipient, amountCredits: amount,
                      ),
                ),
              );
              if (!context.mounted || receipt == null) {
                return;
              }
              final current = ref.read(sessionProvider);
              if (current is! SessionSignedIn ||
                  current.user.id != accountId) {
                return;
              }
              await showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                builder: (_) => WalletReceiptSheet(
                  title: 'Credits sent',
                  amountCredits: receipt.amountCredits,
                  reference: receipt.transferId,
                  detail: 'Sent to ${receipt.recipientUserId}.',
                ),
              );
            };
          }

          final assignedAccount = value.accountNumber != null
              ? _BankAccountCard(
                  bankName: value.bankName ?? 'Wema Bank',
                  accountNumber: value.accountNumber!,
                  accountHolderName: value.accountHolderName ?? 'Masanawa User',
                )
              : null;

          return ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
            children: [
              _Balances(view: value),
              ?assignedAccount,
              if (widget.walletMsnBalanceEnabled && accountId != null)
                MsnBalanceCard(
                  sessionIdentity: accountId,
                  transport: GatewayMsnBalanceTransport(
                    dio: ref.watch(dioProvider),
                    baseUrl: kApiBaseUrl,
                    readAccessToken: () => ref.read(apiClientProvider).accessToken,
                  ),
                ),
              if (widget.walletMsnFundingStatusEnabled && accountId != null)
                MsnFundingCard(
                  sessionIdentity: accountId,
                  transport: GatewayMsnFundingTransport(
                    dio: ref.watch(dioProvider),
                    baseUrl: kApiBaseUrl,
                    readAccessToken: () => ref.read(apiClientProvider).accessToken,
                  ),
                ),
              const SizedBox(height: 12),
              WalletServiceShortcuts(
                onOpenCrypto: widget.onOpenCrypto,
                onBuyBills: widget.onBuyBills,
                onOpenBillingService: widget.onOpenBillingService,
              ),
              if (widget.onAddMoney != null ||
                  sendAction != null ||
                  widget.onWithdraw != null) ...[
                const SizedBox(height: 12),
                _Actions(
                  onAddMoney: widget.onAddMoney,
                  onSend: sendAction,
                  onWithdraw: widget.onWithdraw,
                ),
              ],
              const SizedBox(height: 20),
              Text(
                'History',
                style: TextStyle(
                  color: u.textPrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              if (value.entries.isEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Text(
                    'No wallet activity yet.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: u.textMuted),
                  ),
                )
              else
                ...value.entries.map(
                  (entry) => Column(
                    children: [
                      _WalletEntryTile(entry: entry),
                      Divider(height: 1, color: u.structuralBorder),
                    ],
                  ),
                ),
            ],
          );
        },
      ),
    );

    if (widget.embeddedInShell) {
      return Scaffold(
        backgroundColor: u.surfaceBg,
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: u.surfaceBg,
                border: Border(
                  bottom: BorderSide(color: u.structuralBorder, width: 0.8),
                ),
              ),
              child: TabBar(
                controller: _tabController,
                indicatorColor: u.brand,
                indicatorWeight: 3,
                labelColor: u.brandStrong,
                unselectedLabelColor: u.textMuted,
                labelStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14.5),
                unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14.5),
                tabs: const [
                  Tab(text: 'Balance'),
                  Tab(text: 'Crypto'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  balanceTab,
                  const CryptoWalletScreen(embedded: true),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: masanawaMainHeader(context),
      body: balanceTab,
    );
  }
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
                      'Transfer to this account to fund your wallet instantly',
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
          Text('Spendable Credits', style: TextStyle(color: u.textMuted)),
          const SizedBox(height: 4),
          Text(
            '${view.spendableCredits} Cr',
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
                value: '${view.pendingEarningsCredits} Cr',
              ),
              _SmallBalance(
                label: 'Available',
                value: '${view.availableEarningsCredits} Cr',
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
                  '$sign${entry.amountCredits} Cr',
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
