import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:masanawa/src/features/rooms/room_community_api.dart';
import 'package:masanawa/src/features/rooms/room_community_screen.dart';
import 'package:masanawa/src/features/rooms/room_roster_screen.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

Map<String, dynamic> rosterMember(
  String id,
  String name, {
  String role = 'member',
}) => {
  'userId': id,
  'displayName': name,
  'handle': 'public_handle',
  'role': role,
  'state': 'active',
};
Map<String, dynamic> page(List<Map<String, dynamic>> rows, [String? cursor]) =>
    {'paginationVersion': 1, 'items': rows, 'nextCursor': cursor};

class _Api extends FakeCommunityApi {
  bool failOlder = false, denyOlder = false, repeat = false, offline = false;
  Completer<Map<String, dynamic>>? delayedOlder, delayedSearch;
  final reads = <Map<String, dynamic>>[], changes = <Map<String, dynamic>>[];
  String memberRole = 'member';
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async {
    if (resource != 'members/page')
      return super.request(id, method, resource, values);
    reads.add({'room': id, 'method': method, ...values});
    if (offline) throw StateError('offline');
    if (values['cursor'] != null) {
      if (delayedOlder != null) return delayedOlder!.future;
      if (denyOlder)
        throw DioException(
          requestOptions: RequestOptions(),
          response: Response(requestOptions: RequestOptions(), statusCode: 403),
        );
      if (failOlder) throw StateError('offline');
      return page([
        rosterMember('user_old', 'Grace'),
        rosterMember('user_new', 'Amina', role: memberRole),
      ], repeat ? 'next' : null);
    }
    final query = values['search'] as String? ?? '';
    if (query == 'old' && delayedSearch != null) return delayedSearch!.future;
    if (query.isNotEmpty)
      return page([rosterMember('user_match', 'Match $query')]);
    return page([rosterMember('user_new', 'Amina', role: memberRole)], 'next');
  }

  @override
  Future<void> member(
    String id,
    String userId,
    Map<String, dynamic> values,
  ) async {
    changes.add({'room': id, 'userId': userId, ...values});
    memberRole = values['role'] as String? ?? memberRole;
  }
}

const banVersion = '2026-10-01T10:00:00.123456Z';
Map<String, dynamic> bannedMember(String id, String name) => {
  ...rosterMember(id, name),
  'state': 'banned',
  'membershipVersion': banVersion,
};

class _BannedApi extends _Api {
  bool unbanned = false, badVersion = false;
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async {
    if (resource != 'members/page' || values['state'] != 'banned')
      return super.request(id, method, resource, values);
    reads.add({'room': id, 'method': method, ...values});
    if (offline) throw StateError('offline');
    if (values['cursor'] != null)
      return page([bannedMember('user_old', 'Banned Grace')]);
    if (unbanned) return page([]);
    final person = bannedMember('user_new', 'Banned Amina');
    if (badVersion) person.remove('membershipVersion');
    return page([person], 'next');
  }

  @override
  Future<void> member(
    String id,
    String userId,
    Map<String, dynamic> values,
  ) async {
    await super.member(id, userId, values);
    unbanned = true;
  }
}

Future<void> mount(
  WidgetTester t,
  RoomCommunityApi api, {
  String id = 'room_1',
  bool bannedOnly = false,
  Future<void> Function(Map<String, dynamic>, String)? manage,
}) async {
  await t.pumpWidget(
    MaterialApp(
      home: RoomRosterScreen(
        api: api,
        roomId: id,
        onManage: manage,
        bannedOnly: bannedOnly,
      ),
    ),
  );
  await t.pumpAndSettle();
}

