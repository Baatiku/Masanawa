import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'gb_wallet_summary.dart';

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
          Container(
            key: const ValueKey('gb-wallet-balance-card'),
            decoration: BoxDecoration(
              color: colors.surfaceMuted,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: colors.brand.withValues(alpha: .35)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(children: [
                  Icon(Icons.account_balance_wallet_rounded,
                      size: 20, color: colors.brand),
                  const SizedBox(width: 8),
                  Text('Data balance',
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: colors.textPrimary,
                        fontWeight: FontWeight.w600,
                      )),
                  const Spacer(),
                  if (loading)
                    SizedBox(
                      height: 16, width: 16,
                      child: CircularProgressIndicator(
                        strokeWidth: 2, color: colors.brand),
                    ),
                ]),
                const SizedBox(height: 6),
                if (balance == null)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Center(
                      child: Text(
                        loading ? 'Checking balance…' : 'Balance unavailable',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: colors.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                else ...[
                  Text(
                    '${decimalGb(balance.availableMb)} GB',
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: colors.textPrimary,
                    ),
                  ),
                  Text('${groupedMb(balance.availableMb)} MB',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colors.textMuted)),
                ],
              ],
            ),
          ),
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
                  _BalanceBreakdown('Purchased', balance.purchasedAvailableMb),
                  _BalanceBreakdown('Welcome', balance.welcomeAvailableMb),
                  if (balance.reservedMb > 0)
                    _BalanceBreakdown('Reserved', balance.reservedMb),
                  if (balance.frozen)
                    Text('Wallet restricted',
                      style: TextStyle(color: theme.colorScheme.error)),
                ],
              ),
            ),
          const SizedBox(height: 18),
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
          const SizedBox(height: 26),
          Text('Activity', style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700)),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(children: [
              Icon(Icons.receipt_long_outlined,
                size: 32, color: colors.textMuted),
              const SizedBox(height: 8),
              Text('No activity yet',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colors.textMuted)),
            ]),
          ),
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
      Text(label),
      const Spacer(),
      Text('${groupedMb(mb)} MB', style: const TextStyle(
        fontWeight: FontWeight.w600)),
    ]),
  );
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
