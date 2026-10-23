import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_community_api.dart';
import 'package:masanawa/src/features/rooms/rooms_screen.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

CommunityRoom makeRoom(String id, String name, {bool pinned = false}) =>
    CommunityRoom(
      id: id,
      name: name,
      visibility: 'public',
      postingPolicy: 'members',
      ownerId: 'owner',
      role: 'member',
      pinned: pinned,
    );

class _Pages extends FakeCommunityApi
    implements RoomListPages, RoomInvitationPages {
  _Pages({this.prefix = ''});
  final String prefix;
  final calls = <Map<String, dynamic>>[], invitationCursors = <String?>[];
  bool failMore = false,
      denyMore = false,
      repeated = false,
      showInvitations = false;
  Completer<RoomListPage>? pendingMore, pendingSearch;
  String delayedQuery = 'old';
  bool denyVisited = false, failVisited = false;
  int roomReads = 0;
  @override
  Future<CommunityRoom> room(String id) async {
    roomReads++;
    if (roomReads > 1 && denyVisited) {
      throw DioException(
        requestOptions: RequestOptions(),
        response: Response(requestOptions: RequestOptions(), statusCode: 403),
      );
    }
    if (roomReads > 1 && failVisited) throw StateError('outage');
    return CommunityRoom(
      id: id,
      name: '${prefix}Room two',
      visibility: 'public',
      postingPolicy: 'members',
      ownerId: 'owner',
      role: 'member',
    );
  }

  @override
  Future<RoomListPage> roomPage(
    bool joined, {
    String search = '',
    String? cursor,
  }) async {
    calls.add({'joined': joined, 'search': search, 'cursor': cursor});
    if (cursor != null) {
      if (pendingMore != null) return pendingMore!.future;
      if (denyMore)
        throw DioException(
          requestOptions: RequestOptions(),
          response: Response(requestOptions: RequestOptions(), statusCode: 403),
        );
      if (failMore) throw StateError('outage');
      return RoomListPage([
        makeRoom('room_one', '${prefix}Room one', pinned: true),
        makeRoom('room_two', '${prefix}Room two'),
      ], repeated ? 'rooms-next' : null);
    }
    if (search.isNotEmpty) {
      if (pendingSearch != null && search == delayedQuery)
        return pendingSearch!.future;
      return RoomListPage([
        makeRoom('room_match', '${prefix}Match $search'),
      ], null);
    }
    return RoomListPage([
      makeRoom('room_one', '${prefix}Room one', pinned: true),
    ], 'rooms-next');
  }

  @override
  Future<RoomInvitationPage> invitationPage({String? cursor}) async {
    invitationCursors.add(cursor);
    return RoomInvitationPage(
      showInvitations
          ? [
              {
                'inviteId': cursor == null ? 'inv_one' : 'inv_two',
                'roomId': 'room_invite',
                'name': cursor == null
                    ? 'Pending invitation'
                    : 'Older invitation',
              },
            ]
          : [],
      showInvitations && cursor == null ? 'inv-next' : null,
    );
  }
}

