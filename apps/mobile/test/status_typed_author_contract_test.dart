import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/feed_screen.dart';

Map<String, dynamic> post({Object? author, String? legacy}) => {
  'id': '381026c2-9d56-47b1-b73d-1784e24e41e2',
  if (author != null) 'author': author,
  if (legacy != null) 'authorMasanaId': legacy,
  'kind': 'text',
  'body': 'Social update',
  'media': <String>[],
  'publishedAt': '2026-10-22T09:00:00Z',
  'likeCount': 2,
  'commentCount': 4,
  'viewerLiked': false,
  'viewerSaved': false,
};

class _Feed implements FeedApi {
  _Feed(this.item);
  final FeedPost item;
  @override
  Future<FeedPage> list({required String mode, String? cursor}) async =>
      FeedPage([item], null);
  @override
  Future<void> like(String id, bool enabled) async {}
  @override
  Future<void> save(String id, bool enabled) async {}
  @override
  Future<void> comment(String id, String body, String key) async {}
  @override
  Future<List<FeedComment>> comments(String id) async => [];
}

void main() {
  test(
    'legacy Masana JSON stays readable and never becomes a human account',
    () {
      final p = FeedPost.fromJson(post(legacy: 'character_amina'));
      expect(p.authorType, 'masana');
      expect(p.authorMasanaId, 'character_amina');
      expect(p.displayAuthor, 'character_amina');
      expect(p.withAction(liked: true).authorMasanaId, 'character_amina');
      expect(p.withAction(liked: true).likeCount, 3);
    },
  );
  test('typed human identity never uses authorMasanaId even if supplied', () {
    final p = FeedPost.fromJson(
      post(
        legacy: 'legacy_wrong',
        author: {
          'type': 'human',
          'id': 'person_43',
          'handle': 'zainab',
          'displayName': 'Zainab A.',
        },
      ),
    );
    expect(p.isHuman, isTrue);
    expect(p.authorMasanaId, isEmpty);
    expect(p.authorId, 'person_43');
    expect(p.authorHandle, 'zainab');
    expect(p.displayAuthor, 'Zainab A.');
    expect(p.withAction(saved: true).authorHandle, 'zainab');
  });
  test(
    'invalid author kinds, missing IDs and unsafe profile handles fail closed',
    () {
      expect(
        () =>
            FeedPost.fromJson(post(author: {'type': 'group', 'id': 'group_1'})),
        throwsFormatException,
      );
      expect(
        () => FeedPost.fromJson(post(author: {'type': 'human', 'handle': 'a'})),
        throwsFormatException,
      );
      expect(
        () => FeedPost.fromJson(
          post(author: {'type': 'human', 'id': 'u1', 'handle': '../other'}),
        ),
        throwsFormatException,
      );
    },
  );
  test('typed comment author projected only from the signed response', () {
    final c = FeedComment.fromJson({
      'id': 'comment1',
      'body': 'Great work',
      'state': 'visible',
      'createdAt': '2026-10-22T09:00:00Z',
      'author': {
        'type': 'human',
        'id': 'u9',
        'handle': 'musa',
        'displayName': 'Musa B.',
      },
    });
    expect(c.authorName, 'Musa B.');
    expect(c.authorHandle, 'musa');
    expect(
      () => FeedComment.fromJson({
        'id': 'comment2',
        'body': 'test',
        'state': 'visible',
        'createdAt': '2026-10-22T09:00:00Z',
        'author': {'type': 'human', 'handle': '@not-route'},
      }),
      throwsFormatException,
    );
  });
  testWidgets(
    'human card goes only to human profile, Masana goes only to agent',
    (tester) async {
      String? openedHuman, openedMasana;
      Future<void> show(FeedPost p, String account) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: MasanaFeedScreen(
                accountKey: account,
                api: _Feed(p),
                onHumanProfile: (handle) => openedHuman = handle,
                onMasanaProfile: (id) => openedMasana = id,
              ),
            ),
          ),
        );
        await tester.pumpAndSettle();
      }

      await show(
        FeedPost.fromJson(
          post(
            author: {
              'type': 'human',
              'id': 'u1',
              'handle': 'zainab',
              'displayName': 'Zainab A.',
            },
          ),
        ),
        'fan_a',
      );
      expect(find.text('Zainab A.'), findsOneWidget);
      expect(find.text('Member'), findsOneWidget);
      await tester.tap(find.text('Zainab A.'));
      expect(openedHuman, 'zainab');
      expect(openedMasana, isNull);
      await show(FeedPost.fromJson(post(legacy: 'masana_1')), 'fan_b');
      await tester.tap(find.text('masana_1'));
      expect(openedMasana, 'masana_1');
    },
  );
}
