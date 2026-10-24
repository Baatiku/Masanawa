import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_community_api.dart';
import 'package:masanawa/src/features/rooms/room_community_screen.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

Map<String, dynamic> post(String id, String body, {String? parent}) => {
  'id': id,
  'body': body,
  'authorId': 'bob',
  'parentId': parent,
  'commentsEnabled': true,
  'attachments': [],
  'reactions': [],
};

class _Pages extends FakeCommunityApi implements RoomTimelinePages {
  _Pages({this.prefix = ''});
  final String prefix;
  bool failOlder = false,
      denyOlder = false,
      repeated = false,
      closed = false,
      failSearch = false;
  Completer<RoomTimelinePage>? olderPending, searchPending;
  Completer<CommunityRoom>? roomPending;
  final reads = <Map<String, dynamic>>[];
  @override
  Future<CommunityRoom> room(String id) =>
      roomPending?.future ?? super.room(id);
  Map<String, dynamic> get anchor => {
    ...post('post_old', '${prefix}Original parent'),
    'commentsEnabled': !closed,
  };
  @override
  Future<RoomTimelinePage> timelinePage(
    String id, {
    String search = '',
    String? parentId,
    String? cursor,
  }) async {
    reads.add({
      'room': id,
      'search': search,
      'parent': parentId,
      'cursor': cursor,
    });
    if (cursor != null) {
      if (olderPending != null) return olderPending!.future;
      if (denyOlder)
        throw DioException(
          requestOptions: RequestOptions(),
          response: Response(requestOptions: RequestOptions(), statusCode: 403),
        );
      if (failOlder) throw StateError('outage');
      return RoomTimelinePage(
        parentId == null
            ? [anchor, post('post_new', '${prefix}Latest post')]
            : [
                post('reply_old', '${prefix}Older reply', parent: parentId),
                post('reply_new', '${prefix}Recent reply', parent: parentId),
              ],
        repeated ? cursor : null,
        parent: parentId == null ? null : anchor,
      );
    }
    if (search.isNotEmpty) {
      if (searchPending != null && search == 'old')
        return searchPending!.future;
      if (failSearch)
        throw DioException(
          requestOptions: RequestOptions(),
          type: DioExceptionType.connectionError,
        );
      return RoomTimelinePage(
        [post('match', '${prefix}Match $search', parent: parentId)],
        null,
        parent: parentId == null ? null : anchor,
      );
    }
    return RoomTimelinePage(
      parentId == null
          ? [
              post('post_new', '${prefix}Latest post'),
              post('reply_new', '${prefix}Recent reply', parent: 'post_old'),
            ]
          : [post('reply_new', '${prefix}Recent reply', parent: parentId)],
      parentId == null ? 'root-next' : 'thread-next',
      parent: parentId == null ? null : anchor,
    );
  }
}

