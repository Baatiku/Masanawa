import 'package:flutter/material.dart';

import '../../theme/masanawa_theme.dart';
import 'feed_api.dart';

/// Shared three-action Status strip. Home, original detail and historical
/// Saved supply their own authenticated operations and the same semantics.
/// Tip remains separate; sharing never creates a paid referral.
class StatusPostActionRow extends StatelessWidget {
  const StatusPostActionRow({
    super.key,
    required this.post,
    this.onLike,
    this.onComment,
    this.onShare,
    this.onLongLike,
    this.shareEarnEnabled = false,
    this.pending = false,
  });

  final FeedPost post;
  final VoidCallback? onLike, onComment, onShare;
  final ValueChanged<BuildContext>? onLongLike;
  final bool shareEarnEnabled, pending;

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    final ha = Localizations.localeOf(context).languageCode == 'ha';
    String t(String en, String haus) => ha ? haus : en;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: LayoutBuilder(builder: (context, constraints) {
        final compact = constraints.maxWidth < 290 ||
            MediaQuery.textScalerOf(context).scale(14) > 20;
        Widget button(String label, IconData icon, VoidCallback? press,
            {String? tooltip}) => Expanded(
          child: Tooltip(message: tooltip ?? label,
            child: TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: colors.textMuted,
                padding: const EdgeInsets.symmetric(horizontal: 2),
                minimumSize: const Size(0, 48),
              ),
              onPressed: pending ? null : press,
              icon: Icon(icon, size: 20),
              label: compact ? const SizedBox.shrink() : Text(label,
                maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
          ),
        );
        return Row(children: [
          Builder(builder: (anchor) => Expanded(
            child: GestureDetector(
              onLongPress: pending || onLongLike == null
                  ? null : () => onLongLike!(anchor),
              child: Tooltip(
                message: t('Like', 'So'),
                triggerMode: TooltipTriggerMode.manual,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: post.currentReaction == null
                        ? colors.textMuted : colors.brandStrong,
                    backgroundColor: post.currentReaction == null
                        ? null : colors.surfaceMuted,
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    minimumSize: const Size(0, 48),
                  ),
                  onPressed: pending ? null : onLike,
                  icon: Icon(post.currentReaction == 'like'
                      ? Icons.thumb_up_rounded
                      : Icons.thumb_up_outlined, size: 20),
                  label: compact ? const SizedBox.shrink() : Text(
                    t('Like', 'So'), maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          )),
          button(t('Comment', 'Sharhi'), Icons.mode_comment_outlined,
            onComment),
          button(t('Share', 'Raba'), Icons.share_outlined, onShare),
        ]);
      }),
    );
  }
}
