import 'package:flutter/material.dart';

import 'feed_api.dart';

/// One bounded, anchored seven-reaction selector for the Home card and its
/// authenticated detail/Saved projections. Selection does not write: each
/// surface must still perform its own owner-bound authoritative mutation.
Future<String?> showStatusReactionPicker(
  BuildContext context,
  BuildContext anchor,
) async {
  final overlay = Overlay.of(context).context.findRenderObject() as RenderBox?;
  final target = anchor.findRenderObject() as RenderBox?;
  if (overlay == null || target == null) return null;
  final origin = target.localToGlobal(Offset.zero, ancestor: overlay);
  final rect = Rect.fromLTWH(
    origin.dx, origin.dy, target.size.width, target.size.height,
  );
  return showMenu<String>(
    context: context,
    position: RelativeRect.fromRect(rect, Offset.zero & overlay.size),
    items: [
      PopupMenuItem<String>(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Builder(builder: (menuContext) => SizedBox(
          width: 260,
          child: Wrap(spacing: 4, runSpacing: 4, children: [
            for (final kind in FeedPost.reactionKinds)
              SizedBox(
                width: 60,
                height: 58,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                  ),
                  onPressed: () => Navigator.pop(menuContext, kind),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(FeedPost.reactionEmoji[kind]!,
                          style: const TextStyle(fontSize: 23)),
                      Text(kind[0].toUpperCase() + kind.substring(1),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 11)),
                    ],
                  ),
                ),
              ),
          ]),
        )),
      ),
    ],
  );
}
