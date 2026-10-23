import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/feed_screen.dart';
import 'package:masanawa/src/features/home_feed/feed_post_detail_screen.dart';
import 'package:masanawa/src/features/home_feed/saved_status_library_screen.dart';

const _postId = '381026c2-9d56-47b1-b73d-1784e24e41e2';
const _videoId = 'd2e54732-156c-47de-992d-bcc7a913579f';

Map<String, dynamic> savedPost() => {
  'kind': 'post',
  'id': _postId,
  'savedAt': '2026-10-23T10:00:00Z',
  'post': {
    'id': _postId,
    'author': {
      'type': 'human',
      'id': 'fan',
      'handle': 'amina',
      'displayName': 'Amina',
    },
    'kind': 'text',
    'body': 'Hello Status',
    'media': <String>[],
    'publishedAt': '2026-10-23T08:00:00Z',
    'likeCount': 0,
    'commentCount': 0,
    'viewerLiked': false,
    'viewerSaved': true,
  },
};
Map<String, dynamic> savedVideo() => {
  'kind': 'video',
  'id': _videoId,
  'savedAt': '2026-10-23T09:00:00Z',
  'video': {
    'id': _videoId,
    'provider': 'youtube',
    'sourceUrl': 'https://www.youtube.com/watch?v=U2F7id123ab',
    'title': 'Approved original',
    'channelName': 'Publisher',
    'reviewState': 'approved',
    'verifiedAt': '2026-10-23T08:00:00Z',
  },
};

class SavedStub implements SavedStatusLibraryApi {
  SavedStatusPage page = SavedStatusPage([
    SavedStatusItem.fromJson(savedPost()),
    SavedStatusItem.fromJson(savedVideo()),
  ], null);
  Future<SavedStatusPage> Function(String?)? loader;
  Future<void> Function(SavedStatusItem)? remover;
  final cursors = <String?>[];
  final removals = <String>[];
  @override
  Future<SavedStatusPage> saved({String? cursor}) async {
    cursors.add(cursor);
    if (loader != null) return loader!(cursor);
    return page;
  }

  @override
  Future<void> removeSaved(SavedStatusItem item) async {
    removals.add(item.id);
    if (remover != null) await remover!(item);
  }
}

class FeedStub extends SavedStub implements FeedApi {
  @override
  Future<FeedPage> list({required String mode, String? cursor}) async =>
      FeedPage([
        FeedPost.fromJson(
          Map<String, dynamic>.from(savedPost()['post'] as Map),
        ),
      ], null);
  @override
  Future<void> like(String postId, bool enabled) async {}
  @override
  Future<void> save(String postId, bool enabled) async {}
  @override
  Future<void> comment(String postId, String body, String key) async {}
  @override
  Future<List<FeedComment>> comments(String postId) async => [];
}

