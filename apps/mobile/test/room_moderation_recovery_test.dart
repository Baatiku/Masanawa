import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:masanawa/src/features/rooms/room_community_api.dart';
import 'package:masanawa/src/features/rooms/room_moderation_screen.dart';
import 'package:masanawa/src/features/rooms/room_moderation_request.dart';

import 'room_moderation_screen_test.dart' show ModerationTestApi;

class _Store implements RoomModerationRequestStore {
  String? value;
  bool failRead = false, failWrite = false, failDelete = false;
  @override
  Future<String?> read() async {
    if (failRead) throw StateError('storage');
    return value;
  }

  @override
  Future<void> write(String? next) async {
    if (next == null ? failDelete : failWrite) throw StateError('storage');
    value = next;
  }
}

class _Api extends ModerationTestApi {
  bool unsupported = false,
      failBeforeCommit = false,
      hideFirst = false,
      failLookup = false,
      wrongReceipt = false;
  Completer<Map<String, dynamic>>? lookupPending;
  Completer<CommunityRoom>? roomPending;
  @override
  Future<CommunityRoom> room(String id) =>
      roomPending?.future ?? super.room(id);
  final attempts = <Map<String, dynamic>>[], reads = <String>[];
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async {
    if (method == 'GET') {
      reads.add(resource);
      if (resource == 'moderation/operations') {
        if (lookupPending != null) return lookupPending!.future;
        if (failLookup) throw StateError('offline');
        if (unsupported) return {'items': []};
        if (wrongReceipt)
          return {
            'operationVersion': 1,
            'item': {
              'action': 'appeal',
              'appealId': 'foreign',
              'reviewId': 'foreign',
              'status': 'pending',
            },
          };
      }
      if (hideFirst &&
          const ['moderation/cases', 'moderation/appeals'].contains(resource))
        return {'moderationVersion': 1, 'items': []};
    } else {
      attempts.add({'path': resource, ...values});
      if (failBeforeCommit) throw StateError('offline_before_commit');
    }
    return super.request(id, method, resource, values);
  }
}