void main() {
  testWidgets(
    'banned roster pages expose only unban and preserve selected version',
    (t) async {
      final api = _BannedApi()..role = 'owner';
      final actions = <Map<String, dynamic>>[];
      await mount(
        t,
        api,
        bannedOnly: true,
        manage: (person, action) async {
          actions.add({...person, 'action': action});
          api.unbanned = true;
        },
      );
      expect(find.text('Banned Amina'), findsOneWidget);
      await t.tap(find.text('Load more members'));
      await t.pumpAndSettle();
      expect(find.text('Banned Grace'), findsOneWidget);
      await t.tap(find.byTooltip('Manage member').first);
      await t.pumpAndSettle();
      expect(find.text('Make admin'), findsNothing);
      expect(find.text('Offer ownership'), findsNothing);
      await t.tap(find.text('Unban member'));
      await t.pumpAndSettle();
      expect(actions.single['membershipVersion'], banVersion);
      expect(actions.single['action'], 'unban');
      expect(api.reads.every((r) => r['state'] == 'banned'), isTrue);
      expect(find.text('Banned Amina'), findsNothing);
    },
  );
  testWidgets(
    'banned identities clear after manager downgrade and ordinary members never fetch them',
    (t) async {
      final api = _BannedApi()..role = 'owner';
      await mount(t, api, bannedOnly: true);
      expect(find.text('Banned Amina'), findsOneWidget);
      api.role = 'member';
      await t.pump(const Duration(seconds: 20));
      await t.pumpAndSettle();
      expect(find.text('Banned Amina'), findsNothing);
      expect(find.textContaining('access may have changed'), findsOneWidget);
      final ordinary = _BannedApi()..role = 'member';
      await mount(t, ordinary, bannedOnly: true);
      expect(ordinary.reads, isEmpty);
    },
  );
  testWidgets('malformed banned versions are rejected before management', (
    t,
  ) async {
    final api = _BannedApi()
      ..role = 'owner'
      ..badVersion = true;
    await mount(t, api, bannedOnly: true, manage: (_, __) async {});
    expect(find.text('Banned Amina'), findsNothing);
    expect(find.byTooltip('Manage member'), findsNothing);
    expect(find.textContaining('could not be verified'), findsOneWidget);
  });
  testWidgets(
    'Info unban confirmation sends left with original version and never restores active access',
    (t) async {
      FlutterSecureStorage.setMockInitialValues({});
      final api = _BannedApi()..role = 'owner';
      await t.pumpWidget(
        MaterialApp(
          home: RoomCommunityScreen(api: api, roomId: 'room_1'),
        ),
      );
      await t.pumpAndSettle();
      await t.tap(find.text('Garden'));
      await t.pumpAndSettle();
      await t.scrollUntilVisible(
        find.text('Banned members'),
        200,
        scrollable: find.byType(Scrollable).first,
      );
      await t.tap(find.text('Banned members'));
      await t.pumpAndSettle();
      await t.tap(find.byTooltip('Manage member'));
      await t.pumpAndSettle();
      await t.tap(find.text('Unban member'));
      await t.pumpAndSettle();
      expect(find.text('Unban member?'), findsOneWidget);
      expect(api.changes, isEmpty);
      await t.tap(find.text('Confirm'));
      await t.pumpAndSettle();
      expect(api.changes.single, {
        'room': 'room_1',
        'userId': 'user_new',
        'state': 'left',
        'expectedBannedAt': banVersion,
      });
      expect(find.text('Banned Amina'), findsNothing);
    },
  );

  testWidgets(
    'old-account confirmation cannot remove a member under a replaced session',
    (t) async {
      FlutterSecureStorage.setMockInitialValues({});
      String? account = 'alice';
      final delegate = _Api()..role = 'owner';
      final bound = AccountBoundRoomCommunityApi(
        delegate: delegate,
        ownerAccount: 'alice',
        currentAccount: () => account,
      );
      await t.pumpWidget(
        MaterialApp(
          home: RoomCommunityScreen(api: bound, roomId: 'room_1'),
        ),
      );
      await t.pumpAndSettle();
      await t.tap(find.text('Garden'));
      await t.pumpAndSettle();
      await t.scrollUntilVisible(
        find.text('All members'),
        200,
        scrollable: find.byType(Scrollable).first,
      );
      await t.tap(find.text('All members'));
      await t.pumpAndSettle();
      await t.tap(find.byTooltip('Manage member'));
      await t.pumpAndSettle();
      await t.tap(find.text('Remove member'));
      await t.pumpAndSettle();
      account = 'bob';
      await t.tap(find.text('Confirm'));
      await t.pumpAndSettle();
      expect(delegate.changes, isEmpty);
      expect(find.text('Amina'), findsNothing);
    },
  );
  testWidgets(
    'an administrator cannot manage another administrator through the roster',
    (t) async {
      final api = _Api()
        ..role = 'admin'
        ..memberRole = 'admin';
      await mount(t, api, manage: (_, __) async {});
      expect(find.byTooltip('Manage member'), findsNothing);
    },
  );

  testWidgets(
    'pages all visible names, deduplicates and never displays transport IDs',
    (t) async {
      final api = _Api();
      await mount(t, api);
      expect(find.text('Amina'), findsOneWidget);
      expect(find.text('user_new'), findsNothing);
      await t.tap(find.text('Load more members'));
      await t.pumpAndSettle();
      expect(find.text('Grace'), findsOneWidget);
      expect(find.text('Amina'), findsOneWidget);
      expect(api.reads.last['cursor'], 'next');
      expect(api.reads.every((r) => r['method'] == 'GET'), isTrue);
    },
  );
  testWidgets('older-page error retains rows and retries its original cursor', (
    t,
  ) async {
    final api = _Api()..failOlder = true;
    await mount(t, api);
    await t.tap(find.text('Load more members'));
    await t.pumpAndSettle();
    expect(find.text('Amina'), findsOneWidget);
    expect(find.text('No members match this search.'), findsNothing);
    api.failOlder = false;
    await t.tap(find.text('Retry'));
    await t.pumpAndSettle();
    expect(find.text('Grace'), findsOneWidget);
    expect(api.reads.where((r) => r['cursor'] == 'next'), hasLength(2));
  });
  testWidgets(
    'denied paging clears private rows without reporting a successful empty result',
    (t) async {
      final api = _Api()..denyOlder = true;
      await mount(t, api);
      await t.tap(find.text('Load more members'));
      await t.pumpAndSettle();
      expect(find.text('Amina'), findsNothing);
      expect(find.textContaining('access may have changed'), findsOneWidget);
      expect(find.text('No members match this search.'), findsNothing);
    },
  );
  testWidgets(
    'repeated cursors fail closed without appending a duplicate page',
    (t) async {
      final api = _Api()..repeat = true;
      await mount(t, api);
      await t.tap(find.text('Load more members'));
      await t.pumpAndSettle();
      expect(find.text('Grace'), findsNothing);
      expect(find.textContaining('could not be verified'), findsOneWidget);
    },
  );
  testWidgets('literal name search and clear discard previous pages', (
    t,
  ) async {
    final api = _Api();
    await mount(t, api);
    await t.enterText(find.byType(TextField), '100%_!');
    await t.pump(const Duration(milliseconds: 300));
    await t.pumpAndSettle();
    expect(api.reads.last['search'], '100%_!');
    expect(find.text('Amina'), findsNothing);
    await t.tap(find.byTooltip('Clear member search'));
    await t.pump(const Duration(milliseconds: 300));
    await t.pumpAndSettle();
    expect(api.reads.last['search'], '');
    expect(api.reads.last['cursor'], isNull);
    expect(find.text('Amina'), findsOneWidget);
  });
  testWidgets('late query and older replies cannot leak into a new search', (
    t,
  ) async {
    final api = _Api()..delayedOlder = Completer();
    await mount(t, api);
    await t.tap(find.text('Load more members'));
    await t.pump();
    await t.enterText(find.byType(TextField), 'new');
    await t.pump(const Duration(milliseconds: 300));
    await t.pumpAndSettle();
    api.delayedOlder!.complete(
      page([rosterMember('old', 'Private old member')]),
    );
    await t.pumpAndSettle();
    expect(find.text('Private old member'), findsNothing);
    expect(find.text('Match new'), findsOneWidget);
    api.delayedSearch = Completer();
    await t.enterText(find.byType(TextField), 'old');
    await t.pump(const Duration(milliseconds: 300));
    await t.pump();
    await t.enterText(find.byType(TextField), 'fresh');
    await t.pump(const Duration(milliseconds: 300));
    await t.pumpAndSettle();
    api.delayedSearch!.complete(page([rosterMember('stale', 'Stale name')]));
    await t.pumpAndSettle();
    expect(find.text('Stale name'), findsNothing);
  });
  testWidgets('API/Room replacement fences a pending private page', (t) async {
    final old = _Api()..delayedOlder = Completer();
    await mount(t, old);
    await t.tap(find.text('Load more members'));
    await t.pump();
    final next = _Api();
    await mount(t, next, id: 'other');
    old.delayedOlder!.complete(
      page([rosterMember('private', 'Old account name')]),
    );
    await t.pumpAndSettle();
    expect(find.text('Old account name'), findsNothing);
    expect(next.reads.last['room'], 'other');
  });
  testWidgets(
    'membership catch-up invalidates an older response already in flight',
    (t) async {
      final api = _Api()..delayedOlder = Completer();
      await mount(t, api);
      await t.tap(find.text('Load more members'));
      await t.pump();
      api.role = null;
      await t.pump(const Duration(seconds: 20));
      await t.pumpAndSettle();
      api.delayedOlder!.complete(
        page([rosterMember('private', 'Revoked name')]),
      );
      await t.pumpAndSettle();
      expect(find.text('Revoked name'), findsNothing);
      expect(find.text('Amina'), findsNothing);
    },
  );
  testWidgets(
    'manager callback uses the exact older member and canonically refreshes loaded pages',
    (t) async {
      final api = _Api()..role = 'owner';
      final actions = <Map<String, dynamic>>[];
      await mount(
        t,
        api,
        manage: (person, action) async {
          actions.add({'id': person['userId'], 'action': action});
        },
      );
      await t.tap(find.text('Load more members'));
      await t.pumpAndSettle();
      await t.tap(find.byTooltip('Manage member').last);
      await t.pumpAndSettle();
      await t.tap(find.text('Make admin'));
      await t.pumpAndSettle();
      expect(actions.single, {'id': 'user_old', 'action': 'admin'});
      expect(find.text('Grace'), findsOneWidget);
    },
  );
  testWidgets(
    'unknown management result blocks another mutation until read-only refresh',
    (t) async {
      final api = _Api()..role = 'owner';
      var writes = 0;
      await mount(
        t,
        api,
        manage: (_, __) async {
          writes++;
          throw StateError('unknown result');
        },
      );
      await t.tap(find.byTooltip('Manage member'));
      await t.pumpAndSettle();
      await t.tap(find.text('Make admin'));
      await t.pumpAndSettle();
      expect(writes, 1);
      expect(find.textContaining('Could not confirm'), findsOneWidget);
      expect(
        t
            .widget<PopupMenuButton<String>>(
              find.byType(PopupMenuButton<String>),
            )
            .enabled,
        isFalse,
      );
      await t.tap(find.text('Retry'));
      await t.pumpAndSettle();
      expect(
        t
            .widget<PopupMenuButton<String>>(
              find.byType(PopupMenuButton<String>),
            )
            .enabled,
        isTrue,
      );
    },
  );
  testWidgets(
    'Room Info opens paged members and applies its existing authority callback',
    (t) async {
      final api = _Api()..role = 'owner';
      await t.pumpWidget(
        MaterialApp(
          home: RoomCommunityScreen(api: api, roomId: 'room_1'),
        ),
      );
      await t.pumpAndSettle();
      await t.tap(find.text('Garden'));
      await t.pumpAndSettle();
      await t.scrollUntilVisible(
        find.text('All members'),
        200,
        scrollable: find.byType(Scrollable).first,
      );
      await t.tap(find.text('All members'));
      await t.pumpAndSettle();
      await t.tap(find.byTooltip('Manage member'));
      await t.pumpAndSettle();
      await t.tap(find.text('Make admin'));
      await t.pumpAndSettle();
      expect(api.changes.single, {
        'room': 'room_1',
        'userId': 'user_new',
        'role': 'admin',
      });
      expect(find.text('admin'), findsOneWidget);
      await t.pageBack();
      await t.pumpAndSettle();
      expect(find.text('Room info'), findsOneWidget);
    },
  );
  testWidgets(
    'all names and controls remain usable at 320dp, 200 percent and RTL',
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
          home: RoomRosterScreen(api: _Api(), roomId: 'room_1'),
        ),
      );
      await t.pumpAndSettle();
      expect(t.takeException(), isNull);
      expect(find.text('Amina'), findsOneWidget);
    },
  );
  test('roster reader rejects old capped protocol, malformed cursors and private/inactive shapes', () async {
    final api = _Raw();
    for (final value in [
      <String, dynamic>{'items': []},
      page([rosterMember('one', 'Person')])..['nextCursor'] = '',
      page([
        {...rosterMember('one', 'Person'), 'state': 'banned'},
      ]),
      page([
        {...rosterMember('one', 'Person'), 'role': 'forged'},
      ]),
    ]) {
      api.data = value;
      await expectLater(readRoomRoster(api, 'room_1'), throwsFormatException);
    }
  });
  test('HTTP roster search/cursor are GET query parameters and late account replies are fenced', () async {
    final http = Dio(), done = Completer<void>();
    String? account = 'alice';
    http.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          expect(options.method, 'GET');
          expect(options.data, isNull);
          expect(options.queryParameters, {
            'search': 'Amina',
            'cursor': 'next',
          });
          expect(options.path, '/v1/rooms/room_1/community/members/page');
          await done.future;
          handler.resolve(
            Response(
              requestOptions: options,
              data: page([rosterMember('user_one', 'Amina')]),
            ),
          );
        },
      ),
    );
    final api = AccountBoundRoomCommunityApi(
      delegate: HttpRoomCommunityApi(http),
      ownerAccount: 'alice',
      currentAccount: () => account,
    );
    final pending = readRoomRoster(
      api,
      'room_1',
      search: 'Amina',
      cursor: 'next',
    );
    await Future<void>.delayed(Duration.zero);
    account = 'bob';
    done.complete();
    await expectLater(pending, throwsStateError);
    http.close();
  });
}

class _Raw extends FakeCommunityApi {
  Map<String, dynamic> data = {};
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async => data;
}
