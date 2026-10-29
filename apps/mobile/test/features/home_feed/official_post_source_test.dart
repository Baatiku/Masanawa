import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/official_post_source_link.dart';

void main() {
  final raw = <String, dynamic>{
    'id': 'p',
    'authorMasanaId': 'official',
    'kind': 'text',
    'body': 'Exact original\n🇳🇬',
    'publishedAt': '2026-10-01T00:00:00Z',
    'source': {
      'platform': 'x',
      'url': 'https://x.com/official/status/123',
      'originalPublishedAt': '2026-10-01T00:00:00Z',
      'revision': 1,
    },
  };
  test('source survives reaction/save changes and body remains verbatim', () {
    final post = FeedPost.fromJson(
      raw,
    ).withReaction('like').withAction(saved: true);
    expect(post.body, 'Exact original\n🇳🇬');
    expect(post.source?.url.toString(), 'https://x.com/official/status/123');
    expect(post.source?.revision, 1);
  });
  test('rejects unsafe or redirect source links', () {
    for (final url in [
      'http://x.com/official/status/123',
      'https://x.com.evil.test/official/status/123',
      'https://facebook.com/l.php?u=https://evil.test',
      'https://user@x.com/official/status/123',
    ]) {
      expect(
        OfficialPostSource.parse({...(raw['source'] as Map), 'url': url}),
        isNull,
      );
    }
  });
  testWidgets('source attribution fits narrow screens at large text sizes', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: MediaQuery(
            data: const MediaQueryData(textScaler: TextScaler.linear(2)),
            child: SizedBox(
              width: 240,
              child: OfficialPostSourceLink(
                source: FeedPost.fromJson(raw).source!,
              ),
            ),
          ),
        ),
      ),
    );
    expect(find.text('Original post on X'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
