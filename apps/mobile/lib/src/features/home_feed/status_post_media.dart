import 'package:flutter/material.dart';

import 'feed_api.dart';
import 'feed_image_mosaic.dart';
import 'feed_inline_media_card.dart';
import 'feed_media_api.dart';

/// One account-scoped media presentation shared by Status feed and detail.
/// Only a fresh per-post grant can show an image; never cache grant URLs.
class StatusPostMedia extends StatelessWidget {
  const StatusPostMedia({
    super.key,
    required this.post,
    required this.accountKey,
    this.mediaApi,
    this.renderer,
    this.onOpen,
    this.audioPlaybackAvailable = false,
  });

  final FeedPost post;
  final String accountKey;
  final FeedMediaApi? mediaApi;
  final Widget Function(FeedMediaGrant)? renderer;
  final ValueChanged<String>? onOpen;
  final bool audioPlaybackAvailable;

  @override
  Widget build(BuildContext context) {
    final ids = post.mediaIds;
    if (ids.isEmpty) return const SizedBox.shrink();
    if (post.kind == 'image' && mediaApi != null) {
      if (ids.length == 1) {
        return FeedInlineMediaCard(
          key: ValueKey('status-inline-$accountKey-${post.id}'),
          api: mediaApi!,
          accountKey: accountKey,
          postId: post.id,
          mediaId: ids.first,
          mediaCount: 1,
          onOpen: onOpen == null ? null : () => onOpen!(ids.first),
          renderer: renderer,
        );
      }
      return FeedImageMosaic(
        key: ValueKey('status-mosaic-$accountKey-${post.id}'),
        api: mediaApi!,
        accountKey: accountKey,
        postId: post.id,
        mediaIds: ids,
        onOpen: onOpen,
        renderer: renderer,
      );
    }
    // Audio has no visual thumbnail grant. Keep its player user-initiated and
    // disabled until the account-bound playback route is installed.
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (var index = 0; index < ids.length; index++)
            ActionChip(
              avatar: Icon(post.kind == 'audio'
                  ? Icons.play_circle_outline
                  : Icons.image_outlined),
              label: Text(post.kind == 'audio'
                  ? 'Play audio ${index + 1} of ${ids.length}'
                  : 'View image ${index + 1} of ${ids.length}'),
              onPressed: onOpen == null ||
                      (post.kind == 'audio' && !audioPlaybackAvailable)
                  ? null
                  : () => onOpen!(ids[index]),
            ),
        ],
      ),
    );
  }
}
