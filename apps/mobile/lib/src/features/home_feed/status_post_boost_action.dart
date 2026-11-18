import 'package:flutter/material.dart';

import 'feed_api.dart';

/// The same secondary, account-gated Boost affordance on Home, detail and Saved.
/// Eligibility comes from the server-owned post projection; displaying this
/// control never creates a quote or reserves MB until the separate review flow.
class StatusPostBoostAction extends StatelessWidget {
  const StatusPostBoostAction({
    super.key,
    required this.post,
    required this.enabled,
    required this.onBoost,
  });

  final FeedPost post;
  final bool enabled;
  final ValueChanged<String>? onBoost;

  @override
  Widget build(BuildContext context) {
    final boost = onBoost;
    if (!enabled || !post.boostEligible || boost == null) {
      return const SizedBox.shrink();
    }
    final ha = Localizations.localeOf(context).languageCode == 'ha';
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: OutlinedButton.icon(
        key: ValueKey('status-boost-${post.id}'),
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(0, 48),
          padding: const EdgeInsets.symmetric(horizontal: 12),
        ),
        onPressed: () => boost(post.id),
        icon: const Icon(Icons.rocket_launch_outlined, size: 16),
        label: Text(ha ? 'Ƙara yaɗawa' : 'Boost', maxLines: 1),
      ),
    );
  }
}
