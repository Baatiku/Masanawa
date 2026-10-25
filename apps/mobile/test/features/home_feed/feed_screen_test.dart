import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/feed_media_api.dart';
import 'package:masanawa/src/features/home_feed/feed_screen.dart';
import 'package:masanawa/src/features/home_feed/feed_post_detail_screen.dart';

class StubFeed implements FeedApi {
  StubFeed(this.label);
  final String label;
  int calls = 0, likes = 0;
  Future<FeedPage> Function(String mode, String? cursor)? onList;
  Future<void> Function()? onLike;
  @override
  Future<FeedPage> list({required String mode, String? cursor}) async {
    calls++;
    if (onList != null) return onList!(mode, cursor);
    return FeedPage([
      FeedPost(
        id: '381026c2-9d56-47b1-b73d-1784e24e41e2',
        authorMasanaId: 'masana_one',
        kind: 'text',
        body: label,
        mediaIds: const [],
        publishedAt: DateTime.utc(2026),
        likeCount: 0,
        commentCount: 0,
        liked: false,
        saved: false,
      ),
    ], null);
  }

  @override
  Future<void> like(String id, bool enabled) async {
    likes++;
    if (onLike != null) await onLike!();
  }

  @override
  Future<void> save(String id, bool enabled) async {}
  @override
  Future<void> comment(String id, String body, String key) async {}
  @override
  Future<List<FeedComment>> comments(String id) async => [];
}

class SearchStubFeed extends StubFeed implements SearchFeedApi {
  SearchStubFeed(super.label);
  final requests = <String>[];
  Future<FeedPage> Function(String mode, String term, String? cursor)?
  searchHandler;
  @override
  Future<FeedPage> searchPosts({
    required String mode,
    required String query,
    String? cursor,
  }) {
    requests.add('$mode:$query:${cursor ?? '-'}');
    if (searchHandler != null) return searchHandler!(mode, query, cursor);
    return Future.value(FeedPage([update('Found $query')], null));
  }
}

FeedPost update(String body) => FeedPost(
  id: '381026c2-9d56-47b1-b73d-1784e24e41e2',
  authorMasanaId: 'masana',
  kind: 'text',
  body: body,
  mediaIds: const [],
  publishedAt: DateTime.utc(2026),
  likeCount: 0,
  commentCount: 0,
  liked: false,
  saved: false,
);
DioException denial(int status) => DioException(
  requestOptions: RequestOptions(path: '/v1/feed'),
  type: DioExceptionType.badResponse,
  response: Response(
    requestOptions: RequestOptions(path: '/v1/feed'),
    statusCode: status,
  ),
);

class InlineMediaStub implements FeedMediaApi {
  InlineMediaStub(this.load);
  final Future<FeedMediaGrant> Function(String, String) load;
  @override
  Future<FeedMediaGrant> getGrant(String p, String m) => load(p, m);
}

