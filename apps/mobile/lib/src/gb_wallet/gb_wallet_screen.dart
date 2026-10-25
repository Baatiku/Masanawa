import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../state/session_state.dart';
import 'gb_wallet_summary.dart';

/// Deliberately not connected to historic MSNW/Credits balances. The GB ledger
/// must be authoritative before numeric balances and spend controls appear.
class GbWalletScreen extends ConsumerWidget {
  const GbWalletScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final session = ref.watch(sessionProvider);
    final owner = session is SessionSignedIn
        ? (accountId: session.user.id,
            authorizationEpoch: ref.read(sessionProvider.notifier).authorizationEpoch)
        : null;
    final balanceState = owner == null
        ? null : ref.watch(gbWalletSummaryProvider(owner));
    final balance = balanceState?.valueOrNull;
    final isLoading = balanceState?.isLoading ?? false;
    final isUnavailable = balance == null;
    return RefreshIndicator(
      onRefresh: () async {
        if (owner == null) return;
        ref.invalidate(gbWalletSummaryProvider(owner));
        try {
          await ref.read(gbWalletSummaryProvider(owner).future);
        } catch (_) {
          // The visible error remains actionable; never coerce it to 0 MB.
        }
      },
      child: ListView(
      key: const PageStorageKey<String>('gb-wallet-home'),
      padding: const EdgeInsets.all(16),
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                theme.colorScheme.surfaceContainerHigh,
                theme.colorScheme.surface,
              ],
            ),
            border: Border.all(color: theme.colorScheme.outlineVariant),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Data balance', style: theme.textTheme.labelLarge),
              const SizedBox(height: 8),
              Text(
                isUnavailable ? '— GB' : decimalGb(balance!.availableMb) + ' GB',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              if (isUnavailable)
                const Text('Exact MB balance unavailable')
              else
                Text(groupedMb(balance!.availableMb) + ' MB available',
                    style: theme.textTheme.titleMedium),
              if (isLoading)
                const LinearProgressIndicator(minHeight: 2),
              const SizedBox(height: 8),
              if (owner == null)
                const Text('Sign in to view your MB balance.')
              else if (balanceState?.hasError ?? false) ...[
                const Text('Could not verify your MB balance. Check your connection.'),
                TextButton(
                  onPressed: () => ref.invalidate(gbWalletSummaryProvider(owner)),
                  child: const Text('Retry balance'),
                ),
              ] else if (isUnavailable)
                const Text('The MB ledger is not available yet. '
                    'No historical money has been converted.')
              else ...[
                Text('Purchased: ' + groupedMb(balance!.purchasedAvailableMb) +
                     ' MB · Welcome: ' + groupedMb(balance!.welcomeAvailableMb) + ' MB'),
                if (balance!.reservedMb > 0)
                  Text('Pending reservations: ' + groupedMb(balance!.reservedMb) + ' MB'),
                if (balance!.frozen)
                  const Text('This wallet is currently restricted.'),
                const Text('Welcome MB can only pay for Masana replies and '
                  'connected call time.'),
              ],
            ],
          ),
        ),
        const SizedBox(height: 18),
        _ActionRow(
          icon: Icons.add_circle_outline,
          label: 'Add data',
          subtitle: 'View current bank recharge packages',
          onTap: () => context.push('/wallet/add'),
        ),
        _ActionRow(
          icon: Icons.send_outlined,
          label: 'Send',
          subtitle: 'Available after the GB ledger is connected',
        ),
        _ActionRow(
          icon: Icons.call_received_outlined,
          label: 'Request',
          subtitle: 'Available after the GB ledger is connected',
        ),
        _ActionRow(
          icon: Icons.sim_card_outlined,
          label: 'Redeem data',
          subtitle: 'Find verified mobile-data bundles',
          onTap: () => context.go('/home?tab=data'),
        ),
        const SizedBox(height: 22),
        Text('Recent activity', style: theme.textTheme.titleMedium),
        const SizedBox(height: 12),
        const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 28),
            child: Text('Activity becomes available when the MB ledger is ready.'),
          ),
        ),
      ],
    ),
    );
  }
}

class _ActionRow extends StatelessWidget {
  const _ActionRow({
    required this.icon,
    required this.label,
    required this.subtitle,
    this.onTap,
  });
  final IconData icon;
  final String label;
  final String subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => Card(
    margin: const EdgeInsets.only(bottom: 8),
    child: ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(subtitle),
      trailing: onTap == null
          ? const Icon(Icons.lock_outline, size: 18)
          : const Icon(Icons.chevron_right),
      enabled: onTap != null,
      onTap: onTap,
    ),
  );
}
