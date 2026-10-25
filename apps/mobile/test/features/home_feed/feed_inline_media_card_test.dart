import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_inline_media_card.dart';
import 'package:masanawa/src/features/home_feed/feed_media_api.dart';

class RetryMediaApi implements FeedMediaApi {
  int requests = 0;
  String? lastPost, lastMedia;

  @override
  Future<FeedMediaGrant> getGrant(String postId, String mediaId) async {
    requests++;
    lastPost = postId;
    lastMedia = mediaId;
    if (requests == 1) throw StateError('temporary grant denial');
    return FeedMediaGrant(
      mediaId: mediaId,
      kind: 'image',
      url: Uri.parse('https://example.test/approved?grant=temporary'),
      expiresAt: DateTime.now().add(const Duration(minutes: 1)),
    );
  }
}

void main() {
  testWidgets('unauthorized media never spins forever and later scoped retry recovers',
      (tester) async {
    final api = RetryMediaApi();
    Widget frame(String owner) => MaterialApp(home: Scaffold(
      body: FeedInlineMediaCard(api: api, accountKey: owner,
        postId: 'post-authorized', mediaId: 'media-authorized',
        mediaCount: 1,
        renderer: (grant) => Text('Approved: ${grant.mediaId}'))));
    await tester.pumpWidget(frame(''));
    await tester.pumpAndSettle();
    expect(find.byType(CircularProgressIndicator), findsNothing);
    expect(find.text('Image unavailable · retry preview'), findsOneWidget);
    await tester.tap(find.text('Image unavailable · retry preview'));
    await tester.pumpAndSettle();
    expect(api.requests, 0);
    await tester.pumpWidget(frame('new-owner'));
    await tester.pumpAndSettle();
    expect(api.requests, 1);
    expect(find.text('Image unavailable · retry preview'), findsOneWidget);
    await tester.tap(find.text('Image unavailable · retry preview'));
    await tester.pumpAndSettle();
    expect(api.requests, 2);
    expect(find.text('Approved: media-authorized'), findsOneWidget);
  });

  testWidgets('grant retry only reopens the approved preview, not its viewer',
      (tester) async {
    final api = RetryMediaApi();
    var opened = 0;
    await tester.pumpWidget(MaterialApp(home: Scaffold(
      body: FeedInlineMediaCard(
        api: api,
        accountKey: 'signed-in',
        postId: 'post-authorized',
        mediaId: 'media-authorized',
        mediaCount: 3,
        onOpen: () => opened++,
        renderer: (grant) => Text('Approved: ${grant.mediaId}'),
      ),
    )));
    await tester.pumpAndSettle();
    expect(find.text('Image unavailable · retry preview'), findsOneWidget);
    expect(api.requests, 1);
    await tester.tap(find.text('Image unavailable · retry preview'));
    await tester.pumpAndSettle();
    expect(opened, 0);
    expect(api.requests, 2);
    expect(api.lastPost, 'post-authorized');
    expect(api.lastMedia, 'media-authorized');
    expect(find.text('Approved: media-authorized'), findsOneWidget);
    await tester.tap(find.text('View all 3 images'));
    await tester.pump();
    expect(opened, 1);
  });

  testWidgets('invalid expired grant cannot be shown as an approved preview',
      (tester) async {
    final api = _ExpiredMediaApi();
    await tester.pumpWidget(MaterialApp(home: Scaffold(
      body: FeedInlineMediaCard(
        api: api,
        accountKey: 'signed-in',
        postId: 'post1',
        mediaId: 'media1',
        mediaCount: 1,
        renderer: (_) => const Text('Never show expired image'),
      ),
    )));
    await tester.pumpAndSettle();
    expect(find.text('Image unavailable · retry preview'), findsOneWidget);
    expect(find.text('Never show expired image'), findsNothing);
  });
}

class _ExpiredMediaApi implements FeedMediaApi {
  @override
  Future<FeedMediaGrant> getGrant(String postId, String mediaId) async =>
      FeedMediaGrant(
        mediaId: mediaId,
        kind: 'image',
        url: Uri.parse('https://example.test/expired'),
        expiresAt: DateTime.now().subtract(const Duration(seconds: 1)),
      );
}
