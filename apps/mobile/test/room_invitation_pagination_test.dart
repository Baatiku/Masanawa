import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_community_api.dart';
import 'package:masanawa/src/features/rooms/room_invitation_links.dart';
import 'package:masanawa/src/features/rooms/rooms_screen.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

Map<String, dynamic> invite(String id, {String prefix = ''}) => {
  'inviteId': id,
  'roomId': 'room_$id',
  'name': '${prefix}Invitation $id',
  'expiresAt': '2026-10-24T12:00:00Z',
};

class _Pages extends FakeCommunityApi implements RoomInvitationPages {
  _Pages({this.prefix = ''});
  final String prefix;
  final cursors = <String?>[];
  bool fail = false, repeated = false;
  Completer<RoomInvitationPage>? pending;
  @override
  Future<RoomInvitationPage> invitationPage({String? cursor}) async {
    cursors.add(cursor);
    if (cursor == null)
      return RoomInvitationPage([invite('one', prefix: prefix)], 'next-page');
    if (pending != null) return pending!.future;
    if (fail) throw StateError('outage');
    return RoomInvitationPage([
      invite('one', prefix: prefix),
      invite('two', prefix: prefix),
    ], repeated ? 'next-page' : null);
  }
}

class _Journal implements RoomInvitationRequestStore {
  String? value;
  @override
  Future<String?> read() async => value;
  @override
  Future<void> write(String? key) async {
    value = key;
  }
}

Map<String, dynamic> record(
  String id,
  String key, {
  String status = 'active',
}) => {'inviteId': id, 'requestId': key, 'kind': 'code', 'status': status};

class _Links extends FakeCommunityApi {
  bool failMore = false, failLookup = false, repeated = false;
  final calls = <Map<String, dynamic>>[];
  String originalStatus = 'active';
  Completer<Map<String, dynamic>>? latePage;
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async {
    calls.add({'method': method, 'resource': resource, ...values});
    if (method != 'GET') throw StateError('unexpected writer');
    if (resource == 'invites/request') {
      if (failLookup) throw StateError('lookup outage');
      return {
        'issuanceVersion': 1,
        'item': record('original', 'pending', status: originalStatus),
      };
    }
    if (values['cursor'] != null) {
      if (latePage != null) return latePage!.future;
      if (failMore) throw StateError('page outage');
      return {
        'issuanceVersion': 1,
        'paginationVersion': 1,
        'items': [
          record('new', 'new'),
          record('old', 'old', status: 'expired'),
        ],
        'nextCursor': repeated ? 'older-page' : null,
      };
    }
    return {
      'issuanceVersion': 1,
      'paginationVersion': 1,
      'items': [record('new', 'new')],
      'nextCursor': 'older-page',
    };
  }
}

Future<void> root(WidgetTester tester, _Pages api) async {
  await tester.pumpWidget(MaterialApp(home: RoomsScreen(api: api)));
  await tester.pumpAndSettle();
}

