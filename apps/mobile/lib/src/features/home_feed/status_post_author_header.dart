import 'package:flutter/material.dart';

import '../../agents/agent_directory.dart';
import '../../agents/masana_portrait_avatar.dart';
import 'feed_api.dart';

/// A post's display name is not authority to choose a portrait. Only a
/// matching, account-scoped directory identity supplies an approved photo.
class StatusPostAuthorHeader extends StatelessWidget {
  const StatusPostAuthorHeader({
    super.key,
    required this.post,
    this.agent,
    this.onProfile,
  });

  final FeedPost post;
  final AgentDirectoryEntry? agent;
  final VoidCallback? onProfile;

  @override
  Widget build(BuildContext context) {
    final canonical = !post.isHuman &&
            agent?.characterId == post.authorMasanaId
        ? agent
        : null;
    final name = canonical?.displayName ?? post.displayAuthor;
    final localTime = post.publishedAt.toLocal();
    final l10n = MaterialLocalizations.of(context);
    final date = l10n.formatMediumDate(localTime);
    final time = l10n.formatTimeOfDay(TimeOfDay.fromDateTime(localTime));
    final absoluteTime = '$date · $time';
    final ago = DateTime.now().difference(post.publishedAt);
    final ha = Localizations.localeOf(context).languageCode == 'ha';
    final relativeTime = ago.isNegative || ago.inMinutes < 1
        ? (ha ? 'Yanzu' : 'Just now')
        : ago.inMinutes < 60
            ? (ha ? 'Minti ${ago.inMinutes} da suka wuce' : '${ago.inMinutes}m ago')
            : ago.inHours < 24
                ? (ha ? 'Sa’o’i ${ago.inHours} da suka wuce' : '${ago.inHours}h ago')
                : ago.inDays < 7
                    ? (ha ? 'Kwanaki ${ago.inDays} da suka wuce' : '${ago.inDays}d ago')
                    : absoluteTime;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Semantics(
          button: onProfile != null,
          label: 'Open $name profile',
          child: InkWell(
            onTap: onProfile,
            borderRadius: BorderRadius.circular(26),
            child: post.isHuman
                ? const CircleAvatar(
                    radius: 22,
                    child: Icon(Icons.person_outline),
                  )
                : MasanaPortraitAvatar(
                    characterId: post.authorMasanaId,
                    agent: canonical,
                    displayName: name,
                    size: 44,
                  ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: InkWell(
            onTap: onProfile,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: 2),
                  Tooltip(
                    message: absoluteTime,
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Flexible(child: Text(relativeTime,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall)),
                      const SizedBox(width: 5),
                      Icon(Icons.public, size: 13,
                        color: Theme.of(context).colorScheme.onSurfaceVariant),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
