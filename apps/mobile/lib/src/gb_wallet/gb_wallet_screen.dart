import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Deliberately not connected to historic MSNW/Credits balances. The GB ledger
/// must be authoritative before numeric balances and spend controls appear.
class GbWalletScreen extends StatelessWidget {
  const GbWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
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
              Text('— GB', style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w700,
              )),
              const SizedBox(height: 4),
              const Text('Exact MB balance unavailable'),
              const SizedBox(height: 8),
              const Text('Wallet migration is in progress. No historical '
                  'credit or crypto balance has been converted.'),
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