Future<void> mount(
  WidgetTester tester,
  _Pages api, {
  String room = 'room_1',
  String? thread,
  bool narrow = false,
}) async {
  if (narrow) {
    tester.view.physicalSize = const Size(320, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
  }
  await tester.pumpWidget(
    MaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: TextScaler.linear(narrow ? 2 : 1)),
        child: Directionality(
          textDirection: narrow ? TextDirection.rtl : TextDirection.ltr,
          child: child!,
        ),
      ),
      home: RoomCommunityScreen(api: api, roomId: room, threadPostId: thread),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> tap(WidgetTester tester, String text) async {
  await tester.scrollUntilVisible(
    find.text(text),
    160,
    scrollable: find.byType(Scrollable).first,
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text(text));
  await tester.pumpAndSettle();
}

Future<void> search(WidgetTester tester, String text) async {
  if (find.byType(TextField).evaluate().isEmpty) {
    await tester.tap(find.byTooltip('Search Room posts'));
    await tester.pump();
  }
  await tester.enterText(find.byType(TextField).first, text);
  await tester.pump(const Duration(milliseconds: 300));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets(
    'a prior account deletion confirmation cannot mutate a replacement account',
    (tester) async {
      final first = _Pages()..role = 'owner';
      await mount(tester, first);
      await tap(tester, 'Remove post');
      final next = _Pages(prefix: 'New ')..role = 'owner';
      await mount(tester, next);
      await tester.tap(find.text('Remove'));
      await tester.pumpAndSettle();
      expect(first.removed, isEmpty);
      expect(next.removed, isEmpty);
      expect(find.text('New Latest post'), findsOneWidget);
    },
  );

  testWidgets(
    'older root posts prepend without duplicate rows and exhaust the cursor',
    (tester) async {
      final api = _Pages();
      await mount(tester, api);
      await tap(tester, 'Load older posts');
      expect(find.text('Original parent'), findsOneWidget);
      await tester.scrollUntilVisible(
        find.text('Latest post'), -180,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      expect(find.text('Latest post'), findsOneWidget);
      expect(api.reads.last['cursor'], 'root-next');
      expect(find.text('Load older posts'), findsNothing);
    },
  );
  testWidgets(
    'transient older page error retains history and retries the original cursor',
    (tester) async {
      final api = _Pages()..failOlder = true;
      await mount(tester, api);
      await tap(tester, 'Load older posts');
      expect(find.text('Latest post'), findsOneWidget);
      api.failOlder = false;
      await tap(tester, 'Retry older posts');
      expect(find.text('Original parent'), findsOneWidget);
      expect(
        api.reads.where((v) => v['cursor'] != null).map((v) => v['cursor']),
        ['root-next', 'root-next'],
      );
    },
  );
  testWidgets(
    'repeated cursor is rejected without appending a misleading page',
    (tester) async {
      final api = _Pages()..repeated = true;
      await mount(tester, api);
      await tap(tester, 'Load older posts');
      expect(find.text('Original parent'), findsNothing);
      expect(find.text('Retry older posts'), findsOneWidget);
    },
  );
  testWidgets(
    'lost older-page permission clears private history rather than showing successful empty',
    (tester) async {
      final api = _Pages()..denyOlder = true;
      await mount(tester, api);
      await tap(tester, 'Load older posts');
      expect(find.text('Latest post'), findsNothing);
      expect(find.text('Recent reply'), findsNothing);
      expect(find.text('No posts yet.'), findsNothing);
    },
  );
  testWidgets(
    'debounced server search and clear use fresh query-scoped first pages',
    (tester) async {
      final api = _Pages();
      await mount(tester, api);
      await search(tester, 'needle');
      expect(api.reads.last['search'], 'needle');
      expect(find.text('Match needle'), findsOneWidget);
      await tester.tap(find.byTooltip('Clear post search'));
      await tester.pump(const Duration(milliseconds: 300));
      await tester.pumpAndSettle();
      expect(api.reads.last['search'], '');
      expect(find.text('Latest post'), findsOneWidget);
    },
  );
  testWidgets(
    'rapid typing makes one final search and ignores an older delayed query',
    (tester) async {
      final api = _Pages()..searchPending = Completer<RoomTimelinePage>();
      await mount(tester, api);
      await tester.tap(find.byTooltip('Search Room posts'));
      await tester.pump();
      await tester.enterText(find.byType(TextField), 'old');
      await tester.pump(const Duration(milliseconds: 300));
      await tester.pump();
      await tester.enterText(find.byType(TextField), 'new');
      await tester.pump(const Duration(milliseconds: 300));
      await tester.pumpAndSettle();
      api.searchPending!.complete(
        RoomTimelinePage([post('secret', 'Old query')], null),
      );
      await tester.pumpAndSettle();
      expect(find.text('Match new'), findsOneWidget);
      expect(find.text('Old query'), findsNothing);
    },
  );
  testWidgets('late older page cannot append into a replacement search', (
    tester,
  ) async {
    final api = _Pages()..olderPending = Completer<RoomTimelinePage>();
    await mount(tester, api);
    await tester.tap(find.text('Load older posts'));
    await tester.pump();
    await search(tester, 'new');
    api.olderPending!.complete(
      RoomTimelinePage([post('old', 'Old private page')], null),
    );
    await tester.pumpAndSettle();
    expect(find.text('Match new'), findsOneWidget);
    expect(find.text('Old private page'), findsNothing);
  });
  testWidgets('search outage is an error, not a false no-match result', (
    tester,
  ) async {
    final api = _Pages()..failSearch = true;
    await mount(tester, api);
    await search(tester, 'needle');
    expect(find.text('No posts match this search.'), findsNothing);
    expect(find.text('Could not load posts. Retry.'), findsOneWidget);
  });
  testWidgets(
    'thread has an exact parent, paged children and parent-bound composer',
    (tester) async {
      final api = _Pages();
      await mount(tester, api, thread: 'post_old');
      expect(find.text('Original parent'), findsOneWidget);
      await tap(tester, 'Load older posts');
      expect(find.text('Older reply'), findsOneWidget);
      expect(api.reads.last['parent'], 'post_old');
      await tester.enterText(find.byType(TextField), 'Thread reply');
      await tester.tap(find.byTooltip('Send post'));
      await tester.pumpAndSettle();
      expect(api.sent.last['parentId'], 'post_old');
    },
  );
  testWidgets('closed thread cannot expose a new root-post composer', (
    tester,
  ) async {
    final api = _Pages()
      ..closed = true
      ..policy = 'members';
    await mount(tester, api, thread: 'post_old');
    expect(find.text('Comments are closed.'), findsOneWidget);
    expect(find.byTooltip('Send post'), findsNothing);
  });
  testWidgets(
    'Back from a parent thread revalidates previously loaded root pages',
    (tester) async {
      final api = _Pages();
      await mount(tester, api);
      await tap(tester, 'Load older posts');
      await tester.scrollUntilVisible(
        find.text('Open parent thread'),
        160,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      final offset = tester
          .state<ScrollableState>(find.byType(Scrollable).first)
          .position
          .pixels;
      await tester.tap(find.text('Open parent thread'));
      await tester.pumpAndSettle();
      expect(api.reads.last['parent'], 'post_old');
      await tester.pageBack();
      await tester.pumpAndSettle();
      expect(api.reads.last['parent'], isNull);
      expect(api.reads.last['cursor'], 'root-next');
      expect(
        tester
            .state<ScrollableState>(find.byType(Scrollable).first)
            .position
            .pixels,
        closeTo(offset, 1),
      );
      await tester.scrollUntilVisible(
        find.text('Original parent'),
        -180,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      expect(find.text('Original parent'), findsOneWidget);
      await tester.scrollUntilVisible(
        find.text('Latest post'), -180,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      expect(find.text('Latest post'), findsOneWidget);
    },
  );
  testWidgets(
    'old account page and delayed Room reads cannot enter a replacement API',
    (tester) async {
      final first = _Pages(prefix: 'Old ')
        ..olderPending = Completer<RoomTimelinePage>();
      await mount(tester, first);
      await tester.tap(find.text('Load older posts'));
      await tester.pump();
      final next = _Pages(prefix: 'New ');
      await mount(tester, next);
      first.olderPending!.complete(
        RoomTimelinePage([post('old', 'Old private page')], null),
      );
      await tester.pumpAndSettle();
      expect(find.text('New Latest post'), findsOneWidget);
      expect(find.text('Old private page'), findsNothing);
    },
  );
  testWidgets('replacement Room resets the old cursor and search', (
    tester,
  ) async {
    final api = _Pages();
    await mount(tester, api);
    await search(tester, 'needle');
    await mount(tester, api, room: 'room_2');
    expect(api.reads.last, {
      'room': 'room_2',
      'search': '',
      'parent': null,
      'cursor': null,
    });
    expect(find.text('Match needle'), findsNothing);
  });
  testWidgets('320dp 200 percent RTL keeps older history usable', (
    tester,
  ) async {
    final api = _Pages();
    await mount(tester, api, narrow: true);
    await tap(tester, 'Load older posts');
    expect(tester.takeException(), isNull);
  });
  test('transport uses scoped GET query with no body and rejects a missing thread anchor', () async {
    final dio = Dio(BaseOptions(baseUrl: 'https://example.invalid'));
    final requests = <RequestOptions>[];
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (r, h) {
          requests.add(r);
          h.resolve(
            Response(
              requestOptions: r,
              statusCode: 200,
              data: {
                'paginationVersion': 1,
                'items': [],
                'nextCursor': null,
                'parent': null,
              },
            ),
          );
        },
      ),
    );
    final api = HttpRoomCommunityApi(dio);
    await api.timelinePage('room_1', search: '100%_#', cursor: 'opaque');
    expect(requests.single.method, 'GET');
    expect(requests.single.data, isNull);
    expect(requests.single.queryParameters, {
      'search': '100%_#',
      'cursor': 'opaque',
    });
    await expectLater(
      api.timelinePage('room_1', parentId: 'post_old'),
      throwsFormatException,
    );
  });
  test('account wrapper rejects a late timeline response after session replacement', () async {
    final api = _Pages()..olderPending = Completer<RoomTimelinePage>();
    String? current = 'alice';
    final bound = AccountBoundRoomCommunityApi(
      delegate: api,
      ownerAccount: 'alice',
      currentAccount: () => current,
    );
    final future = bound.timelinePage('room_1', cursor: 'root-next');
    final rejected = expectLater(future, throwsStateError);
    current = 'bob';
    api.olderPending!.complete(const RoomTimelinePage([], null));
    await rejected;
  });
}