FeedMediaGrant inlineGrant(String id) => FeedMediaGrant(
  mediaId: id,
  kind: 'image',
  url: Uri.parse('https://example.test/original?signature=short-lived'),
  expiresAt: DateTime.now().add(const Duration(minutes: 2)),
);
void main() {
  testWidgets('Status opens card body once, retains independent profile and removes flag',
      (tester) async {
    final api = StubFeed('A useful public post');
    final opened = <String>[];
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: MasanaFeedScreen(
      api: api,
      accountKey: 'fan',
      onMasanaProfile: opened.add,
    ))));
    await tester.pumpAndSettle();
    expect(find.text('Open post'), findsNothing);
    expect(find.byIcon(Icons.flag_outlined), findsNothing);
    expect(find.byIcon(Icons.thumb_up_outlined), findsOneWidget);
    expect(find.byIcon(Icons.mode_comment_outlined), findsOneWidget);
    expect(find.byIcon(Icons.share_outlined), findsOneWidget);
    await tester.tap(find.text('masana_one'));
    await tester.pump();
    expect(opened, ['masana_one']);
    expect(find.byType(FeedPostDetailScreen), findsNothing);
    await tester.tap(find.text('A useful public post'));
    await tester.pumpAndSettle();
    expect(find.byType(FeedPostDetailScreen), findsOneWidget);
    expect(find.byIcon(Icons.flag_outlined), findsNothing);
    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.byType(FeedPostDetailScreen), findsNothing);
    expect(find.text('A useful public post'), findsOneWidget);
  });

  testWidgets(
    'Status search expands from one icon and never renders ranking tabs',
    (tester) async {
      final api = SearchStubFeed('ordinary');
      api.searchHandler = (mode, term, cursor) =>
          Future.value(FeedPage([], null));
      tester.view.physicalSize = const Size(320, 720);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(
        MaterialApp(
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(
              context,
            ).copyWith(textScaler: const TextScaler.linear(2)),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: child!,
            ),
          ),
          home: Scaffold(
            body: MasanaFeedScreen(api: api, accountKey: 'signed-in'),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(TextField), findsNothing);
      expect(find.text('For You'), findsNothing);
      expect(find.text('Following'), findsNothing);
      await tester.tap(find.byTooltip('Search Status'));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField), 'a');
      await tester.testTextInput.receiveAction(TextInputAction.search);
      await tester.pumpAndSettle();
      expect(api.requests, isEmpty);
      await tester.enterText(find.byType(TextField), 'no matches');
      await tester.testTextInput.receiveAction(TextInputAction.search);
      await tester.pumpAndSettle();
      expect(find.text('No Status posts match this search.'), findsOneWidget);
      expect(api.requests.last, 'for_you:no matches:-');
      expect(find.text('For You'), findsNothing);
      expect(find.text('Following'), findsNothing);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'Status searches all matching posts, pages and clears without stale rows',
    (tester) async {
      final api = SearchStubFeed('ordinary');
      api.searchHandler = (mode, term, cursor) => Future.value(
        FeedPage([
          cursor == null
              ? update('Found $term')
              : FeedPost(
                  id: '381026c2-9d56-47b1-b73d-1784e24e41e3',
                  authorMasanaId: 'masana',
                  kind: 'text',
                  body: 'Older $term',
                  mediaIds: const [],
                  publishedAt: DateTime.utc(2025),
                  likeCount: 0,
                  commentCount: 0,
                  liked: false,
                  saved: false,
                ),
        ], cursor == null ? 'more' : null),
      );
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MasanaFeedScreen(api: api, accountKey: 'signed-in'),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byTooltip('Search Status'));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField), 'river');
      await tester.testTextInput.receiveAction(TextInputAction.search);
      await tester.pumpAndSettle();
      expect(api.requests.last, 'for_you:river:-');
      expect(find.text('Found river'), findsOneWidget);
      await tester.ensureVisible(find.text('Load more'));
      await tester.tap(find.text('Load more'));
      await tester.pumpAndSettle();
      expect(api.requests.last, 'for_you:river:more');
      expect(find.text('Older river'), findsOneWidget);
      await tester.tap(find.byTooltip('Clear Status search'));
      await tester.pumpAndSettle();
      expect(find.text('ordinary'), findsOneWidget);
      expect(find.text('Found river'), findsNothing);
      expect(find.text('Older river'), findsNothing);
    },
  );
  testWidgets(
    'Status rejects late search result after clearing or changing account',
    (tester) async {
      final old = SearchStubFeed('account A'),
          next = SearchStubFeed('account B');
      final pending = Completer<FeedPage>();
      old.searchHandler = (_, _, _) => pending.future;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MasanaFeedScreen(api: old, accountKey: 'a'),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byTooltip('Search Status'));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField), 'old');
      await tester.testTextInput.receiveAction(TextInputAction.search);
      await tester.pump();
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MasanaFeedScreen(api: next, accountKey: 'b'),
          ),
        ),
      );
      await tester.pumpAndSettle();
      pending.complete(FeedPage([update('Old search must not leak')], null));
      await tester.pumpAndSettle();
      expect(find.text('account B'), findsOneWidget);
      expect(find.text('Old search must not leak'), findsNothing);
      expect(find.byType(TextField), findsOneWidget);
      expect(
        tester.widget<TextField>(find.byType(TextField)).controller?.text,
        '',
      );
    },
  );

  testWidgets(
    'C21 renders Masana-only posts and reacts without a publish button',
    (tester) async {
      final api = StubFeed('Hello from Masana');
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MasanaFeedScreen(api: api, accountKey: 'fan1'),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Hello from Masana'), findsOneWidget);
      expect(find.text('Publish'), findsNothing);
      expect(find.text('Write a Status'), findsNothing);
      expect(find.text('My posts'), findsNothing);
      await tester.tap(find.byIcon(Icons.thumb_up_outlined));
      await tester.pumpAndSettle();
      expect(api.likes, 1);
    },
  );
  testWidgets('C21 clears previous account projection on account switch', (
    tester,
  ) async {
    final one = StubFeed('Private account 1'), two = StubFeed('Account 2');
    Future<void> render(StubFeed api, String key) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MasanaFeedScreen(api: api, accountKey: key),
          ),
        ),
      );
      await tester.pumpAndSettle();
    }

    await render(one, 'one');
    expect(find.text('Private account 1'), findsOneWidget);
    await render(two, 'two');
    expect(find.text('Private account 1'), findsNothing);
    expect(find.text('Account 2'), findsOneWidget);
  });
  testWidgets('C21 disabled flag has truthful unavailable state', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: MasanaFeedScreen(
            api: StubFeed('never'),
            accountKey: 'fan',
            enabled: false,
          ),
        ),
      ),
    );
    expect(find.text('Status is currently unavailable'), findsOneWidget);
  });
  testWidgets(
    'Status discards an outstanding response on disable and reloads on enable',
    (tester) async {
      final pending = Completer<FeedPage>(), api = StubFeed('fresh');
      api.onList = (_, _) => pending.future;
      Future<void> render(bool enabled) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: MasanaFeedScreen(
                api: api,
                accountKey: 'fan',
                enabled: enabled,
              ),
            ),
          ),
        );
        await tester.pump();
      }

      await render(true);
      await render(false);
      pending.complete(FeedPage([update('must not survive disable')], null));
      await tester.pump();
      expect(find.text('must not survive disable'), findsNothing);
      api.onList = null;
      await render(true);
      await tester.pumpAndSettle();
      expect(find.text('fresh'), findsOneWidget);
    },
  );
  testWidgets('Status account switch cancels old pagination lock and result', (
    tester,
  ) async {
    final more = Completer<FeedPage>(),
        one = StubFeed('one'),
        two = StubFeed('two');
    one.onList = (_, cursor) => cursor == null
        ? Future.value(FeedPage([update('one')], 'next'))
        : more.future;
    two.onList = (_, cursor) => Future.value(
      FeedPage([
        update(cursor == null ? 'two' : 'two next'),
      ], cursor == null ? 'next' : null),
    );
    Future<void> render(StubFeed api, String key) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MasanaFeedScreen(api: api, accountKey: key),
          ),
        ),
      );
      await tester.pumpAndSettle();
    }

    await render(one, 'one');
    await tester.tap(find.text('Load more'));
    await tester.pump();
    await render(two, 'two');
    await tester.tap(find.text('Load more'));
    await tester.pumpAndSettle();
    expect(two.calls, 2);
    more.complete(FeedPage([update('old private page')], null));
    await tester.pumpAndSettle();
    expect(find.text('old private page'), findsNothing);
  });
  testWidgets(
    'Status preserves offline content but clears it on revoked session',
    (tester) async {
      final api = StubFeed('cached');
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MasanaFeedScreen(api: api, accountKey: 'fan'),
          ),
        ),
      );
      await tester.pumpAndSettle();
      api.onList = (_, _) => Future.error(
        DioException(
          requestOptions: RequestOptions(path: '/v1/feed'),
          type: DioExceptionType.connectionError,
        ),
      );
      await tester.drag(find.byType(ListView), const Offset(0, 500));
      await tester.pumpAndSettle();
      expect(find.text('cached'), findsOneWidget);
      api.onList = (_, _) => Future.error(denial(401));
      await tester.tap(find.text('Retry'));
      await tester.pumpAndSettle();
      expect(find.text('cached'), findsNothing);
    },
  );
  testWidgets('Status failed reaction rolls back and re-enables retry', (
    tester,
  ) async {
    final pending = Completer<void>(), api = StubFeed('post');
    api.onLike = () => pending.future;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: MasanaFeedScreen(api: api, accountKey: 'fan'),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.thumb_up_outlined));
    await tester.pump();
    final button = tester.widget<TextButton>(
      find
          .ancestor(
            of: find.byIcon(Icons.thumb_up_rounded),
            matching: find.byType(TextButton),
          )
          .first,
    );
    expect(button.onPressed, isNull);
    pending.completeError(StateError('offline'));
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.thumb_up_outlined), findsOneWidget);
    api.onLike = null;
    await tester.tap(find.byIcon(Icons.thumb_up_outlined));
    await tester.pumpAndSettle();
    expect(api.likes, 2);
  });
  testWidgets(
    'Status pagination failure offers retry without discarding updates',
    (tester) async {
      final api = StubFeed('post');
      bool fail = true;
      api.onList = (_, cursor) => cursor == null
          ? Future.value(FeedPage([update('post')], 'next'))
          : fail
          ? Future.error(StateError('offline'))
          : Future.value(FeedPage([], null));
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MasanaFeedScreen(api: api, accountKey: 'fan'),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('Load more'));
      await tester.pumpAndSettle();
      expect(find.text('post'), findsOneWidget);
      expect(find.text('Could not load more updates'), findsOneWidget);
      fail = false;
      await tester.tap(find.text('Retry'));
      await tester.pumpAndSettle();
      expect(find.text('Could not load more updates'), findsNothing);
      expect(find.text('post'), findsOneWidget);
    },
  );

  testWidgets(
    'same account replacement of auth-backed API does not re-fetch feed',
    (tester) async {
      final before = StubFeed('Already visible'),
          after = StubFeed('New transport');
      Future<void> render(StubFeed feed) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: MasanaFeedScreen(api: feed, accountKey: 'fan1'),
            ),
          ),
        );
        await tester.pumpAndSettle();
      }

      await render(before);
      expect(before.calls, 1);
      await render(after);
      expect(after.calls, 0);
      expect(find.text('Already visible'), findsOneWidget);
    },
  );

  testWidgets(
    'Status media action retains the authorized post and media pair',
    (tester) async {
      final api = StubFeed('image');
      final post = FeedPost(
        id: '381026c2-9d56-47b1-b73d-1784e24e41e2',
        authorMasanaId: 'masana',
        kind: 'image',
        body: 'A Masana image',
        mediaIds: const ['media_abcdefgh'],
        publishedAt: DateTime.utc(2026),
        likeCount: 0,
        commentCount: 0,
        liked: false,
        saved: false,
      );
      api.onList = (mode, cursor) => Future.value(FeedPage([post], null));
      String? openedPost, openedMedia;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MasanaFeedScreen(
              api: api,
              accountKey: 'fan',
              onOpenMedia: (post, id) {
                openedPost = post.id;
                openedMedia = id;
              },
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('View image'));
      await tester.pumpAndSettle();
      expect(openedPost, post.id);
      expect(openedMedia, 'media_abcdefgh');
    },
  );

  testWidgets('signed original image renders inline only after scoped grant', (
    tester,
  ) async {
    final pending = Completer<FeedMediaGrant>(), feed = StubFeed('image');
    final post = FeedPost(
      id: 'post1',
      authorMasanaId: 'masana',
      kind: 'image',
      body: 'Illustrated lesson',
      mediaIds: const ['media1', 'media2'],
      publishedAt: DateTime.utc(2026),
      likeCount: 0,
      commentCount: 0,
      liked: false,
      saved: false,
    );
    feed.onList = (_, __) async => FeedPage([post], null);
    String? opened;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: MasanaFeedScreen(
            api: feed,
            accountKey: 'owner1',
            mediaApi: InlineMediaStub((p, id) {
              expect(p, 'post1');
              if (id == 'media1') return pending.future;
              expect(id, 'media2');
              return Future.value(inlineGrant('media2'));
            }),
            inlineMediaRenderer: (grant) =>
                Text('AUTHORIZED IMAGE: ${grant.mediaId}'),
            onOpenMedia: (_, media) => opened = media,
          ),
        ),
      ),
    );
    await tester.pump();
    expect(find.text('AUTHORIZED IMAGE: media1'), findsNothing);
    pending.complete(inlineGrant('media1'));
    await tester.pumpAndSettle();
    expect(find.text('AUTHORIZED IMAGE: media1'), findsOneWidget);
    expect(find.text('AUTHORIZED IMAGE: media2'), findsOneWidget);
    await tester.tap(find.text('View all 2 images'));
    await tester.pump();
    expect(opened, 'media1');
  });
  testWidgets('a new account cannot render an outstanding old media grant', (
    tester,
  ) async {
    final pending = Completer<FeedMediaGrant>();
    final feed = StubFeed('image');
    feed.onList = (_, __) async => FeedPage([
      FeedPost(
        id: 'post2',
        authorMasanaId: 'masana',
        kind: 'image',
        body: 'Original',
        mediaIds: const ['media1'],
        publishedAt: DateTime.utc(2026),
        likeCount: 0,
        commentCount: 0,
        liked: false,
        saved: false,
      ),
    ], null);
    Future<void> draw(String account, FeedMediaApi media) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MasanaFeedScreen(
              api: feed,
              accountKey: account,
              mediaApi: media,
              inlineMediaRenderer: (g) => Text('Image for $account'),
            ),
          ),
        ),
      );
      await tester.pump();
    }

    await draw('first', InlineMediaStub((_, __) => pending.future));
    await draw(
      'second',
      InlineMediaStub((_, __) async => inlineGrant('media1')),
    );
    pending.complete(inlineGrant('media1'));
    await tester.pumpAndSettle();
    expect(find.text('Image for first'), findsNothing);
    expect(find.text('Image for second'), findsOneWidget);
  });
}