Future<void> links(WidgetTester tester, _Links api, _Journal store) async {
  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: RoomInvitationLinks(
            api: api,
            roomId: 'room_1',
            store: store,
            newRequestId: () => throw StateError('unexpected new grant'),
          ),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> older(WidgetTester tester) async {
  await tester.scrollUntilVisible(
    find.text('Load older invitations'),
    150,
    scrollable: find.byType(Scrollable).first,
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text('Load older invitations'));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets(
    'incoming older page deduplicates previews and consumes the returned cursor',
    (tester) async {
      final api = _Pages();
      await root(tester, api);
      await older(tester);
      expect(api.cursors, [null, 'next-page']);
      expect(find.text('Invitation one'), findsOneWidget);
      expect(find.text('Invitation two'), findsOneWidget);
      expect(find.text('Load older invitations'), findsNothing);
    },
  );
  testWidgets(
    'incoming page outage retains current invitations and retries the same cursor',
    (tester) async {
      final api = _Pages()..fail = true;
      await root(tester, api);
      await older(tester);
      expect(find.text('Invitation one'), findsOneWidget);
      expect(
        find.textContaining('Could not load older invitations'),
        findsOneWidget,
      );
      api.fail = false;
      await older(tester);
      expect(api.cursors, [null, 'next-page', 'next-page']);
      expect(find.text('Invitation two'), findsOneWidget);
    },
  );
  testWidgets(
    'a repeated cursor fails closed instead of endless incoming appends',
    (tester) async {
      final api = _Pages()..repeated = true;
      await root(tester, api);
      await older(tester);
      expect(find.text('Invitation two'), findsNothing);
      expect(
        find.textContaining('Could not load older invitations'),
        findsOneWidget,
      );
    },
  );
  testWidgets('late older previews cannot enter a replacement account', (
    tester,
  ) async {
    final old = _Pages(prefix: 'Private ')
          ..pending = Completer<RoomInvitationPage>(),
        current = _Pages(prefix: 'Current ');
    await root(tester, old);
    await older(tester);
    await root(tester, current);
    old.pending!.complete(
      RoomInvitationPage([invite('hidden', prefix: 'Private ')], null),
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('Private Invitation'), findsNothing);
    expect(find.text('Current Invitation one'), findsOneWidget);
  });
  testWidgets(
    'manager older history deduplicates rows and preserves existing controls',
    (tester) async {
      final api = _Links();
      await links(tester, api, _Journal());
      await older(tester);
      expect(find.text('Invitation code'), findsNWidgets(2));
      expect(find.text('Load older invitations'), findsNothing);
      expect(api.calls.last['cursor'], 'older-page');
    },
  );
  testWidgets(
    'original issuance outside first page is recovered by its exact request, never reissued',
    (tester) async {
      final api = _Links(), store = _Journal()..value = 'pending';
      await links(tester, api, store);
      expect(find.text('Revoke original invitation'), findsOneWidget);
      expect(api.calls.last, containsPair('resource', 'invites/request'));
      expect(api.calls.last['requestId'], 'pending');
      expect(api.calls.every((v) => v['method'] == 'GET'), isTrue);
      expect(store.value, 'pending');
    },
  );
  testWidgets(
    'confirmed inactive original clears only its journal after direct readback',
    (tester) async {
      final api = _Links()..originalStatus = 'revoked',
          store = _Journal()..value = 'pending';
      await links(tester, api, store);
      expect(store.value, isNull);
      expect(find.text('Create invitation code'), findsOneWidget);
      expect(api.calls, hasLength(2));
    },
  );
  testWidgets(
    'failed original lookup retains uncertainty and blocks new issuance',
    (tester) async {
      final api = _Links()..failLookup = true,
          store = _Journal()..value = 'pending';
      await links(tester, api, store);
      expect(store.value, 'pending');
      expect(
        find.textContaining('Could not verify invitation status'),
        findsOneWidget,
      );
      expect(
        tester
            .widget<TextButton>(
              find.widgetWithText(
                TextButton,
                'Retry original invitation request',
              ),
            )
            .onPressed,
        isNull,
      );
    },
  );
  testWidgets(
    'manager page outage retains metadata and retries its unchanged cursor',
    (tester) async {
      final api = _Links()..failMore = true;
      await links(tester, api, _Journal());
      await older(tester);
      expect(find.text('Invitation code'), findsOneWidget);
      api.failMore = false;
      await older(tester);
      expect(api.calls.where((v) => v['cursor'] == 'older-page'), hasLength(2));
      expect(find.text('Invitation code'), findsNWidgets(2));
    },
  );
  test('transport puts incoming/manager cursors and request lookup in GET query, with no body', () async {
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
    await api.invitationPage(cursor: 'incoming');
    await api.request('room_1', 'GET', 'invites', {'cursor': 'manager'});
    await api.request('room_1', 'GET', 'invites/request', {
      'requestId': 'original',
    });
    expect(calls.map((r) => r.data), everyElement(isNull));
    expect(calls[0].queryParameters, {'cursor': 'incoming'});
    expect(calls[1].queryParameters, {'cursor': 'manager'});
    expect(calls[2].queryParameters, {'requestId': 'original'});
  });
  test(
    'account wrapper rejects a late page after session replacement',
    () async {
      final api = _Pages()..pending = Completer<RoomInvitationPage>();
      String? account = 'a';
      final bound = AccountBoundRoomCommunityApi(
        delegate: api,
        ownerAccount: 'a',
        currentAccount: () => account,
      );
      final pending = bound.invitationPage(cursor: 'next-page');
      account = 'b';
      api.pending!.complete(const RoomInvitationPage([], null));
      await expectLater(pending, throwsStateError);
    },
  );
}
