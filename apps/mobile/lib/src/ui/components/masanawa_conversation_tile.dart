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
    this.actionLoading = false,
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
  final bool actionLoading;

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    final largeText = MediaQuery.textScalerOf(context).scale(1) > 1.3;
    // A two-line date plus an unread badge will not fit into the 48dp
    // trailing touch area; put chronology below the preview in that case.
    final timeBelowPreview = largeText || unread > 0;
    return Column(mainAxisSize: MainAxisSize.min, children: [
      ListTile(
        minTileHeight: largeText ? 100 : 76,
        minVerticalPadding: 10,
        contentPadding: const EdgeInsetsDirectional.fromSTEB(16, 0, 12, 0),
        horizontalTitleGap: 12,
        leading: avatar,
        title: Row(children: [
          Expanded(child: Text(name, maxLines: largeText ? 2 : 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: colors.textPrimary, fontSize: 16.5,
              fontWeight: FontWeight.w600))),
        ]),
        subtitle: Padding(
          padding: const EdgeInsetsDirectional.only(top: 3),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min, children: [
              preview,
              if (timeBelowPreview && time.isNotEmpty)
                Padding(padding: const EdgeInsets.only(top: 3),
                  child: Text(time, maxLines: 2,
                    style: TextStyle(fontSize: 11.5,
                      color: unread > 0 ? colors.brandStrong : colors.textMuted))),
            ]),
        ),
        trailing: SizedBox(
          width: onAction != null ? 112 : largeText ? 50 : 90,
          height: 48,
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (!timeBelowPreview && time.isNotEmpty)
                  Text(time, maxLines: 2, softWrap: true,
                    textAlign: TextAlign.end,
                    overflow: TextOverflow.fade,
                    style: TextStyle(color: unread > 0
                      ? colors.brandStrong : colors.textMuted,
                      fontSize: 11.5,
                      fontWeight: unread > 0
                        ? FontWeight.w600 : FontWeight.w400)),
                if (unread > 0 || (pinned && onAction == null))
                  Padding(padding: EdgeInsets.only(
                    top: !timeBelowPreview && time.isNotEmpty ? 3 : 0),
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      if (pinned && onAction == null)
                        Padding(padding: const EdgeInsetsDirectional.only(end: 5),
                          child: Icon(Icons.push_pin, size: 14,
                            color: colors.brandStrong)),
                      if (unread > 0)
                        Container(
                          constraints: const BoxConstraints(
                            minWidth: 20, minHeight: 20),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(color: colors.brand,
                            borderRadius: BorderRadius.circular(20)),
                          child: Text(unread > 99 ? '99+' : '$unread',
                            style: const TextStyle(color: Colors.white,
                              fontSize: 11, fontWeight: FontWeight.w700)),
                        ),
                    ])),
              ],
            )),
            if (onAction != null)
              SizedBox(height: 48, width: 48, child: actionLoading
                ? const Center(child: SizedBox(width: 18, height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2)))
                : IconButton(
                  tooltip: actionTooltip,
                  icon: Icon(actionIcon ?? Icons.more_horiz,
                    size: 19, color: colors.textMuted),
                  onPressed: onAction,
                )),
          ]),
        ),
        onTap: onTap,
        onLongPress: onLongPress,
      ),
      Divider(height: .5, thickness: .5, indent: 80,
        color: colors.structuralBorder.withValues(alpha: .55)),
      ],
    );
  }
}
