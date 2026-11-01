import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'gb_wallet_activity.dart';
import 'gb_receipt_actions.dart';
import 'gb_wallet_flow_components.dart';

/// Fresh journal readback only. No provider, bank or data-delivery receipt.
class GbWalletActivityDetailScreen extends ConsumerWidget {
  const GbWalletActivityDetailScreen({super.key, required this.entryId});
  final String entryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider);
    final owner = session is SessionSignedIn
        ? (
            accountId: session.user.id,
            authorizationEpoch: ref
                .read(sessionProvider.notifier)
                .authorizationEpoch,
          )
        : null;
    final request = owner == null ? null : (owner: owner, entryId: entryId);
    final state = request == null
        ? null
        : ref.watch(gbActivityDetailProvider(request));
    final item = state?.valueOrNull;
    final colors = context.masanawa;

    void returnToActivity() {
      if (context.canPop())
        context.pop();
      else
        context.go('/wallet/activity');
    }

    String signedAmount(GbActivityItem row) {
      final whole = row.amount.abs();
      String grouped(int n) => n.toString().replaceAllMapped(
        RegExp(r'\B(?=(\d{3})+(?!\d))'),
        (_) => ',',
      );
      final sign = row.amount > 0 ? '+' : '−';
      return row.unit == 'MB'
          ? '$sign${grouped(whole)} MB'
          : '$sign₦${grouped(whole ~/ 100)}.${(whole % 100).toString().padLeft(2, '0')}';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction details'),
        leading: BackButton(onPressed: returnToActivity),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 30),
        children: [
          if (owner == null)
            const Text('Sign in to view this transaction.')
          else if (item == null && state?.isLoading == true)
            const Center(
              child: Padding(
                padding: EdgeInsets.all(40),
                child: CircularProgressIndicator(),
              ),
            )
          else if (item == null)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wifi_off_rounded,
                      size: 36,
                      color: colors.textMuted,
                    ),
                    const SizedBox(height: 12),
                    const Text('Transaction unavailable',
                      textAlign: TextAlign.center),
                    const SizedBox(height: 10),
                    const Text('Check your connection and retry. '
                      'The receipt has not been verified.',
                      textAlign: TextAlign.center),
                    const SizedBox(height: 12),
                    TextButton.icon(
                      onPressed: () =>
                          ref.invalidate(gbActivityDetailProvider(request!)),
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retry transaction'),
                    ),
                  ],
                ),
              ),
            )
          else ...[
            Center(
              child: Icon(
                switch (item.kind) {
                  'redeem' => Icons.sim_card_outlined,
                  'ngn_exchange' || 'exchange' => Icons.swap_horiz_rounded,
                  'send' || 'request_pay' => Icons.send_outlined,
                  'tip' => Icons.favorite_outline_rounded,
                  'reply' => Icons.chat_bubble_outline_rounded,
                  'connected_call' => Icons.call_outlined,
                  'deposit' || 'verified_deposit' => Icons.account_balance_outlined,
                  'reversal' || 'deposit_reversal' => Icons.undo_rounded,
                  _ => item.amount > 0
                      ? Icons.south_west_rounded
                      : Icons.north_east_rounded,
                },
                size: 52,
                color: colors.brandStrong,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              signedAmount(item),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.w800,
                color: colors.textPrimary,
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: Chip(
                label: Text(
                  item.status == 'reversed'
                      ? 'Reversed journal entry'
                      : 'Posted journal entry',
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GbWalletReviewLine('What', item.title, emphasize: true),
                    if (item.details?.counterpartyLabel != null)
                      GbWalletReviewLine(
                        item.amount > 0 ? 'From' : 'To',
                        item.details!.counterpartyLabel!,
                      ),
                    GbWalletReviewLine(
                      'When',
                      '${MaterialLocalizations.of(context).formatMediumDate(item.createdAt.toLocal())} · '
                          '${TimeOfDay.fromDateTime(item.createdAt.toLocal()).format(context)}',
                    ),
                    const Divider(height: 12),
                    GbWalletReviewLine(
                      'Amount',
                      signedAmount(item),
                      emphasize: true,
                    ),
                    GbWalletReviewLine(
                      'Status',
                      item.status == 'reversed'
                          ? 'Reversed journal entry'
                          : 'Posted journal entry',
                    ),
                    if (item.kind == 'redeem')
                      const GbWalletReviewLine(
                        'Delivery',
                        'Provider delivery is separate from this wallet entry',
                      ),
                    GbWalletReviewLine(
                      'Ledger',
                      item.unit == 'MB'
                          ? 'Masanawa data (MB)'
                          : 'Nigerian naira (NGN)',
                    ),
                    if (item.unit == 'MB')
                      GbWalletReviewLine('Equivalent', item.gbLabel),
                    if (item.details?.exchangedMb != null)
                      GbWalletReviewLine(
                        'Purchased data',
                        '${groupActivityAmount(item.details!.exchangedMb!)} MB',
                      ),
                    if (item.details?.reversesOperationId != null)
                      GbWalletReviewLine(
                        'Reversal of',
                        item.details!.reversesOperationId!,
                      ),
                    if (item.details?.exchangeKobo != null)
                      GbWalletReviewLine(
                        'NGN exchanged',
                        '₦${groupActivityAmount(item.details!.exchangeKobo! ~/ 100)}.'
                            '${(item.details!.exchangeKobo! % 100).toString().padLeft(2, '0')}',
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                title: const Text('Operation reference'),
                subtitle: SelectableText(item.operationId),
                trailing: IconButton(
                  tooltip: 'Copy operation reference',
                  icon: const Icon(Icons.copy_outlined),
                  onPressed: () async {
                    await Clipboard.setData(ClipboardData(text: item.operationId));
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Reference copied')),
                      );
                    }
                  },
                ),
              ),
            ),
            Card(
              child: ExpansionTile(
                title: const Text('Technical details'),
                leading: const Icon(Icons.info_outline_rounded),
                childrenPadding: const EdgeInsets.all(14),
                children: [
                  if (item.details?.counterpartyId != null)
                    GbWalletReviewLine(
                      'Counterparty ID',
                      item.details!.counterpartyId!,
                    ),
                  if (item.details?.sourceBucket != null)
                    GbWalletReviewLine(
                      'Source bucket',
                      item.details!.sourceBucket!,
                    ),
                  if (item.details?.targetBucket != null)
                    GbWalletReviewLine(
                      'Target bucket',
                      item.details!.targetBucket!,
                    ),
                  if (item.details?.rateVersion != null)
                    GbWalletReviewLine(
                      'Rate version',
                      item.details!.rateVersion!,
                    ),
                  if (item.details?.reversesOperationId != null)
                    GbWalletReviewLine(
                      'Reverses operation',
                      item.details!.reversesOperationId!,
                    ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            GbReceiptActions(owner: owner, entryId: item.id),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Wallet posting verified; external bank settlement or '
                'mobile-network delivery must be checked separately.',
              ),
            ),
            TextButton.icon(
              onPressed: returnToActivity,
              icon: const Icon(Icons.arrow_back_rounded),
              label: const Text('Back to activity'),
            ),
          ],
        ],
      ),
    );
  }
}