Future<void> mount(
  WidgetTester tester,
  _Pages api, {
  bool narrow = false,
}) async {
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
      home: RoomsScreen(api: api),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> more(
  WidgetTester tester, {
  String label = 'Load more Rooms',
}) async {
  await tester.scrollUntilVisible(
    find.text(label),
    150,
    scrollable: find.byType(Scrollable).first,
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text(label));
  await tester.pumpAndSettle();
}

Future<void> query(WidgetTester tester, String value) async {
  await tester.enterText(find.byType(TextField), value);
  await tester.pump(const Duration(milliseconds: 300));
  await tester.pumpAndSettle();
}

void main() {
  for (final mode in ['success', 'denied', 'outage']) {
    testWidgets('return from Room preserves older pages with $mode readback', (
      tester,
    ) async {
      final api = _Pages()
        ..denyVisited = mode == 'denied'
        ..failVisited = mode == 'outage';
      await mount(tester, api);
      await more(tester);
      await tester.tap(find.text('Room two'));
      await tester.pumpAndSettle();
      await tester.pageBack();
      await tester.pumpAndSettle();
      expect(api.calls.length, 2);
      expect(api.invitationCursors, [null]);
      expect(find.text('Room one'), findsOneWidget);
      expect(
        find.text('Room two'),
        mode == 'denied' ? findsNothing : findsOneWidget,
      );
      expect(find.text('No Rooms yet'), findsNothing);
    });
  }
  testWidgets(
    'clear search starts a fresh canonical first page without resetting invitations',
    (tester) async {
      final api = _Pages();
      await mount(tester, api);
      await query(tester, 'needle');
      await tester.tap(find.byTooltip('Clear Room search'));
      await tester.pump(const Duration(milliseconds: 300));
      await tester.pumpAndSettle();
      expect(api.calls.last, {'joined': true, 'search': '', 'cursor': null});
      expect(find.text('Room one'), findsOneWidget);
      expect(find.text('Match needle'), findsNothing);
      expect(api.invitationCursors, [null]);
    },
  );
  testWidgets(
    'debounced search goes to the server and does not refresh invitation pages',
    (tester) async {
      final api = _Pages();
      await mount(tester, api);
      await query(tester, 'needle');
      expect(api.calls.last, {
        'joined': true,
        'search': 'needle',
        'cursor': null,
      });
      expect(find.text('Match needle'), findsOneWidget);
      expect(api.invitationCursors, [null]);
      expect(find.text('Room one'), findsNothing);
    },
  );
  testWidgets('rapid typing sends only the final search intent', (
    tester,
  ) async {
    final api = _Pages();
    await mount(tester, api);
    await tester.enterText(find.byType(TextField), 'n');
    await tester.pump(const Duration(milliseconds: 80));
    await tester.enterText(find.byType(TextField), 'ne');
    await tester.pump(const Duration(milliseconds: 80));
    await query(tester, 'needle');
    expect(api.calls.map((v) => v['search']), ['', 'needle']);
  });
  testWidgets('late old search cannot overwrite the latest query', (
    tester,
  ) async {
    final api = _Pages()..pendingSearch = Completer<RoomListPage>();
    await mount(tester, api);
    await tester.enterText(find.byType(TextField), 'old');
    await tester.pump(const Duration(milliseconds: 300));
    await query(tester, 'new');
    api.pendingSearch!.complete(
      RoomListPage([makeRoom('room_old', 'Old private search')], null),
    );
    await tester.pumpAndSettle();
    expect(find.text('Match new'), findsOneWidget);
    expect(find.text('Old private search'), findsNothing);
  });
  testWidgets(
    'more Rooms appends distinct identities and preserves pinned ordering',
    (tester) async {
      final api = _Pages();
      await mount(tester, api);
      await more(tester);
      expect(find.text('Room one'), findsOneWidget);
      expect(find.text('Room two'), findsOneWidget);
      expect(find.byIcon(Icons.push_pin_outlined), findsOneWidget);
      expect(api.calls.last['cursor'], 'rooms-next');
      expect(find.text('Load more Rooms'), findsNothing);
    },
  );
  testWidgets('older-page outage keeps rows and retries the exact cursor', (
    tester,
  ) async {
    final api = _Pages()..failMore = true;
    await mount(tester, api);
    await more(tester);
    expect(find.text('Room one'), findsOneWidget);
    expect(find.textContaining('Could not load more Rooms'), findsOneWidget);
    api.failMore = false;
    await more(tester);
    expect(api.calls.where((v) => v['cursor'] == 'rooms-next'), hasLength(2));
    expect(find.text('Room two'), findsOneWidget);
  });
  testWidgets('non-progressing Room cursor does not append misleading rows', (
    tester,
  ) async {
    final api = _Pages()..repeated = true;
    await mount(tester, api);
    await more(tester);
    expect(find.text('Room two'), findsNothing);
    expect(find.textContaining('Could not load more Rooms'), findsOneWidget);
  });
  testWidgets('late older page cannot append into a new search', (
    tester,
  ) async {
    final api = _Pages()..pendingMore = Completer<RoomListPage>();
    await mount(tester, api);
    await more(tester);
    await query(tester, 'new');
    api.pendingMore!.complete(
      RoomListPage([makeRoom('room_secret', 'Old private page')], null),
    );
    await tester.pumpAndSettle();
    expect(find.text('Match new'), findsOneWidget);
    expect(find.text('Old private page'), findsNothing);
  });
  testWidgets('collection switch preserves search and starts a fresh cursor', (
    tester,
  ) async {
    final api = _Pages();
    await mount(tester, api);
    await query(tester, 'needle');
    await tester.tap(find.text('Discover'));
    await tester.pumpAndSettle();
    expect(api.calls.last, {
      'joined': false,
      'search': 'needle',
      'cursor': null,
    });
    expect(api.invitationCursors, [null]);
  });
  testWidgets('old account page cannot enter a replacement account', (
    tester,
  ) async {
    final old = _Pages(prefix: 'Private ')
          ..pendingMore = Completer<RoomListPage>(),
        current = _Pages(prefix: 'Current ');
    await mount(tester, old);
    await more(tester);
    await mount(tester, current);
    old.pendingMore!.complete(
      RoomListPage([makeRoom('room_secret', 'Private late Room')], null),
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('Private'), findsNothing);
    expect(find.text('Current Room one'), findsOneWidget);
  });
  testWidgets('Room searching preserves the independent invitation cursor', (
    tester,
  ) async {
    final api = _Pages()..showInvitations = true;
    await mount(tester, api);
    await query(tester, 'needle');
    await more(tester, label: 'Load older invitations');
    expect(api.invitationCursors, [null, 'inv-next']);
    expect(find.text('Pending invitation'), findsOneWidget);
    expect(find.text('Older invitation'), findsOneWidget);
    expect(find.text('Match needle'), findsOneWidget);
  });
  testWidgets(
    'lost page permission clears cached Room metadata without a false empty success',
    (tester) async {
      final api = _Pages()..denyMore = true;
      await mount(tester, api);
      await more(tester);
      expect(find.text('Room one'), findsNothing);
      expect(find.text('Create or discover a Room'), findsNothing);
      expect(find.textContaining('Could not load more Rooms'), findsOneWidget);
    },
  );
  testWidgets('320dp, 200 percent text and RTL keep paging usable', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await mount(tester, _Pages(), narrow: true);
    await more(tester);
    expect(find.text('Room two'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
  test(
    'transport binds search/cursor/collection through GET query without body',
    () async {
      final calls = <RequestOptions>[], dio = Dio();
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (r, h) {
            calls.add(r);
            h.resolve(
              Response(
                requestOptions: r,
                data: {
                  'paginationVersion': 1,
                  'items': <Map<String, dynamic>>[],
                  'nextCursor': null,
                },
              ),
            );
          },
        ),
      );
      final api = HttpRoomCommunityApi(dio);
      await api.roomPage(true, search: 'literal %_#', cursor: 'original');
      await api.roomPage(false, search: 'other');
      expect(calls.first.path, '/v1/rooms/mine');
      expect(calls.first.queryParameters, {
        'search': 'literal %_#',
        'cursor': 'original',
      });
      expect(calls.last.path, '/v1/rooms/discover');
      expect(calls.map((v) => v.data), everyElement(isNull));
    },
  );
  test(
    'account wrapper rejects a late Room page after session replacement',
    () async {
      final api = _Pages()..pendingMore = Completer<RoomListPage>();
      String? current = 'a';
      final bound = AccountBoundRoomCommunityApi(
        delegate: api,
        ownerAccount: 'a',
        currentAccount: () => current,
      );
      final result = bound.roomPage(true, cursor: 'rooms-next');
      current = 'b';
      api.pendingMore!.complete(const RoomListPage([], null));
      await expectLater(result, throwsStateError);
    },
  );
}
