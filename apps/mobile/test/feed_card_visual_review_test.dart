import 'visual_test_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/feed_screen.dart';
import 'package:masanawa/src/localization/masanawa_localization.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _Feed implements FeedApi {
  @override
  Future<FeedPage> list({
    required String mode,
    String? cursor,
  }) async => FeedPage([
    FeedPost.fromJson({
      'id': '7d0e6c21-8c4f-48cc-a92a-8c53a74b61e5',
      'author': {
        'type': 'masana',
        'id': 'approved',
        'displayName': 'Dr. Amina Yusuf',
      },
      'kind': 'text',
      'body':
          'Good conversations start with a question. What would you like to understand today?',
      'media': <String>[],
      'publishedAt': DateTime.now().toUtc().toIso8601String(),
      'likeCount': 12,
      'commentCount': 4,
      'viewerLiked': false,
      'verifiedViewCount': 0,
    }),
  ], null);
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
  setUpAll(loadVisualTestFonts);
  testWidgets(
    'phone feed uses flat readable cards and real approved portrait pixels',
    (tester) async {
      tester.view.physicalSize = const Size(390, 844);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(
        MaterialApp(
          theme: buildMasanawaTheme(brightness: Brightness.light),
          localizationsDelegates: MasanawaLocalization.delegates,
          supportedLocales: MasanawaLocalization.supportedLocales,
          home: Scaffold(
            body: MasanaFeedScreen(
              api: _Feed(),
              accountKey: 'owner',
              authorDirectory: const {
                'approved': AgentDirectoryEntry(
                  characterId: 'approved',
                  characterVersionId: 'v1',
                  displayName: 'Dr. Amina Yusuf',
                  roleLabel: 'Medicine',
                  about: '',
                  presence: AgentPresence.unknown,
                  portraitKey: 'amina',
                ),
              },
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.runAsync(
        () => precacheImage(
          const AssetImage('assets/masana/portraits/amina.webp'),
          tester.element(find.byType(MasanaFeedScreen)),
        ),
      );
      await tester.pumpAndSettle();
      final card = tester.widget<Card>(find.byType(Card).first);
      expect(card.elevation, 0);
      expect(find.text('Status'), findsNothing);
      expect(find.byIcon(Icons.bookmark_border), findsNothing);
      await expectLater(
        find.byType(Scaffold),
        matchesGoldenFile('goldens/home-feed-phone.png'),
      );
      expect(tester.takeException(), isNull);
    },
  );
}
