import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_community_api.dart';
import 'package:masanawa/src/features/rooms/room_media_library.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

Map<String, dynamic> file(String id, String name, {String kind = 'doc'}) => {
  'id': id,
  'name': name,
  'kind': kind,
  'sizeBytes': 1024,
  'createdAt': '2026-10-22T12:00:00Z',
  'sourcePostId': 'post_old',
  'sourceReplyId': 'reply_old',
};
Map<String, dynamic> page(List<Map<String, dynamic>> items, [String? next]) => {
  'paginationVersion': 1,
  'items': items,
  'nextCursor': next,
};
DioException forbidden() => DioException(
  requestOptions: RequestOptions(),
  response: Response(requestOptions: RequestOptions(), statusCode: 403),
);

class _Media extends FakeCommunityApi {
  bool failOlder = false, denyOlder = false, repeat = false, offline = false;
  Completer<Map<String, dynamic>>? delayedOlder, delayedSearch;
  Completer<CommunityRoom>? delayedRoom;
  final reads = <Map<String, dynamic>>[];
  @override
  Future<CommunityRoom> room(String id) =>
      delayedRoom?.future ?? super.room(id);
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async {
    reads.add({'room': id, 'method': method, 'resource': resource, ...values});
    if (offline) throw StateError('offline');
    if (values['cursor'] != null) {
      if (delayedOlder != null) return delayedOlder!.future;
      if (denyOlder) throw forbidden();
      if (failOlder) throw StateError('offline');
      return page([
        file('old', 'Older notes.pdf'),
        file('new', 'Recent notes.pdf'),
      ], repeat ? values['cursor'] as String : null);
    }
    final search = values['search'] as String? ?? '',
        kind = values['kind'] as String? ?? 'all';
    if (search == 'old' && delayedSearch != null) return delayedSearch!.future;
    if (search.isNotEmpty)
      return page([
        file('match', 'Found $search', kind: kind == 'all' ? 'doc' : kind),
      ]);
    return page([
      file('new', 'Recent notes.pdf', kind: kind == 'all' ? 'doc' : kind),
    ], 'older');
  }
}

