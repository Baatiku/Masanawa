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
  test('signed media alt parser allows only bounded reviewed copy',(){
    final now=DateTime.now().add(const Duration(minutes:2)).toUtc().toIso8601String();
    final base={'mediaId':'media_abcdefgh','kind':'image',
      'url':'https://media.example.test/signed','expiresAt':now};
    expect(FeedMediaGrant.fromJson({...base,
      'altText':'A reviewed portrait with a blue headscarf.'}).altText,
      'A reviewed portrait with a blue headscarf.');
    expect(FeedMediaGrant.fromJson({...base,'altText':'short'}).altText,'short');
    expect(FeedMediaGrant.fromJson({...base,'altText':String.fromCharCodes(
      List<int>.filled(500,65))}).altText,isNull);
    expect(FeedMediaGrant.fromJson({...base,'altText':null}).altText,isNull);
    expect(FeedMediaGrant.fromJson({...base,'kind':'audio',
      'altText':'Reviewed image description not applicable to audio.'}).altText,isNull);
  });
  testWidgets('approved image caption is displayed and read aloud without guesswork',
      (tester) async {
    final api=_ApprovedAltMediaApi();
    await tester.pumpWidget(MaterialApp(home:Scaffold(body:FeedInlineMediaCard(
      api:api,accountKey:'viewer',postId:'post_authorized',
      mediaId:'media_abcdefgh',mediaCount:2,
      renderer:(_)=>const Text('Scoped approved image')))));
    await tester.pumpAndSettle();
    expect(find.text('A reviewed portrait of the Masana at a desk.'),findsOneWidget);
    // Inspect the specific semantics node: Flutter may merge its caption
    // Text as a second newline-delimited utterance at the root.
    expect(find.byWidgetPredicate((widget)=>widget is Semantics &&
      widget.properties.label?.contains(
        'Image 1 of 2. A reviewed portrait of the Masana at a desk.')==true),
      findsOneWidget);
  });
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

  testWidgets('a displayed signed image is removed when its grant expires',
      (tester) async {
    final api = _ShortMediaApi();
    await tester.pumpWidget(MaterialApp(home: Scaffold(
      body: FeedInlineMediaCard(
        api: api,
        accountKey: 'signed-in',
        postId: 'post1',
        mediaId: 'media1',
        mediaCount: 1,
        renderer: (_) => const Text('Authorized temporary image'),
      ),
    )));
    await tester.pump();
    await tester.pump();
    expect(find.text('Authorized temporary image'), findsOneWidget);
    await tester.pump(const Duration(seconds: 3));
    expect(find.text('Authorized temporary image'), findsNothing);
    expect(find.text('Preview expired · retry preview'), findsOneWidget);
    expect(api.requests, 1);
  });
}

class _ShortMediaApi implements FeedMediaApi {
  int requests = 0;
  @override
  Future<FeedMediaGrant> getGrant(String postId, String mediaId) async {
    requests++;
    return FeedMediaGrant(
      mediaId: mediaId,
      kind: 'image',
      url: Uri.parse('https://example.test/temporary-grant'),
      expiresAt: DateTime.now().add(const Duration(seconds: 2)),
    );
  }
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

class _ApprovedAltMediaApi implements FeedMediaApi {
  @override Future<FeedMediaGrant> getGrant(String postId,String mediaId) async=>
    FeedMediaGrant(mediaId:mediaId,kind:'image',
      url:Uri.parse('https://media.example.test/approved'),
      expiresAt:DateTime.now().add(const Duration(minutes:1)),
      altText:'A reviewed portrait of the Masana at a desk.');
}
