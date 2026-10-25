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
    final caption = '${post.isHuman ? 'Member' : 'Masana · AI'} · $date · $time';
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
                  Text(
                    caption,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall,
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