void main() {
  testWidgets('pushed post detail is replaced on live account revocation', (tester) async {
    final active = ValueNotifier<bool>(true);
    Widget guard(Widget content) => ValueListenableBuilder<bool>(
      valueListenable: active,
      builder: (_, allowed, __) => allowed ? content : const Scaffold(
        body: Center(child: Text('Account access changed'))),
    );
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: MasanaFeedScreen(
      api: FeedStub(), accountKey: 'fan', wrapAccountRoute: guard,
    ))));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Open post'));
    await tester.pumpAndSettle();
    expect(find.text('Hello Status'), findsOneWidget);
    active.value = false;
    await tester.pumpAndSettle();
    expect(find.text('Hello Status'), findsNothing);
    expect(find.text('Account access changed'), findsOneWidget);
    expect(find.byType(FeedPostDetailScreen), findsNothing);
    active.value = true;
    await tester.pumpAndSettle();
    expect(find.byType(FeedPostDetailScreen), findsOneWidget);
    active.dispose();
  });

  testWidgets('pushed Saved library does not leak old account posts on switch', (tester) async {
    final active = ValueNotifier<bool>(true);
    Widget guard(Widget content) => ValueListenableBuilder<bool>(
      valueListenable: active,
      builder: (_, allowed, __) => allowed ? content : const Scaffold(
        body: Center(child: Text('Account access changed'))),
    );
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: MasanaFeedScreen(
      api: FeedStub(), accountKey: 'fan', wrapAccountRoute: guard,
    ))));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Saved'));
    await tester.pumpAndSettle();
    expect(find.text('Approved original'), findsOneWidget);
    active.value = false;
    await tester.pumpAndSettle();
    expect(find.text('Approved original'), findsNothing);
    expect(find.text('Hello Status'), findsNothing);
    expect(find.text('Account access changed'), findsOneWidget);
    expect(find.byType(SavedStatusLibraryScreen), findsNothing);
    active.dispose();
  });

  test('mixed collection validates author and approved video projection', () {
    final page = SavedStatusPage.fromJson({
      'items': [savedPost(), savedVideo()],
      'nextCursor': 'opaque',
    });
    expect(page.items, hasLength(2));
    expect(page.items.first.post!.displayAuthor, 'Amina');
    expect(page.items.last.video!.provider, 'youtube');
    expect(page.nextCursor, 'opaque');
    final invalid = savedVideo();
    invalid['video'] = {...(invalid['video'] as Map), 'reviewState': 'pending'};
    expect(() => SavedStatusItem.fromJson(invalid), throwsFormatException);
    expect(
      () => SavedStatusItem.fromJson({...savedPost(), 'id': _videoId}),
      throwsFormatException,
    );
  });

  testWidgets('saved library reads, opens both kinds and confirms removal', (
    tester,
  ) async {
    final api = SavedStub();
    final opened = <String>[];
    await tester.pumpWidget(
      MaterialApp(
        home: SavedStatusLibraryScreen(
          api: api,
          accountKey: 'fan',
          isAccountCurrent: () => true,
          openPost: (post) async => opened.add(post.id),
          openVideo: (video) async => opened.add(video.id),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Hello Status'), findsOneWidget);
    expect(find.text('Approved original'), findsOneWidget);
    await tester.tap(find.text('Open post'));
    await tester.pumpAndSettle();
    expect(opened, contains(_postId));
    await tester.tap(find.text('Watch video'));
    await tester.pumpAndSettle();
    expect(opened, contains(_videoId));

    await tester.tap(find.text('Remove').first);
    await tester.pumpAndSettle();
    expect(api.removals, isEmpty);
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(api.removals, isEmpty);
    await tester.tap(find.text('Remove').first);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Remove').last);
    await tester.pumpAndSettle();
    expect(api.removals, [_postId]);
    expect(find.text('Hello Status'), findsNothing);
    expect(find.text('Approved original'), findsOneWidget);
  });

  testWidgets('pagination uses server cursor, dedupes and recovers failures', (
    tester,
  ) async {
    final api = SavedStub();
    api.loader = (cursor) {
      if (cursor == null) {
        return Future.value(
          SavedStatusPage([
            SavedStatusItem.fromJson(savedPost()),
          ], 'opaque-page'),
        );
      }
      if (cursor == 'opaque-page') {
        return Future.value(
          SavedStatusPage([
            SavedStatusItem.fromJson(savedPost()),
            SavedStatusItem.fromJson(savedVideo()),
          ], null),
        );
      }
      throw StateError('unexpected cursor');
    };
    await tester.pumpWidget(
      MaterialApp(
        home: SavedStatusLibraryScreen(
          api: api,
          accountKey: 'fan',
          isAccountCurrent: () => true,
          openPost: (_) async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Load more'), findsOneWidget);
    await tester.tap(find.text('Load more'));
    await tester.pumpAndSettle();
    expect(api.cursors, [null, 'opaque-page']);
    expect(find.text('Hello Status'), findsOneWidget);
    expect(find.text('Approved original'), findsOneWidget);
    expect(find.text('Watch video'), findsOneWidget);
    expect(
      tester
          .widget<TextButton>(find.widgetWithText(TextButton, 'Watch video'))
          .onPressed,
      isNull,
    );
  });

  testWidgets('account replacement discards an outstanding private read', (
    tester,
  ) async {
    final old = SavedStub();
    final pending = Completer<SavedStatusPage>();
    old.loader = (_) => pending.future;
    final next = SavedStub();
    await tester.pumpWidget(
      MaterialApp(
        home: SavedStatusLibraryScreen(
          api: old,
          accountKey: 'fanA',
          isAccountCurrent: () => true,
          openPost: (_) async {},
        ),
      ),
    );
    await tester.pump();
    await tester.pumpWidget(
      MaterialApp(
        home: SavedStatusLibraryScreen(
          api: next,
          accountKey: 'fanB',
          isAccountCurrent: () => true,
          openPost: (_) async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    pending.complete(old.page);
    await tester.pumpAndSettle();
    expect(next.cursors, [null]);
    expect(find.text('Approved original'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'failed saved revalidation hides previously visible post immediately',
    (tester) async {
      final api = SavedStub();
      await tester.pumpWidget(
        MaterialApp(
          home: SavedStatusLibraryScreen(
            api: api,
            accountKey: 'fan',
            isAccountCurrent: () => true,
            openPost: (_) async {},
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Hello Status'), findsOneWidget);

      final waiting = Completer<SavedStatusPage>();
      api.loader = (_) => waiting.future;
      final pendingRefresh =
          (tester.state(find.byType(SavedStatusLibraryScreen)) as dynamic)
                  .refresh()
              as Future<void>;
      await tester.pump();
      expect(find.text('Hello Status'), findsNothing);
      waiting.completeError(
        DioException(
          requestOptions: RequestOptions(path: '/v1/saved'),
          type: DioExceptionType.connectionError,
        ),
      );
      await pendingRefresh;
      await tester.pumpAndSettle();
      expect(find.text('Hello Status'), findsNothing);
      expect(
        find.text('Offline. Saved items are not available offline.'),
        findsOneWidget,
      );
      expect(find.text('Saved items could not be refreshed.'), findsOneWidget);
    },
  );

  testWidgets('revoked authorization clears private collection', (
    tester,
  ) async {
    final api = SavedStub();
    var deny = false;
    api.loader = (_) => deny
        ? Future.error(
            DioException(
              requestOptions: RequestOptions(path: '/v1/saved'),
              response: Response(
                requestOptions: RequestOptions(path: '/v1/saved'),
                statusCode: 403,
              ),
              type: DioExceptionType.badResponse,
            ),
          )
        : Future.value(api.page);
    await tester.pumpWidget(
      MaterialApp(
        home: SavedStatusLibraryScreen(
          api: api,
          accountKey: 'fan',
          isAccountCurrent: () => true,
          openPost: (_) async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    deny = true;
    await tester.drag(find.byType(ListView), const Offset(0, 500));
    await tester.pumpAndSettle();
    expect(find.text('Hello Status'), findsNothing);
    expect(find.text('Saved items could not be refreshed.'), findsOneWidget);
  });

  testWidgets('Status entry opens Saved without another root tab', (
    tester,
  ) async {
    final api = FeedStub();
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: MasanaFeedScreen(api: api, accountKey: 'fan'),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Saved'));
    await tester.pumpAndSettle();
    expect(find.text('Saved'), findsOneWidget);
    expect(find.text('Hello Status'), findsWidgets);
    expect(find.text('Approved original'), findsOneWidget);
  });
}