Future<void> show(
  WidgetTester t,
  RoomCommunityApi api, {
  Future<void> Function(String)? open,
  String id = 'room_1',
}) async {
  await t.pumpWidget(
    MaterialApp(
      home: RoomMediaLibrary(
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
    'membership catch-up invalidates an older page already in flight',
    (t) async {
      final api = _Media()..delayedOlder = Completer();
      await show(t, api);
      await t.tap(find.text('Load older media'));
      await t.pump();
      api.role = null;
      await t.pump(const Duration(seconds: 20));
      await t.pumpAndSettle();
      api.delayedOlder!.complete(
        page([file('private', 'Revoked private file')]),
      );
      await t.pumpAndSettle();
      expect(find.text('Revoked private file'), findsNothing);
      expect(find.text('Recent notes.pdf'), findsNothing);
      expect(
        find.textContaining('Your access may have changed'),
        findsOneWidget,
      );
    },
  );
  testWidgets(
    'loads metadata only, pages and deduplicates files with source/date context',
    (t) async {
      final api = _Media();
      await show(t, api);
      expect(find.text('Recent notes.pdf'), findsOneWidget);
      expect(find.text('2026-10-22'), findsOneWidget);
      expect(find.textContaining('Comment attachment'), findsOneWidget);
      await t.tap(find.text('Load older media'));
      await t.pumpAndSettle();
      expect(find.text('Older notes.pdf'), findsOneWidget);
      expect(find.text('Recent notes.pdf'), findsOneWidget);
      expect(
        api.reads.every(
          (r) => r['method'] == 'GET' && r['resource'] == 'media',
        ),
        isTrue,
      );
      expect(api.reads.last['cursor'], 'older');
    },
  );
  testWidgets('a failed older page retains files and retries the same cursor', (
    t,
  ) async {
    final api = _Media()..failOlder = true;
    await show(t, api);
    await t.tap(find.text('Load older media'));
    await t.pumpAndSettle();
    expect(find.text('Recent notes.pdf'), findsOneWidget);
    expect(find.text('No shared media matches.'), findsNothing);
    api.failOlder = false;
    await t.tap(find.text('Retry'));
    await t.pumpAndSettle();
    expect(find.text('Older notes.pdf'), findsOneWidget);
    expect(api.reads.where((r) => r['cursor'] == 'older').length, 2);
  });
  testWidgets(
    'lost membership removes cached metadata without a successful empty state',
    (t) async {
      final api = _Media()..denyOlder = true;
      await show(t, api);
      await t.tap(find.text('Load older media'));
      await t.pumpAndSettle();
      expect(find.text('Recent notes.pdf'), findsNothing);
      expect(find.text('No shared media matches.'), findsNothing);
      expect(
        find.textContaining('Your access may have changed'),
        findsOneWidget,
      );
    },
  );
  testWidgets(
    'a repeated cursor is rejected without appending unverified pages',
    (t) async {
      final api = _Media()..repeat = true;
      await show(t, api);
      await t.tap(find.text('Load older media'));
      await t.pumpAndSettle();
      expect(find.text('Older notes.pdf'), findsNothing);
      expect(find.textContaining('could not be verified'), findsOneWidget);
    },
  );
  testWidgets(
    'search and type filters reset pages and clear searches on request',
    (t) async {
      final api = _Media();
      await show(t, api);
      await t.enterText(find.byType(TextField), '100%_#');
      await t.pump(const Duration(milliseconds: 300));
      await t.pumpAndSettle();
      expect(api.reads.last['search'], '100%_#');
      expect(find.text('Found 100%_#'), findsOneWidget);
      await t.tap(find.widgetWithText(ChoiceChip, 'Photos'));
      await t.pump(const Duration(milliseconds: 300));
      await t.pumpAndSettle();
      expect(api.reads.last['kind'], 'image');
      expect(api.reads.last['cursor'], isNull);
      await t.tap(find.byTooltip('Clear search'));
      await t.pump(const Duration(milliseconds: 300));
      await t.pumpAndSettle();
      expect(api.reads.last['search'], '');
      expect(api.reads.last['kind'], 'image');
    },
  );
  testWidgets(
    'late search and older responses cannot cross query generations',
    (t) async {
      final api = _Media()..delayedOlder = Completer();
      await show(t, api);
      await t.tap(find.text('Load older media'));
      await t.pump();
      await t.enterText(find.byType(TextField), 'fresh');
      await t.pump(const Duration(milliseconds: 300));
      await t.pumpAndSettle();
      api.delayedOlder!.complete(page([file('stale', 'Stale older file')]));
      await t.pumpAndSettle();
      expect(find.text('Stale older file'), findsNothing);
      expect(find.text('Found fresh'), findsOneWidget);
      api.delayedSearch = Completer();
      await t.enterText(find.byType(TextField), 'old');
      await t.pump(const Duration(milliseconds: 300));
      await t.pump();
      await t.enterText(find.byType(TextField), 'new');
      await t.pump(const Duration(milliseconds: 300));
      await t.pumpAndSettle();
      api.delayedSearch!.complete(page([file('stale', 'Stale search')]));
      await t.pumpAndSettle();
      expect(find.text('Stale search'), findsNothing);
      expect(find.text('Found new'), findsOneWidget);
    },
  );
  testWidgets(
    'source navigation uses the exact server parent and revalidates loaded pages on Back',
    (t) async {
      final api = _Media();
      final opened = <String>[];
      await show(
        t,
        api,
        open: (post) async {
          opened.add(post);
        },
      );
      await t.tap(find.text('Load older media'));
      await t.pumpAndSettle();
      final before = api.reads.length;
      await t.tap(find.text('Recent notes.pdf'));
      await t.pumpAndSettle();
      expect(opened, ['post_old']);
      expect(api.reads.length - before, 2);
      expect(find.text('Older notes.pdf'), findsOneWidget);
    },
  );
  testWidgets(
    'Room/API replacement rejects an old pending page and clears its search',
    (t) async {
      final api = _Media()..delayedOlder = Completer();
      await show(t, api);
      await t.tap(find.text('Load older media'));
      await t.pump();
      final replacement = _Media();
      await show(t, replacement, id: 'other');
      api.delayedOlder!.complete(
        page([file('private', 'Old account private file')]),
      );
      await t.pumpAndSettle();
      expect(find.text('Old account private file'), findsNothing);
      expect(replacement.reads.last['room'], 'other');
    },
  );
  testWidgets('old account source approval cannot call the new destination', (
    t,
  ) async {
    final api = _Media();
    final opened = <String>[];
    await show(
      t,
      api,
      open: (id) async {
        opened.add('old:$id');
      },
    );
    api.delayedRoom = Completer();
    await t.tap(find.text('Recent notes.pdf'));
    await t.pump();
    await show(
      t,
      _Media(),
      open: (id) async {
        opened.add('new:$id');
      },
    );
    api.delayedRoom!.complete(api.value);
    await t.pumpAndSettle();
    expect(opened, isEmpty);
  });
  testWidgets(
    'initial offline failure offers retry and never claims there are no files',
    (t) async {
      final api = _Media()..offline = true;
      await show(t, api);
      expect(find.text('No shared media matches.'), findsNothing);
      expect(find.text('Retry'), findsOneWidget);
      api.offline = false;
      await t.tap(find.text('Retry'));
      await t.pumpAndSettle();
      expect(find.text('Recent notes.pdf'), findsOneWidget);
    },
  );
  testWidgets(
    'all filters and long filenames remain usable at 320dp, 200% text and RTL',
    (t) async {
      t.view.physicalSize = const Size(320, 900);
      t.view.devicePixelRatio = 1;
      addTearDown(t.view.resetPhysicalSize);
      addTearDown(t.view.resetDevicePixelRatio);
      await t.pumpWidget(
        MaterialApp(
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(2)),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: child!,
            ),
          ),
          home: RoomMediaLibrary(
            api: _Media(),
            roomId: 'room_1',
            openPost: (_) async {},
          ),
        ),
      );
      await t.pumpAndSettle();
      expect(t.takeException(), isNull);
      expect(find.widgetWithText(ChoiceChip, 'Files'), findsOneWidget);
    },
  );
  test('typed reader rejects old/truncated protocol, unexpected bodies and mismatched kinds', () async {
    final api = _Response();
    for (final data in [
      <String, dynamic>{'items': []},
      page([file('one', 'File')])..['nextCursor'] = '',
      page([
        {...file('one', 'File'), 'dataBase64': 'private'},
      ]),
      page([
        {...file('one', 'File'), 'sourcePostId': ''},
      ]),
    ]) {
      api.data = data;
      await expectLater(
        readRoomMediaPage(api, 'room_1'),
        throwsFormatException,
      );
    }
    api.data = page([file('one', 'File')]);
    await expectLater(
      readRoomMediaPage(api, 'room_1', kind: 'image'),
      throwsFormatException,
    );
  });
  test(
    'HTTP read is a scoped GET query and late account response is fenced',
    () async {
      final http = Dio();
      final pending = Completer<void>();
      String? account = 'a';
      http.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) async {
            expect(options.method, 'GET');
            expect(options.data, isNull);
            expect(options.queryParameters, {
              'search': 'invoice',
              'kind': 'doc',
              'cursor': 'old',
            });
            expect(options.path, '/v1/rooms/room_1/community/media');
            await pending.future;
            handler.resolve(
              Response(
                requestOptions: options,
                data: page([file('one', 'Invoice')]),
              ),
            );
          },
        ),
      );
      final bound = AccountBoundRoomCommunityApi(
        delegate: HttpRoomCommunityApi(http),
        ownerAccount: 'a',
        currentAccount: () => account,
      );
      final result = readRoomMediaPage(
        bound,
        'room_1',
        search: 'invoice',
        kind: 'doc',
        cursor: 'old',
      );
      await Future<void>.delayed(Duration.zero);
      account = 'b';
      pending.complete();
      await expectLater(result, throwsStateError);
      http.close();
    },
  );
}

class _Response extends FakeCommunityApi {
  Map<String, dynamic> data = {};
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async => data;
}
