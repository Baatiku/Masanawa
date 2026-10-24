import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_community_api.dart';
import 'package:masanawa/src/features/rooms/room_community_screen.dart';
import 'package:masanawa/src/features/rooms/room_pinned_posts.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

Map<String, dynamic> post(String id, String text) => {
  'id': id,
  'body': text,
  'contentKind': 'post',
  'parentId': null,
  'pinned': true,
  'authorDisplayName': 'Amina',
  'createdAt': '2026-10-01T10:00:00.123456Z',
};
Map<String, dynamic> page(List<Map<String, dynamic>> rows, [String? next]) => {
  'paginationVersion': 1,
  'pinnedOnly': true,
  'items': rows,
  'nextCursor': next,
};

class _Pins extends FakeCommunityApi implements RoomTimelinePages {
  final reads = <Map<String, dynamic>>[], parents = <String?>[];
  bool fail = false, deny = false, repeat = false;
  Map<String, dynamic>? overridePage;
  Completer<Map<String, dynamic>>? delayed;
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async {
    reads.add({'room': id, 'method': method, 'resource': resource, ...values});
    if (overridePage != null) return overridePage!;
    if (values['cursor'] != null) {
      if (delayed != null) return delayed!.future;
      if (deny)
        throw DioException(
          requestOptions: RequestOptions(),
          response: Response(requestOptions: RequestOptions(), statusCode: 403),
        );
      if (fail) throw StateError('offline');
      return page([
        post('old', 'Older pinned post'),
        post('new', 'Latest pinned post'),
      ], repeat ? 'older' : null);
    }
    final search = values['search'] as String? ?? '';
    return page([
      post('new', search.isEmpty ? 'Latest pinned post' : 'Found $search'),
    ], 'older');
  }

  @override
  Future<RoomTimelinePage> timelinePage(
    String id, {
    String search = '',
    String? parentId,
    String? cursor,
  }) async {
    parents.add(parentId);
    final root = {
      ...post('new', 'Exact pinned source'),
      'attachments': [],
      'reactions': [],
    };
    return RoomTimelinePage(
      parentId == null ? [root] : [],
      null,
      parent: parentId == null ? null : root,
    );
  }
}

Future<void> mount(
  WidgetTester t,
  _Pins api, {
  String id = 'room_1',
  Future<void> Function(String)? open,
}) async {
  await t.pumpWidget(
    MaterialApp(
      home: RoomPinnedPosts(
        api: api,
        roomId: id,
        openPost: open ?? (_) async {},
      ),
    ),
  );
  await t.pumpAndSettle();
}

void main() {
  testWidgets(
    'pinned history pages and deduplicates, opens exact post and refreshes loaded prefix',
    (t) async {
      final api = _Pins(), opened = <String>[];
      await mount(
        t,
        api,
        open: (id) async {
          opened.add(id);
        },
      );
      await t.tap(find.text('Load older pinned posts'));
      await t.pumpAndSettle();
      expect(find.text('Older pinned post'), findsOneWidget);
      expect(find.text('Latest pinned post'), findsOneWidget);
      final before = api.reads.length;
      await t.tap(find.text('Latest pinned post'));
      await t.pumpAndSettle();
      expect(opened, ['new']);
      expect(api.reads.length - before, 2);
      expect(
        api.reads.every(
          (r) =>
              r['method'] == 'GET' &&
              r['resource'] == 'timeline' &&
              r['pinnedOnly'] == true,
        ),
        isTrue,
      );
    },
  );
  testWidgets(
    'failed older reads retain rows and exact cursor, while denial clears private content',
    (t) async {
      final api = _Pins()..fail = true;
      await mount(t, api);
      await t.tap(find.text('Load older pinned posts'));
      await t.pumpAndSettle();
      expect(find.text('Latest pinned post'), findsOneWidget);
      api.fail = false;
      await t.tap(find.text('Retry'));
      await t.pumpAndSettle();
      expect(api.reads.last['cursor'], 'older');
      await mount(t, _Pins()..deny = true);
      await t.tap(find.text('Load older pinned posts'));
      await t.pumpAndSettle();
      expect(find.text('Latest pinned post'), findsNothing);
      expect(find.textContaining('access may have changed'), findsOneWidget);
    },
  );
  testWidgets('late old page cannot cross search, Room or lost membership', (
    t,
  ) async {
    final api = _Pins()..delayed = Completer();
    await mount(t, api);
    await t.tap(find.text('Load older pinned posts'));
    await t.pump();
    await t.enterText(find.byType(TextField), 'literal%_');
    await t.pump(const Duration(milliseconds: 300));
    await t.pumpAndSettle();
    api.delayed!.complete(page([post('private', 'Stale private pin')]));
    await t.pumpAndSettle();
    expect(find.text('Stale private pin'), findsNothing);
    expect(find.text('Found literal%_'), findsOneWidget);
    api.role = null;
    await t.pump(const Duration(seconds: 20));
    await t.pumpAndSettle();
    expect(find.text('Found literal%_'), findsNothing);
  });
  testWidgets(
    'Info pinned history reaches exact original thread and restores both Back routes',
    (t) async {
      final api = _Pins();
      await t.pumpWidget(
        MaterialApp(
          home: RoomCommunityScreen(api: api, roomId: 'room_1'),
        ),
      );
      await t.pumpAndSettle();
      await t.tap(find.text('Garden'));
      await t.pumpAndSettle();
      await t.scrollUntilVisible(
        find.text('Pinned posts'),
        200,
        scrollable: find.byType(Scrollable).first,
      );
      await t.ensureVisible(find.text('Pinned posts'));
      await t.pumpAndSettle();
      await t.tap(find.text('Pinned posts'));
      await t.pumpAndSettle();
      await t.tap(find.text('Latest pinned post'));
      await t.pumpAndSettle();
      expect(api.parents, contains('new'));
      expect(find.text('Exact pinned source'), findsOneWidget);
      await t.pageBack();
      await t.pumpAndSettle();
      expect(find.text('Latest pinned post'), findsOneWidget);
      await t.pageBack();
      await t.pumpAndSettle();
      expect(find.text('Room info'), findsOneWidget);
    },
  );
  testWidgets('pinned controls remain usable at 320dp and 200 percent RTL', (
    t,
  ) async {
    t.view.physicalSize = const Size(320, 760);
    t.view.devicePixelRatio = 1;
    addTearDown(t.view.resetPhysicalSize);
    addTearDown(t.view.resetDevicePixelRatio);
    final api = _Pins();
    await t.pumpWidget(
      MaterialApp(
        builder: (_, child) => MediaQuery(
          data: const MediaQueryData(textScaler: TextScaler.linear(2)),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          ),
        ),
        home: RoomPinnedPosts(
          api: api,
          roomId: 'room_1',
          openPost: (_) async {},
        ),
      ),
    );
    await t.pumpAndSettle();
    expect(t.takeException(), isNull);
  });
  test('old gateway, unpinned and reply rows fail closed rather than claiming complete history', () async {
    final api = _Pins();
    for (final data in [
      {
        'paginationVersion': 1,
        'items': [post('p', 'Body')],
        'nextCursor': null,
      },
      page([
        {...post('p', 'Body'), 'pinned': false},
      ]),
      page([
        {...post('p', 'Body'), 'parentId': 'parent'},
      ]),
    ]) {
      api.overridePage = data;
      await expectLater(
        readRoomPinnedPage(api, 'room_1'),
        throwsFormatException,
      );
    }
  });
}
