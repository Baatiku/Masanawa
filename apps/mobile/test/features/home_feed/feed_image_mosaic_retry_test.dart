import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_image_mosaic.dart';
import 'package:masanawa/src/features/home_feed/feed_media_api.dart';

class _FailSecondImageOnce implements FeedMediaApi {
  final calls = <String>[];

  @override
  Future<FeedMediaGrant> getGrant(String postId, String mediaId) async {
    expect(postId, 'approved-post');
    calls.add(mediaId);
    if (mediaId == 'second' && calls.where((id) => id == mediaId).length == 1) {
      throw StateError('Temporary image denial');
    }
    return FeedMediaGrant(
      mediaId: mediaId,
      kind: 'image',
      url: Uri.parse('https://example.test/approved/$mediaId?temporary=1'),
      expiresAt: DateTime.now().add(const Duration(minutes: 1)),
    );
  }
}

void main() {
  testWidgets('retrying one denied mosaic tile does not open a post or other original',
      (tester) async {
    final api = _FailSecondImageOnce();
    final opened = <String>[];
    await tester.pumpWidget(MaterialApp(home: Scaffold(
      body: SingleChildScrollView(child: FeedImageMosaic(
        api: api,
        accountKey: 'account-one',
        postId: 'approved-post',
        mediaIds: const ['first', 'second', 'third'],
        onOpen: opened.add,
        renderer: (grant) => Center(child: Text('Approved ${grant.mediaId}')),
      )),
    )));
    await tester.pumpAndSettle();

    expect(api.calls.toSet(), {'first', 'second', 'third'});
    expect(find.text('Approved first'), findsOneWidget);
    expect(find.text('Approved second'), findsNothing);
    expect(find.text('Approved third'), findsOneWidget);
    expect(find.byTooltip('Image unavailable · retry preview'), findsOneWidget);

    await tester.tap(find.byTooltip('Image unavailable · retry preview'));
    await tester.pumpAndSettle();
    expect(api.calls.where((id) => id == 'second').length, 2);
    expect(find.text('Approved second'), findsOneWidget);
    expect(opened, isEmpty, reason: 'Retry may not bubble into viewer navigation');

    await tester.tap(find.text('Approved second'));
    await tester.pump();
    expect(opened, ['second']);
    await tester.tap(find.text('View all 3 images'));
    await tester.pump();
    expect(opened, ['second', 'first']);
  });
}
