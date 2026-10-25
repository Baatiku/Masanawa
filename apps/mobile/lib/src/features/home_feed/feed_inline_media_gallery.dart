import 'package:flutter/material.dart';

import 'feed_inline_media_card.dart';
import 'feed_media_api.dart';

/// A bounded mosaic of separately authorized Status originals. Only the first
/// four images are requested in the scrolling feed; all originals remain
/// accessible through the existing account-fenced media viewer.
class FeedInlineMediaGallery extends StatelessWidget {
  const FeedInlineMediaGallery({
    super.key,
    required this.api,
    required this.accountKey,
    required this.postId,
    required this.mediaIds,
    this.onOpen,
    this.renderer,
  });

  final FeedMediaApi api;
  final String accountKey, postId;
  final List<String> mediaIds;
  final ValueChanged<String>? onOpen;
  final Widget Function(FeedMediaGrant)? renderer;

  @override
  Widget build(BuildContext context) {
    if (mediaIds.isEmpty) return const SizedBox.shrink();

    Widget tile(int index, double height, {bool showRemaining = false}) {
      final id = mediaIds[index];
      final remaining = mediaIds.length - 4;
      return Stack(children: [
        SizedBox(
          height: height,
          width: double.infinity,
          child: FeedInlineMediaCard(
            key: ValueKey('status-gallery-$accountKey-$postId-$id'),
            api: api,
            accountKey: accountKey,
            postId: postId,
            mediaId: id,
            mediaCount: mediaIds.length,
            imageOrdinal: index + 1,
            tileMode: mediaIds.length > 1,
            showViewAll: false,
            previewHeight: height,
            onOpen: onOpen == null ? null : () => onOpen!(id),
            renderer: renderer,
          ),
        ),
        if (showRemaining && remaining > 0)
          Positioned(
            bottom: 8,
            right: 8,
            child: IgnorePointer(child:DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: Text('+$remaining more', style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w700)),
              ),
            )),
          ),
      ]);
    }

    Widget pair(int left, int right, double height, {bool showRemaining = false}) =>
        Row(children: [
          Expanded(child: tile(left, height)),
          const SizedBox(width: 4),
          Expanded(child: tile(right, height, showRemaining: showRemaining)),
        ]);

    final count = mediaIds.length;
    final mosaic = switch (count) {
      1 => tile(0, 220),
      2 => pair(0, 1, 190),
      3 => Column(children: [
          tile(0, 188),
          const SizedBox(height: 4),
          pair(1, 2, 145),
        ]),
      _ => Column(children: [
          pair(0, 1, 145),
          const SizedBox(height: 4),
          pair(2, 3, 145, showRemaining: true),
        ]),
    };

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      ClipRRect(borderRadius: BorderRadius.circular(10), child: mosaic),
      if (count > 1)
        Align(alignment: AlignmentDirectional.centerEnd, child: TextButton(
          onPressed: onOpen == null ? null : () => onOpen!(mediaIds.first),
          child: Text('View all $count images'),
        )),
    ]);
  }
}
