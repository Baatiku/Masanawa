import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/masanawa_theme.dart';
import 'gb_wallet_summary.dart';
import 'ngn_funding_card_details.dart';

/// The same server-authoritative available-MB display on Wallet and Send.
/// Restricted welcome and reserved MB never enter the Sendable figure.
class GbWalletBalanceCard extends StatelessWidget {
  const GbWalletBalanceCard({
    super.key,
    required this.balance,
    required this.loading,
    this.showSendable = false,
    this.compact = false,
  });

  final GbWalletBalance? balance;
  final bool loading;
  final bool showSendable;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    final theme = Theme.of(context);
    final addData = TextButton.icon(
      key: const ValueKey('wallet-card-add-data'),
      onPressed: () => context.push('/wallet/add'),
      icon: const Icon(Icons.add_rounded, size: 18),
      label: const Text('Add data'),
      style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
    );
    final largeText = MediaQuery.textScalerOf(context).scale(1) >= 1.5;
    return Container(
      key: const ValueKey('gb-wallet-balance-card'),
      decoration: BoxDecoration(
        color: colors.surfaceMuted,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: colors.brand.withValues(alpha: .35)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: compact ? 9 : 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(
                Icons.account_balance_wallet_rounded,
                size: 20,
                color: colors.brand,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Data balance',
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: colors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              if (loading)
                SizedBox(
                  height: 16,
                  width: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: colors.brand,
                  ),
                ),
              if (!largeText) ...[const SizedBox(width: 8), addData],
            ],
          ),
          if (largeText)
            Align(alignment: AlignmentDirectional.centerEnd, child: addData),
          SizedBox(height: compact ? 2 : 6),
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
            if (compact)
              Text(
                '${decimalGb(balance!.availableMb)} GB  ·  ${groupedMb(balance!.availableMb)} MB',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800, color: colors.textPrimary),
              )
            else ...[
              Text(
                '${decimalGb(balance!.availableMb)} GB',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w800, color: colors.textPrimary),
              ),
              Text(
                '${groupedMb(balance!.availableMb)} MB',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colors.textMuted,
                ),
              ),
            ],
            if (showSendable) ...[
              const SizedBox(height: 8),
              Text(
                'Sendable: ${groupedMb(balance!.frozen ? 0 : balance!.purchasedAvailableMb)} MB purchased',
                style: theme.textTheme.labelLarge?.copyWith(
                  color: colors.textPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              if (balance!.welcomeAvailableMb > 0 || balance!.reservedMb > 0)
                Text(
                  'Welcome and reserved MB cannot be sent',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colors.textMuted,
                  ),
                ),
              if (balance!.frozen)
                Text(
                  'Wallet restricted',
                  style: TextStyle(color: theme.colorScheme.error),
                ),
            ],
          ],
          NgnFundingCardDetails(compact: compact),
        ],
      ),
    );
  }
}
