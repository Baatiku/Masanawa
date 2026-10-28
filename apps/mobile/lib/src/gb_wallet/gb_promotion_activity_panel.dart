import 'package:flutter/material.dart';

import 'gb_promotion_journal.dart';
import 'gb_wallet_summary.dart';

/// A review-only filter over the *bounded* private promotion history. This is
/// deliberately separate from posted MB/NGN Activity and its wallet totals.
class GbPromotionActivityPanel extends StatefulWidget {
  const GbPromotionActivityPanel({super.key, required this.journal});
  final GbPromotionJournal journal;

  @override
  State<GbPromotionActivityPanel> createState() => _GbPromotionActivityPanelState();
}

enum _PromotionHistoryFilter { all, promotions, boosts, earnings, releases }

class _GbPromotionActivityPanelState extends State<GbPromotionActivityPanel> {
  _PromotionHistoryFilter _filter = _PromotionHistoryFilter.all;

  @override
  Widget build(BuildContext context) {
    final journal = widget.journal;
    final campaigns = journal.campaigns.where((campaign) => switch (_filter) {
      _PromotionHistoryFilter.all => true,
      _PromotionHistoryFilter.promotions => !campaign.isBoost,
      _PromotionHistoryFilter.boosts => campaign.isBoost,
      _PromotionHistoryFilter.earnings => false,
      _PromotionHistoryFilter.releases => campaign.refundedUnusedMb > 0,
    }).toList(growable: false);
    final earnings = _filter == _PromotionHistoryFilter.all ||
        _filter == _PromotionHistoryFilter.earnings
        ? journal.earnings : <GbPromotionPendingEarning>[];
    final rows = campaigns.length + earnings.length;

    return Card(child: Padding(padding: const EdgeInsets.all(12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text('Promotions & Share earnings',
          style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 4),
        const Text('Review-only campaign activity. Reserved MB is not spent; '
          'pending referral earnings are not redeemable or included in your balance.'),
        ListTile(key: const ValueKey('wallet-pending-sharing-total'),
          contentPadding: EdgeInsets.zero,
          title: const Text('Sharing earnings · pending shown'),
          subtitle: const Text('Across up to 100 private earning groups. Not released or redeemable.'),
          trailing: Text(journal.pendingEarnedLabel)),
        ListTile(key: const ValueKey('wallet-campaign-reserved-total'),
          contentPadding: EdgeInsets.zero,
          title: const Text('Campaign budget reserved · shown'),
          subtitle: const Text('From up to 100 recent sponsor receipts; not a posted payment.'),
          trailing: Text('${groupedMb(journal.reservedCampaignMb)} MB')),
        const SizedBox(height: 8),
        Wrap(key: const ValueKey('promotion-history-filters'),
          spacing: 6, runSpacing: 0, children: [
          for (final choice in _PromotionHistoryFilter.values)
            ChoiceChip(
              key: ValueKey('promotion-filter-${choice.name}'),
              label: Text(switch (choice) {
                _PromotionHistoryFilter.all => 'All',
                _PromotionHistoryFilter.promotions => 'Promotions',
                _PromotionHistoryFilter.boosts => 'Boosts',
                _PromotionHistoryFilter.earnings => 'Earnings',
                _PromotionHistoryFilter.releases => 'Released holds',
              }),
              selected: _filter == choice,
              onSelected: (_) => setState(() => _filter = choice),
            ),
        ]),
        if (rows == 0)
          const ListTile(title: Text('No matching entries in the loaded history.'),
            subtitle: Text('Change the filter to view another category.')),
        for (final campaign in campaigns.take(20))
          ListTile(
            key: ValueKey('wallet-promotion-${campaign.id}'),
            contentPadding: EdgeInsets.zero,
            leading: Icon(campaign.isBoost
                ? Icons.rocket_launch_outlined : Icons.campaign_outlined),
            title: Text('${campaign.isBoost ? 'Boost' : 'Promotion'} · ${campaign.state}'),
            subtitle: Text('${campaign.deliveredViews}/${campaign.targetViews} qualified views · '
              '${groupedMb(campaign.spentMb)} MB actually spent\n'
              '${groupedMb(campaign.reservedMb)} MB reserved · '
              '${groupedMb(campaign.refundedUnusedMb)} MB unused released\n'
              '${campaign.hasKnownOneMbRate
                ? 'Original price: 1 MB per qualified view · up to ${campaign.targetViews} views.'
                : 'Original price version: ${campaign.priceVersion ?? 'unavailable'}; check receipt.'}\n'
              '${campaign.hasKnownOneMbRate
                ? 'Eligible referred views allocate 0.5 MB pending to the sharer, subject to review.'
                : 'Referral terms require the original receipt.'}\n'
              'Campaign: ${campaign.id}'),
            isThreeLine: true,
          ),
        for (final earning in earnings.take(20))
          ListTile(key: ValueKey('wallet-referral-${earning.postId}'),
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.hourglass_bottom_outlined),
            title: Text('${earning.views} referred qualified views'),
            subtitle: Text('${earning.pendingMbLabel}\nPost: ${earning.postId}'),
            isThreeLine: true),
        if (campaigns.length > 20 || earnings.length > 20)
          Text('Showing the first 20 matching rows in each category. '
            'More details remain available in Home → My promotions.',
            style: Theme.of(context).textTheme.bodySmall),
      ])));
  }
}
