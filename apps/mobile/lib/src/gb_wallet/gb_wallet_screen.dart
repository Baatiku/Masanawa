import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import '../ui/components/masanawa_section_heading.dart';
import 'gb_balance_card.dart';
import 'gb_wallet_activity.dart';
import 'gb_wallet_activity_screen.dart';
import 'ngn_wallet.dart';
import 'gb_wallet_summary.dart';

/// Single authoritative MB wallet. The compact card never displays a
/// fabricated zero or any historical Credits/MSNW balance.
class GbWalletScreen extends ConsumerStatefulWidget {
  const GbWalletScreen({super.key});

  @override
  ConsumerState<GbWalletScreen> createState() => _GbWalletScreenState();
}

class _GbWalletScreenState extends ConsumerState<GbWalletScreen> {
  GbWalletOwner? _lastOwner;
  GbWalletBalance? _lastVerified;

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    final session = ref.watch(sessionProvider);
    final owner = session is SessionSignedIn
        ? (accountId: session.user.id,
            authorizationEpoch:
                ref.read(sessionProvider.notifier).authorizationEpoch)
        : null;
    final balanceState = owner == null
        ? null : ref.watch(gbWalletSummaryProvider(owner));
    if (owner != _lastOwner) {
      _lastOwner = owner;
      _lastVerified = null; // Never show another login's cached funds.
    }
    final failure = balanceState?.error;
    final authorizationRejected = failure is DioException &&
        const {401, 403, 410}.contains(failure.response?.statusCode);
    if (authorizationRejected) {
      _lastVerified = null; // Revoked authority is not an offline cache miss.
    }
    final fresh = authorizationRejected ? null : balanceState?.valueOrNull;
    if (fresh != null) _lastVerified = fresh;
    final balance = fresh ?? _lastVerified;
    final stale = fresh == null && balance != null;
    final loading = balanceState?.isLoading ?? false;

    Future<void> refresh() async {
      if (owner == null) return;
      ref.invalidate(gbWalletSummaryProvider(owner));
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
          GbWalletBalanceCard(balance: balance, loading: loading, compact: true,
            ownerName: session is SessionSignedIn ? session.user.name : null),
          if (stale || (balance == null && !loading))
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(children: [
                  Icon(Icons.wifi_off_rounded, size: 21, color: colors.textMuted),
                  const SizedBox(height: 5),
                  Text(stale ? 'Last verified balance · Check your connection'
                      : 'Check your connection and retry',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall),
                  TextButton.icon(
                    onPressed: owner == null ? null : refresh,
                    icon: const Icon(Icons.refresh_rounded, size: 18),
                    label: Text(owner == null ? 'Sign in' : 'Retry'),
                  ),
                ]),
              ),
            ),
          const SizedBox(height: 8),
          const MasanawaSectionHeading('Quick actions'),
          const SizedBox(height: 12),
          LayoutBuilder(builder: (context, constraints) {
            final tileWidth = (constraints.maxWidth - 12) / 2;
            return Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _WalletShortcut(
                  width: tileWidth,
                  label: 'Redeem Data',
                  icon: Icons.sim_card_outlined,
                  onTap: () => context.push('/wallet/redeem'),
                ),
                _WalletShortcut(
                  width: tileWidth,
                  label: 'Buy Data',
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
            child: LayoutBuilder(
              builder: (context, constraints) {
                final stacked =
                    width < 155 ||
                    MediaQuery.textScalerOf(context).scale(1) > 1.3;
                final avatar = CircleAvatar(
                  radius: 18,
                  backgroundColor: colors.brand.withValues(alpha: .10),
                  child: Icon(
                    icon,
                    size: 20,
                    color: onTap == null ? colors.textMuted : colors.brand,
                  ),
                );
                final text = Text(
                  label,
                  textAlign: stacked ? TextAlign.center : TextAlign.start,
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
                );
                return stacked
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [avatar, const SizedBox(height: 9), text],
                      )
                    : Row(
                        children: [
                          avatar,
                          const SizedBox(width: 9),
                          Expanded(child: text),
                        ],
                      );
              },
            ),
          ),
        ),
      ),
    );
  }
}
