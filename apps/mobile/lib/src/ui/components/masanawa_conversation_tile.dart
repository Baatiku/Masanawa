import 'package:flutter/material.dart';

import '../../theme/masanawa_theme.dart';

/// A shared, responsive Masana-only inbox row. Both saved and remotely
/// discovered conversations must have the same avatar/typography/spacing.
/// Timestamps and remote pin operations remain authoritative to their source.
class MasanawaConversationTile extends StatelessWidget {
  const MasanawaConversationTile({
    super.key,
    required this.avatar,
    required this.name,
    required this.preview,
    required this.time,
    required this.unread,
    required this.pinned,
    required this.onTap,
    this.onLongPress,
    this.onAction,
    this.actionIcon,
    this.actionTooltip,
  });

  final Widget avatar;
  final String name;
  final Widget preview;
  final String time;
  final int unread;
  final bool pinned;
  final VoidCallback onTap;
  final VoidCallback? onLongPress;
  final VoidCallback? onAction;
  final IconData? actionIcon;
  final String? actionTooltip;

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    final largeText = MediaQuery.textScalerOf(context).scale(1) > 1.3;
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(
          color: colors.structuralBorder.withValues(alpha: .55), width: .5)),
      ),
      child: ListTile(
        minTileHeight: largeText ? 88 : 76,
        minVerticalPadding: 10,
        contentPadding: const EdgeInsetsDirectional.fromSTEB(16, 0, 12, 0),
        horizontalTitleGap: 12,
        leading: avatar,
        title: Row(children: [
          if (pinned) ...[
            Icon(Icons.push_pin, size: 14, color: colors.brandStrong),
            const SizedBox(width: 5),
          ],
          Expanded(child: Text(name, maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: colors.textPrimary, fontSize: 16.5,
              fontWeight: FontWeight.w600))),
        ]),
        subtitle: Padding(
          padding: const EdgeInsetsDirectional.only(top: 3),
          child: preview,
        ),
        trailing: SizedBox(
          width: largeText ? 64 : 76,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (time.isNotEmpty)
                Text(time, maxLines: 1, overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.end,
                  style: TextStyle(color: unread > 0
                    ? colors.brandStrong : colors.textMuted,
                    fontSize: 11.5,
                    fontWeight: unread > 0
                      ? FontWeight.w600 : FontWeight.w400)),
              const SizedBox(height: 3),
              if (onAction != null)
                SizedBox(height: 28, width: 36, child: IconButton(
                  tooltip: actionTooltip,
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  icon: Icon(actionIcon ?? Icons.more_horiz,
                    size: 19, color: colors.textMuted),
                  onPressed: onAction,
                ))
              else if (unread > 0)
                Container(
                  constraints: const BoxConstraints(minWidth: 20, minHeight: 20),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(color: colors.brand,
                    borderRadius: BorderRadius.circular(20)),
                  child: Text(unread > 99 ? '99+' : '$unread',
                    style: const TextStyle(color: Colors.white,
                      fontSize: 11, fontWeight: FontWeight.w700)),
                )

            ],
          ),
        ),
        onTap: onTap,
        onLongPress: onLongPress,
      ),
    );
  }
}
