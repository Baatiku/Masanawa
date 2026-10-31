import 'package:flutter/material.dart';

import 'feed_api.dart';

/// A read-only projection of server-reported Status engagement. Neither this
/// widget nor building a post may create a qualified view or a paid allocation.
class StatusPostSocialProof extends StatelessWidget {
  const StatusPostSocialProof({super.key, required this.post,
    this.onComments,this.onReactions});

  final FeedPost post;
  final VoidCallback? onComments,onReactions;

  static String compactCount(int count) {
    if (count < 1000) return '$count';
    if (count < 1000000) return _scaled(count, 1000, 'K');
    if (count < 1000000000) return _scaled(count, 1000000, 'M');
    return _scaled(count, 1000000000, 'B');
  }

  static String _scaled(int value, int unit, String suffix) {
    final tenths = (value / unit * 10).floor();
    final whole = tenths ~/ 10;
    return tenths % 10 == 0
        ? '$whole$suffix'
        : '$whole.${tenths % 10}$suffix';
  }

  @override
  Widget build(BuildContext context) {
    final ha = Localizations.localeOf(context).languageCode == 'ha';
    final style = Theme.of(context).textTheme.bodySmall?.copyWith(
      color: Theme.of(context).colorScheme.onSurfaceVariant,
    );
    final views = post.verifiedViewCount;
    final viewLabel = views == null
        ? (ha ? 'Ba a samu adadin kallo ba' : 'Views unavailable')
        : '${compactCount(views)} ${ha ? 'kallo' : views == 1 ? 'view' : 'views'}';
    final reactions = FeedPost.reactionKinds
        .where((kind) => (post.effectiveReactionCounts[kind] ?? 0) > 0)
        .map((kind) => FeedPost.reactionEmoji[kind] ?? '')
        .join(' ');
    return Wrap(
      key: ValueKey('status-social-proof-${post.id}'),
      spacing: 12,
      runSpacing: 6,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        if (post.totalReactions > 0)
          TextButton(onPressed:onReactions,style:TextButton.styleFrom(
            padding:EdgeInsets.zero,minimumSize:const Size(48,36)),
            child:Text('$reactions ${compactCount(post.totalReactions)}',style:style)),
        if (post.commentCount > 0)
          TextButton(onPressed:onComments,style:TextButton.styleFrom(
            padding:EdgeInsets.zero,minimumSize:const Size(48,36)),
            child:Text('${compactCount(post.commentCount)} ${ha ? 'sharhi' : post.commentCount == 1 ? 'comment' : 'comments'}',
              style: style)),
        if(!post.isNews)Row(mainAxisSize: MainAxisSize.min, children: [
          Icon(Icons.visibility_outlined, size: 15,
            color: Theme.of(context).colorScheme.onSurfaceVariant),
          const SizedBox(width: 4),
          Flexible(child: Text(viewLabel, style: style, softWrap: true)),
        ]),
      ],
    );
  }
}
