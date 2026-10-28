import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'gb_balance_card.dart';
import 'gb_wallet_summary.dart';
import 'gb_wallet_activity.dart';
import 'gb_wallet_activity_screen.dart';
import 'gb_promotion_journal.dart';
import 'ngn_wallet.dart';

/// Single authoritative MB wallet. The compact card never displays a
/// fabricated zero or any historical Credits/MSNW balance.
class GbWalletScreen extends ConsumerWidget {
  const GbWalletScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.masanawa;
    final theme = Theme.of(context);
    final session = ref.watch(sessionProvider);
    final owner = session is SessionSignedIn
        ? (accountId: session.user.id,
            authorizationEpoch:
                ref.read(sessionProvider.notifier).authorizationEpoch)
        : null;
    final balanceState = owner == null
        ? null : ref.watch(gbWalletSummaryProvider(owner));
    final balance = balanceState?.valueOrNull;
    final loading = balanceState?.isLoading ?? false;

    Future<void> refresh() async {
      if (owner == null) return;
      ref.invalidate(gbWalletSummaryProvider(owner));
      ref.invalidate(gbPromotionJournalProvider(owner));
      ref.invalidate(ngnWalletBalanceProvider(owner));
      ref.invalidate(ngnBankAccountProvider(owner));
      ref.invalidate(gbActivityPageProvider((owner:owner,limit:5,unit:'all',
        filters:gbActivityAllFilters)));
      try {
        await ref.read(gbWalletSummaryProvider(owner).future);
      } catch (_) {
        // The centered unavailable state remains honest and retryable.
      }
    }

    return RefreshIndicator(
      onRefresh: refresh,
      child: ListView(
        key: const PageStorageKey<String>('gb-wallet-home'),
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text('Wallet',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700)),
          ),
          GbWalletBalanceCard(balance: balance, loading: loading, compact: true,
            ownerName: session is SessionSignedIn ? session.user.name : null),
          if (balance == null && !loading)
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: TextButton.icon(
                  onPressed: owner == null ? null : refresh,
                  icon: const Icon(Icons.refresh_rounded, size: 18),
                  label: Text(owner == null ? 'Sign in' : 'Try again'),
                ),
              ),
            ),
          if (balance != null)
            Theme(
              data: theme.copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                key: const ValueKey('gb-wallet-breakdown'),
                tilePadding: const EdgeInsets.symmetric(horizontal: 3),
                childrenPadding: const EdgeInsets.only(bottom: 8),
                dense: true,
                title: Text('Balance details',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colors.textMuted)),
                children: [
                  _BalanceBreakdown('Purchased available', balance.purchasedAvailableMb),
                  _BalanceBreakdown('Welcome · restricted', balance.welcomeAvailableMb),
                  if (balance.reservedPurchasedMb != null) ...[
                    _BalanceBreakdown('Purchased reserved · all holds',
                      balance.reservedPurchasedMb!),
                    _BalanceBreakdown('Welcome reserved', balance.reservedWelcomeMb!),
                  ] else
                    _BalanceBreakdown('Reserved · all holds', balance.reservedMb),
                  if (owner != null)
                    _PromotionBalanceDetails(owner: owner),
                  if (balance.frozen)
                    Text('Wallet restricted',
                      style: TextStyle(color: theme.colorScheme.error)),
                ],
              ),
            ),
          const SizedBox(height: 8),
          Text('Quick actions', style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700)),
          const SizedBox(height: 12),
          LayoutBuilder(builder: (context, constraints) {
            final tileWidth = (constraints.maxWidth - 12) / 2;
            return Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _WalletShortcut(
                  width: tileWidth,
                  label: 'Redeem',
                  icon: Icons.sim_card_outlined,
                  onTap: () => context.go('/home?tab=data'),
                ),
                _WalletShortcut(
                  width: tileWidth,
                  label: 'Add data',
                  icon: Icons.add_circle_outline_rounded,
                  onTap: () => context.push('/wallet/add'),
                ),
                _WalletShortcut(
                  width: tileWidth,
                  label: 'Request',
                  icon: Icons.south_west_rounded,
                  onTap: () => context.push('/wallet/request'),
                ),
                _WalletShortcut(
                  width: tileWidth,
                  label: 'Send',
                  icon: Icons.north_east_rounded,
                  onTap: () => context.push('/wallet/send'),
                ),
              ],
            );
          }),
          const SizedBox(height: 18),
          const GbWalletActivitySection(previewCount: 2),
        ],
      ),
    );
  }
}

class _BalanceBreakdown extends StatelessWidget {
  const _BalanceBreakdown(this.label, this.mb);
  final String label;
  final int mb;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
    child: Row(children: [
      Expanded(child: Text(label)),
      const SizedBox(width: 12),
      Text('${groupedMb(mb)} MB', style: const TextStyle(
        fontWeight: FontWeight.w600)),
    ]),
  );
}

/// Promotion records are a separate bounded read, never a replacement for
/// the authoritative MB wallet summary or a released-earnings ledger.
class _PromotionBalanceDetails extends ConsumerWidget {
  const _PromotionBalanceDetails({required this.owner});
  final GbWalletOwner owner;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projection = ref.watch(gbPromotionJournalProvider(owner));
    final journal = projection.valueOrNull;
    if (journal == null) return ListTile(
      dense: true,
      title: Text(projection.isLoading
          ? 'Checking campaign reservations and sharing earnings…'
          : 'Campaign and earnings details unavailable'),
      subtitle: projection.hasError
          ? const Text('The wallet balance above is unchanged.') : null,
      trailing: projection.hasError ? IconButton(
        tooltip: 'Retry campaign and earnings details',
        icon: const Icon(Icons.refresh),
        onPressed: () => ref.invalidate(gbPromotionJournalProvider(owner))) : null,
    );
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      const Divider(),
      _BalanceBreakdown('Campaign MB reserved · sponsor receipts',
        journal.reservedCampaignMb),
      Padding(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        child: Row(children: [
          const Expanded(child: Text('Sharing earnings · pending')),
          const SizedBox(width: 12),
          Text(journal.pendingEarnedLabel,
            style: const TextStyle(fontWeight: FontWeight.w600)),
        ])),
      const Padding(padding: EdgeInsets.symmetric(horizontal: 8),
        child: Text('Campaign reservations are a separate receipt projection, '
          'not an additional balance. Pending half-MB earnings cannot be sent '
          'or redeemed. Released rewards are not reported by this view.')),
    ]);
  }
}

class _WalletShortcut extends StatelessWidget {
  const _WalletShortcut({
    required this.width,
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final double width;
  final String label;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    return SizedBox(
      width: width,
      child: Material(
        color: colors.surfaceCard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: colors.structuralBorder),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
            child: Row(children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: colors.brand.withValues(alpha: .12),
                child: Icon(icon, size: 21,
                    color: onTap == null ? colors.textMuted : colors.brand),
              ),
              const SizedBox(width: 9),
              Expanded(
                child: Text(label, maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w700)),
              ),
              if (onTap == null)
                Icon(Icons.lock_outline_rounded,
                  color: colors.textMuted, size: 14),
            ]),
          ),
        ),
      ),
    );
  }
}