PendingRoomModeration saved({bool decision = false}) => PendingRoomModeration(
  decision
      ? 'moderation/appeals/appeal_1/review'
      : 'moderation/cases/review_1/appeal',
  {
    'requestId': 'original_saved',
    if (decision) 'decision': 'upheld',
    decision ? 'publicReason' : 'reason': 'Original private context',
  },
);
Future<void> mount(
  WidgetTester tester,
  _Api api,
  _Store store, {
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
      home: RoomModerationScreen(
        api: api,
        roomId: 'room_1',
        requestStore: store,
      ),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> tap(WidgetTester tester, String text) async {
  await tester.scrollUntilVisible(
    find.text(text),
    150,
    scrollable: find.byType(Scrollable).first,
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text(text));
  await tester.pumpAndSettle();
}

Future<void> appeal(WidgetTester tester) async {
  await tap(tester, 'Appeal removal');
  await tester.enterText(find.byType(TextField), 'Original private context');
  await tester.tap(find.text('Confirm'));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets(
    'old Room read cannot query a replacement accounts pending identity',
    (tester) async {
      final first = _Api()..roomPending = Completer<CommunityRoom>();
      final oldStore = _Store()..value = saved().encode();
      await tester.pumpWidget(
        MaterialApp(
          home: RoomModerationScreen(
            api: first,
            roomId: 'room_1',
            requestStore: oldStore,
          ),
        ),
      );
      await tester.pump();
      final next = _Api();
      final newStore = _Store()
        ..value = PendingRoomModeration(saved().path, {
          ...saved().payload,
          'requestId': 'new_account_identity',
        }).encode();
      await mount(tester, next, newStore);
      first.roomPending!.complete(first.value);
      await tester.pumpAndSettle();
      expect(first.reads, isEmpty);
      expect(newStore.value, contains('new_account_identity'));
      expect(next.attempts, isEmpty);
    },
  );

  testWidgets(
    'clearing a saved retry is explicit and does not claim server cancellation',
    (tester) async {
      final api = _Api(), store = _Store()..value = saved().encode();
      await mount(tester, api, store);
      await tap(tester, 'Clear saved retry');
      await tester.tap(find.text('Cancel'));
      await tester.pumpAndSettle();
      expect(store.value, isNotNull);
      await tap(tester, 'Clear saved retry');
      await tester.tap(find.widgetWithText(FilledButton, 'Clear saved retry'));
      await tester.pumpAndSettle();
      expect(store.value, isNull);
      expect(api.attempts, isEmpty);
      expect(
        find.textContaining('A delayed request may still complete'),
        findsOneWidget,
      );
      expect(
        tester
            .widget<TextButton>(
              find.widgetWithText(TextButton, 'Appeal removal'),
            )
            .onPressed,
        isNull,
      );
      await tap(tester, 'Refresh moderation status');
      expect(
        tester
            .widget<TextButton>(
              find.widgetWithText(TextButton, 'Appeal removal'),
            )
            .onPressed,
        isNotNull,
      );
    },
  );

  testWidgets(
    'restart restores original request without automatically submitting',
    (tester) async {
      final api = _Api(), store = _Store()..value = saved().encode();
      await mount(tester, api, store);
      expect(api.attempts, isEmpty);
      expect(
        find.text('Original moderation request needs confirmation'),
        findsOneWidget,
      );
      expect(
        tester
            .widget<TextButton>(
              find.widgetWithText(TextButton, 'Appeal removal'),
            )
            .onPressed,
        isNull,
      );
      await tap(tester, 'Retry saved moderation request');
      await tester.tap(find.text('Cancel'));
      await tester.pumpAndSettle();
      expect(api.attempts, isEmpty);
    },
  );
  testWidgets(
    'retry explicitly reuses saved payload and exact older author case',
    (tester) async {
      final api = _Api(), store = _Store()..value = saved().encode();
      await mount(tester, api, store);
      await tap(tester, 'Retry saved moderation request');
      await tester.tap(find.text('Retry original'));
      await tester.pumpAndSettle();
      expect(api.attempts.single, {'path': saved().path, ...saved().payload});
      expect(store.value, isNull);
      expect(api.reads, contains('moderation/cases/review_1'));
      expect(
        find.textContaining('Original appeal operation confirmed: pending'),
        findsOneWidget,
      );
    },
  );
  testWidgets(
    'lost committed response is recovered by read only after restart',
    (tester) async {
      final api = _Api()..loseResponse = true, store = _Store();
      await mount(tester, api, store);
      await appeal(tester);
      expect(store.value, isNotNull);
      expect(api.attempts, hasLength(1));
      await tester.pumpWidget(const SizedBox());
      await tester.pump();
      api.hideFirst = true;
      await mount(tester, api, store);
      expect(api.attempts, hasLength(1));
      expect(store.value, isNull);
      expect(find.text('Awaiting review'), findsOneWidget);
      expect(find.text('Appeal removal'), findsNothing);
    },
  );
  testWidgets(
    'older completed manager decision survives movement outside first page',
    (tester) async {
      final api = _Api()
        ..role = 'owner'
        ..hideFirst = true;
      api.appeals.single['status'] = 'upheld';
      api.appeals.single['canReview'] = false;
      api.writes.add({
        'resource': saved(decision: true).path,
        ...saved(decision: true).payload,
      });
      final store = _Store()..value = saved(decision: true).encode();
      await mount(tester, api, store);
      expect(api.attempts, isEmpty);
      expect(api.reads, contains('moderation/appeals/appeal_1'));
      expect(store.value, isNull);
      expect(find.text('Removal upheld'), findsOneWidget);
    },
  );
  testWidgets(
    'secure draft write failure prevents POST and keeps original pending',
    (tester) async {
      final api = _Api(), store = _Store()..failWrite = true;
      await mount(tester, api, store);
      await appeal(tester);
      expect(api.attempts, isEmpty);
      expect(
        find.text('Original moderation request needs confirmation'),
        findsOneWidget,
      );
      store.failWrite = false;
      await tap(tester, 'Check original request status');
      await tap(tester, 'Retry saved moderation request');
      await tester.tap(find.text('Retry original'));
      await tester.pumpAndSettle();
      expect(api.attempts, hasLength(1));
    },
  );
  testWidgets(
    'journal deletion failure retains the committed original for readback retry',
    (tester) async {
      final api = _Api(), store = _Store()..failDelete = true;
      await mount(tester, api, store);
      await appeal(tester);
      expect(store.value, isNotNull);
      expect(api.attempts, hasLength(1));
      store.failDelete = false;
      await tap(tester, 'Check original request status');
      expect(store.value, isNull);
      expect(api.attempts, hasLength(1));
    },
  );
  testWidgets('older gateway cannot receive new moderation mutations', (
    tester,
  ) async {
    final api = _Api()..unsupported = true, store = _Store();
    await mount(tester, api, store);
    await appeal(tester);
    expect(api.attempts, isEmpty);
    expect(store.value, isNull);
  });
  testWidgets('failed original lookup never unlocks retry or clears pending', (
    tester,
  ) async {
    final api = _Api()..failLookup = true,
        store = _Store()..value = saved().encode();
    await mount(tester, api, store);
    expect(api.attempts, isEmpty);
    expect(store.value, isNotNull);
    expect(
      tester
          .widget<TextButton>(
            find.widgetWithText(TextButton, 'Retry saved moderation request'),
          )
          .onPressed,
      isNull,
    );
  });
  testWidgets('mismatched receipt cannot clear another original', (
    tester,
  ) async {
    final api = _Api()..wrongReceipt = true,
        store = _Store()..value = saved().encode();
    await mount(tester, api, store);
    expect(store.value, isNotNull);
    expect(api.attempts, isEmpty);
    expect(find.textContaining('operation confirmed'), findsNothing);
  });
  testWidgets('late old account status cannot replace new account state', (
    tester,
  ) async {
    final first = _Api()..lookupPending = Completer<Map<String, dynamic>>(),
        oldStore = _Store()..value = saved().encode();
    await tester.pumpWidget(
      MaterialApp(
        home: RoomModerationScreen(
          api: first,
          roomId: 'room_1',
          requestStore: oldStore,
        ),
      ),
    );
    await tester.pump();
    final next = _Api()..cases.clear();
    await mount(tester, next, _Store());
    first.lookupPending!.complete({'operationVersion': 1, 'item': null});
    await tester.pumpAndSettle();
    expect(
      find.text('Original moderation request needs confirmation'),
      findsNothing,
    );
    expect(next.attempts, isEmpty);
    expect(oldStore.value, isNotNull);
  });
  testWidgets('320dp 200 percent RTL keeps recovery controls reachable', (
    tester,
  ) async {
    final api = _Api(), store = _Store()..value = saved().encode();
    await mount(tester, api, store, narrow: true);
    await tap(tester, 'Retry saved moderation request');
    expect(find.text('Retry original moderation request?'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
  test('pending schema rejects foreign routes, malformed decisions and oversized payloads', () {
    expect(
      () => PendingRoomModeration('https://outside.invalid', {
        'reason': 'x',
        'requestId': 'x',
      }),
      throwsFormatException,
    );
    expect(
      () => PendingRoomModeration('moderation/cases/review_1/appeal', {
        'reason': '',
        'requestId': 'x',
      }),
      throwsFormatException,
    );
    expect(
      () => PendingRoomModeration('moderation/appeals/appeal_1/review', {
        'publicReason': 'x',
        'requestId': 'x',
        'decision': 'paid',
      }),
      throwsFormatException,
    );
    expect(
      () => PendingRoomModeration.decode('x' * 24001),
      throwsFormatException,
    );
    expect(
      PendingRoomModeration.decode(saved().encode()).payload,
      saved().payload,
    );
  });
  test(
    'secure journals isolate accounts and Rooms and fence an expired session',
    () async {
      FlutterSecureStorage.setMockInitialValues({});
      String? current = 'alice';
      final base = _Api();
      final alice = AccountBoundRoomCommunityApi(
        delegate: base,
        ownerAccount: 'alice',
        currentAccount: () => current,
      );
      final one = SecureRoomModerationRequestStore(alice, 'room_1'),
          otherRoom = SecureRoomModerationRequestStore(alice, 'room_2');
      await one.write(saved().encode());
      expect(await otherRoom.read(), isNull);
      current = 'bob';
      final bob = AccountBoundRoomCommunityApi(
        delegate: base,
        ownerAccount: 'bob',
        currentAccount: () => current,
      );
      expect(
        await SecureRoomModerationRequestStore(bob, 'room_1').read(),
        isNull,
      );
      await expectLater(one.read(), throwsStateError);
      current = 'alice';
      expect(await one.read(), saved().encode());
    },
  );
}
