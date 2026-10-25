import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_inline_media_gallery.dart';
import 'package:masanawa/src/features/home_feed/feed_media_api.dart';

class _GalleryMediaApi implements FeedMediaApi {
  final requested = <String>[];
  final failed = <String>{};

  @override
  Future<FeedMediaGrant> getGrant(String postId, String mediaId) async {
    expect(postId, 'approved-post');
    requested.add(mediaId);
    if (mediaId == 'm3' && failed.add(mediaId)) {
      throw StateError('Temporary image grant failure');
    }
    return FeedMediaGrant(
      mediaId: mediaId,
      kind: 'image',
      url: Uri.parse('https://example.test/original/$mediaId?temporary=1'),
      expiresAt: DateTime.now().add(const Duration(minutes: 2)),
    );
  }
}

void main() {
  testWidgets('five originals grant only first four, retry separately and open selected media',
      (tester) async {
    final api = _GalleryMediaApi();
    final opened = <String>[];
    await tester.pumpWidget(MaterialApp(home: Scaffold(
      body: SingleChildScrollView(child: FeedInlineMediaGallery(
        api: api,
        accountKey: 'fan1',
        postId: 'approved-post',
        mediaIds: const ['m1', 'm2', 'm3', 'm4', 'm5'],
        onOpen: opened.add,
        renderer: (grant) => Center(child: Text('Approved ${grant.mediaId}')),
      )),
    )));
    await tester.pumpAndSettle();
    expect(api.requested.toSet(), {'m1', 'm2', 'm3', 'm4'});
    expect(find.text('Approved m1'), findsOneWidget);
    expect(find.text('Approved m2'), findsOneWidget);
    expect(find.text('Approved m3'), findsNothing);
    expect(find.text('Approved m4'), findsOneWidget);
    expect(find.text('+1 more'), findsOneWidget);
    expect(find.text('View all 5 images'), findsOneWidget);
    await tester.tap(find.byTooltip('Image unavailable · retry preview'));
    await tester.pumpAndSettle();
    expect(api.requested.where((id) => id == 'm3').length, 2);
    expect(find.text('Approved m3'), findsOneWidget);
    expect(opened, isEmpty);
    await tester.tap(find.text('Approved m4'));
    await tester.pump();
    expect(opened, ['m4']);
    await tester.tap(find.text('View all 5 images'));
    await tester.pump();
    expect(opened, ['m4', 'm1']);
  });

  testWidgets('three-image gallery fits narrow 200%-text RTL viewport',
      (tester) async {
    tester.view.physicalSize = const Size(320, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final api = _GalleryMediaApi();
    await tester.pumpWidget(MaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(2)),
        child: Directionality(textDirection: TextDirection.rtl, child: child!),
      ),
      home: Scaffold(body: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.all(12),
        child: FeedInlineMediaGallery(
          api: api, accountKey: 'fan1', postId: 'approved-post',
          mediaIds: const ['m1', 'm2', 'm3'],
          renderer: (grant) => Center(child: Text('Approved ${grant.mediaId}')),
        ),
      ))),
    ));
    await tester.pumpAndSettle();
    expect(find.text('View all 3 images'), findsOneWidget);
    expect(find.text('Approved m2'), findsOneWidget);
    expect(find.text('Retry image'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
