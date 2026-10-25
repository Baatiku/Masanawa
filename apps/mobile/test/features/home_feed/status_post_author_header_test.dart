import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/agents/masana_portrait_avatar.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/status_post_author_header.dart';

void main() {
  final post = FeedPost(
    id: 'public-post',
    authorMasanaId: 'immutable-masana-id',
    authorName: 'Old cached name',
    kind: 'text',
    body: 'Update',
    mediaIds: const [],
    publishedAt: DateTime.utc(2026, 10, 25),
    likeCount: 0,
    commentCount: 0,
    liked: false,
    saved: false,
  );
  const agent = AgentDirectoryEntry(
    characterId: 'immutable-masana-id',
    characterVersionId: 'version',
    displayName: 'Dr. Amina Renamed',
    roleLabel: 'Doctor',
    about: '',
    presence: AgentPresence.unknown,
    portraitKey: 'amina',
  );

  testWidgets('stable ID supplies renamed portrait, mismatched identity cannot',
      (tester) async {
    Future<void> render(AgentDirectoryEntry? supplied) async {
      await tester.pumpWidget(MaterialApp(home: Scaffold(body:
        StatusPostAuthorHeader(post: post, agent: supplied))));
      await tester.pumpAndSettle();
    }

    await render(agent);
    expect(find.text('Dr. Amina Renamed'), findsOneWidget);
    var avatar = tester.widget<MasanaPortraitAvatar>(
        find.byType(MasanaPortraitAvatar));
    expect(avatar.agent?.portraitKey, 'amina');
    expect(avatar.characterId, 'immutable-masana-id');

    await render(const AgentDirectoryEntry(
      characterId: 'different-identity',
      characterVersionId: 'version',
      displayName: 'Dr. Amina Renamed',
      roleLabel: 'Doctor',
      about: '',
      presence: AgentPresence.unknown,
      portraitKey: 'amina',
    ));
    avatar = tester.widget<MasanaPortraitAvatar>(
        find.byType(MasanaPortraitAvatar));
    expect(avatar.agent, isNull);
    expect(find.text('Old cached name'), findsOneWidget);
    await render(null);
    expect(tester.widget<MasanaPortraitAvatar>(
        find.byType(MasanaPortraitAvatar)).agent, isNull);
  });
}
