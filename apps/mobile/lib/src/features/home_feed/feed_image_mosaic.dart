import 'package:flutter/material.dart';

import 'feed_inline_media_card.dart';
import 'feed_media_api.dart';

/// A bounded, per-image-authorized mosaic. The viewer receives the complete
/// media list via its existing route, but the feed grants at most four previews.
class FeedImageMosaic extends StatelessWidget {
  const FeedImageMosaic({
    super.key,
    required this.api,
    required this.accountKey,
    required this.postId,
    required this.mediaIds,
    this.onOpen,
    this.renderer,
  }) : assert(mediaIds.length > 1);

  final FeedMediaApi api;
  final String accountKey, postId;
  final List<String> mediaIds;
  final ValueChanged<String>? onOpen;
  final Widget Function(FeedMediaGrant)? renderer;

  @override
  Widget build(BuildContext context) {
    final visible = mediaIds.length > 4 ? 4 : mediaIds.length;
    final ha = Localizations.localeOf(context).languageCode == 'ha';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            childAspectRatio: 1.42,
          ),
          itemCount: visible,
          itemBuilder: (context, index) => FeedInlineMediaCard(
            key: ValueKey('status-media-$accountKey-$postId-${mediaIds[index]}'),
            api: api,
            accountKey: accountKey,
            postId: postId,
            mediaId: mediaIds[index],
            mediaCount: mediaIds.length,
            imageIndex: index + 1,
            tile: true,
            remainingCount: index == 3 ? mediaIds.length - 4 : 0,
            onOpen: onOpen == null ? null : () => onOpen!(mediaIds[index]),
            renderer: renderer,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: TextButton(
            onPressed: onOpen == null ? null : () => onOpen!(mediaIds.first),
            child: Text(ha
                ? 'Duba hotuna ${mediaIds.length}'
                : 'View all ${mediaIds.length} images'),
          ),
        ),
      ]),
    );
  }
}
