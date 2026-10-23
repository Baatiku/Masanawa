import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:masanawa/src/features/rooms/room_community_api.dart';
import 'package:masanawa/src/features/rooms/room_content_changes.dart';
import 'package:masanawa/src/features/rooms/room_content_request.dart';
import 'package:masanawa/src/features/rooms/room_community_screen.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

Map<String, dynamic> item({
  String id = 'post_1',
  String text = 'Original text',
  String kind = 'post',
}) => {
  'id': id,
  'body': text,
  'contentKind': kind,
  'contentRevision': 0,
  'canEdit': true,
  'canDelete': true,
  'attachments': [],
};
PendingRoomContentChange saved({
  String id = 'post_1',
  String key = 'original',
  String action = 'edit',
}) => PendingRoomContentChange('post', id, action, {
  'requestId': key,
  'expectedRevision': 0,
  if (action == 'edit') 'body': 'Original saved edit',
});

class _Store implements RoomContentRequestStore {
  String? value;
  bool failWrite = false, failClear = false, failRead = false;
  @override
  Future<String?> read() async {
    if (failRead) throw StateError('storage');
    return value;
  }

  @override
  Future<void> write(String next) async {
    if (failWrite) throw StateError('storage');
    if (value != null && value != next)
      throw StateError('content_change_pending');
    value = next;
  }

  @override
  Future<void> clear(String expected) async {
    if (failClear) throw StateError('storage');
    if (value != null && value != expected)
      throw StateError('content_change_pending');
    value = null;
  }
}

class _Api extends FakeCommunityApi {
  bool loseResponse = false,
      commitBeforeLoss = true,
      failRead = false,
      unsupported = false,
      wrongReceipt = false;
  Completer<Map<String, dynamic>>? delayedRead;
  final receipts = <String, Map<String, dynamic>>{};
  final mutations = <Map<String, dynamic>>[];
  final reads = <Map<String, dynamic>>[];
  Map<String, dynamic> accepted(PendingRoomContentChange change) => {
    'changeVersion': 1,
    'found': true,
    'currentItem': null,
    'receipt': {
      ...change.lookup,
      'action': change.action,
      'previousRevision': change.payload['expectedRevision'],
      'revision': (change.payload['expectedRevision'] as int) + 1,
      'committedAt': '2026-10-23T12:00:00Z',
      if (wrongReceipt) 'targetId': 'someone_else',
    },
  };
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async {
    if (method == 'GET') {
      reads.add({'room': id, 'resource': resource, ...values});
      if (delayedRead != null) return delayedRead!.future;
      if (failRead) throw StateError('offline');
      if (unsupported) return {};
      return receipts[values['requestId']] ??
          {
            'changeVersion': 1,
            'found': false,
            'receipt': null,
            'currentItem': null,
          };
    }
    mutations.add({
      'room': id,
      'method': method,
      'resource': resource,
      ...values,
    });
    final parts = resource.split('/');
    final change = PendingRoomContentChange(
      parts[0] == 'posts' ? 'post' : 'reply',
      parts[1],
      method == 'PATCH' ? 'edit' : 'delete',
      values,
    );
    final result = accepted(change);
    if (!loseResponse || commitBeforeLoss)
      receipts[values['requestId'] as String] = result;
    if (loseResponse) throw StateError('connection lost');
    return result;
  }
}

Future<void> mount(
  WidgetTester t,
  _Api api,
  _Store store, {
  Map<String, dynamic>? target,
  bool embedded = false,
}) async {
  await t.pumpWidget(
    MaterialApp(
      home: RoomContentChanges(
        api: api,
        roomId: 'room_1',
        initialItem: target ?? item(),
        store: store,
        embedded: embedded,
      ),
    ),
  );
  await t.pumpAndSettle();
}

Future<void> saveEdit(WidgetTester t) async {
  await t.enterText(find.byType(TextField), 'Updated text');
  await t.tap(find.text('Save edits'));
  await t.pumpAndSettle();
}

void main() {
  testWidgets(
    'timeline opens the author editor and Back reads the edited canonical version',
    (t) async {
      final api = _Journey();
      await t.pumpWidget(
        MaterialApp(
          home: RoomCommunityScreen(api: api, roomId: 'room_1'),
        ),
      );
      await t.pumpAndSettle();
      await t.scrollUntilVisible(
        find.text('Edit or remove your content'),
        150,
        scrollable: find.byType(Scrollable).first,
      );
      await t.tap(find.text('Edit or remove your content'));
      await t.pumpAndSettle();
      await saveEdit(t);
      expect(find.text('Your edit was saved.'), findsOneWidget);
      await t.pageBack();
      await t.pumpAndSettle();
      expect(find.text('Updated text'), findsOneWidget);
      expect(find.text('Edited'), findsOneWidget);
      expect(api.mutations, hasLength(1));
    },
  );

  testWidgets(
    'revoked membership clears an open editor without discarding its saved recovery record',
    (t) async {
      final api = _Api(), store = _Store()..value = saved().encode();
      await mount(t, api, store);
      expect(find.text('Original saved edit'), findsOneWidget);
      api.role = null;
      await t.pump(const Duration(seconds: 20));
      await t.pumpAndSettle();
      expect(find.text('Original saved edit'), findsNothing);
      expect(store.value, saved().encode());
      expect(find.byType(TextField), findsNothing);
      expect(find.textContaining('access changed'), findsOneWidget);
      expect(api.mutations, isEmpty);
    },
  );

  testWidgets(
    'saves a versioned human edit once, confirms its receipt and clears encrypted intent',
    (t) async {
      final api = _Api(), store = _Store();
      await mount(t, api, store);
      await saveEdit(t);
      expect(api.mutations.single, containsPair('method', 'PATCH'));
      expect(api.mutations.single['resource'], 'posts/post_1/content');
      expect(api.mutations.single['expectedRevision'], 0);
      expect(api.mutations.single['body'], 'Updated text');
      expect(store.value, isNull);
      expect(find.text('Your edit was saved.'), findsOneWidget);
    },
  );
  testWidgets('own removal is explicitly confirmed; Cancel cannot send', (
    t,
  ) async {
    final api = _Api(), store = _Store();
    await mount(t, api, store);
    await t.tap(find.text('Remove your content'));
    await t.pumpAndSettle();
    await t.tap(find.text('Cancel'));
    await t.pumpAndSettle();
    expect(api.mutations, isEmpty);
    await t.tap(find.text('Remove your content'));
    await t.pumpAndSettle();
    await t.tap(find.text('Confirm'));
    await t.pumpAndSettle();
    expect(api.mutations.single['method'], 'DELETE');
    expect(api.mutations.single.containsKey('body'), isFalse);
    expect(find.text('Your content was removed.'), findsOneWidget);
  });
  testWidgets(
    'lost response recovers accepted original by GET without another write',
    (t) async {
      final api = _Api()..loseResponse = true, store = _Store();
      await mount(t, api, store);
      await saveEdit(t);
      expect(store.value, isNotNull);
      expect(api.mutations, hasLength(1));
      await t.tap(find.text('Check result'));
      await t.pumpAndSettle();
      expect(store.value, isNull);
      expect(api.mutations, hasLength(1));
      expect(find.text('Your edit was saved.'), findsOneWidget);
    },
  );
  testWidgets(
    'restart reads status first and never automatically resubmits a pending edit',
    (t) async {
      final api = _Api(), store = _Store()..value = saved().encode();
      await mount(t, api, store);
      expect(api.mutations, isEmpty);
      expect(api.reads.single['requestId'], 'original');
      expect(find.text('Original saved edit'), findsOneWidget);
      await t.tap(find.text('Retry original'));
      await t.pumpAndSettle();
      expect(api.mutations, isEmpty);
      await t.tap(find.text('Confirm'));
      await t.pumpAndSettle();
      expect(api.mutations.single['requestId'], 'original');
      expect(api.mutations.single['body'], 'Original saved edit');
    },
  );
  testWidgets(
    'a committed pending removal can recover even when its row is absent',
    (t) async {
      final change = saved(action: 'delete'),
          api = _Api(),
          store = _Store()..value = change.encode();
      api.receipts['original'] = api.accepted(change);
      await mount(t, api, store);
      expect(api.mutations, isEmpty);
      expect(store.value, isNull);
      expect(find.text('Your content was removed.'), findsOneWidget);
    },
  );
  testWidgets(
    'storage write failure prevents a mutation and preserves the retry payload',
    (t) async {
      final api = _Api(), store = _Store()..failWrite = true;
      await mount(t, api, store);
      await saveEdit(t);
      expect(api.mutations, isEmpty);
      expect(find.text('Original saved text'), findsOneWidget);
      store.failWrite = false;
      await t.tap(find.text('Retry original'));
      await t.pumpAndSettle();
      await t.tap(find.text('Confirm'));
      await t.pumpAndSettle();
      expect(api.mutations.single['body'], 'Updated text');
    },
  );
  testWidgets(
    'journal clearing failure retains an accepted receipt and blocks resubmission',
    (t) async {
      final api = _Api(), store = _Store()..failClear = true;
      await mount(t, api, store);
      await saveEdit(t);
      expect(store.value, isNotNull);
      expect(api.mutations, hasLength(1));
      expect(find.text('Retry original'), findsNothing);
      store.failClear = false;
      await t.tap(find.text('Check result'));
      await t.pumpAndSettle();
      expect(store.value, isNull);
      expect(api.mutations, hasLength(1));
    },
  );
  testWidgets(
    'failed or unsupported lookup cannot authorize a pending mutation',
    (t) async {
      final api = _Api()..failRead = true,
          store = _Store()..value = saved().encode();
      await mount(t, api, store);
      await t.tap(find.text('Retry original'));
      await t.pumpAndSettle();
      expect(api.mutations, isEmpty);
      expect(store.value, isNotNull);
      api.failRead = false;
      api.unsupported = true;
      await t.tap(find.text('Retry original'));
      await t.pumpAndSettle();
      expect(api.mutations, isEmpty);
      expect(store.value, isNotNull);
      expect(find.textContaining('could not be verified'), findsOneWidget);
    },
  );
  testWidgets('a mismatched receipt never erases the original saved request', (
    t,
  ) async {
    final api = _Api()..wrongReceipt = true, store = _Store();
    await mount(t, api, store);
    await saveEdit(t);
    expect(store.value, isNotNull);
    expect(find.text('Your edit was saved.'), findsNothing);
  });
  testWidgets(
    'another pending target cannot be overwritten by a stale editor',
    (t) async {
      final api = _Api(), store = _Store();
      await mount(t, api, store);
      store.value = saved(id: 'post_other', key: 'other').encode();
      await saveEdit(t);
      expect(api.mutations, isEmpty);
      expect(
        PendingRoomContentChange.decode(store.value!).targetId,
        'post_other',
      );
      expect(find.text('Original saved edit'), findsOneWidget);
      expect(find.text('Save edits'), findsNothing);
    },
  );
  testWidgets(
    'clear saved retry warns that it cannot cancel a server request and rechecks',
    (t) async {
      final api = _Api(), store = _Store()..value = saved().encode();
      await mount(t, api, store);
      await t.tap(find.text('Clear saved retry'));
      await t.pumpAndSettle();
      expect(
        find.textContaining('not a request already reaching the server'),
        findsOneWidget,
      );
      await t.tap(find.text('Confirm'));
      await t.pumpAndSettle();
      expect(store.value, isNull);
      expect(api.mutations, isEmpty);
      expect(api.reads.length, 3);
    },
  );
  testWidgets(
    'account replacement while confirming removal cannot mutate either account',
    (t) async {
      final old = _Api(), one = _Store();
      await mount(t, old, one);
      await t.tap(find.text('Remove your content'));
      await t.pumpAndSettle();
      final next = _Api(), two = _Store();
      await mount(
        t,
        next,
        two,
        target: item(id: 'post_new', text: 'New account text'),
      );
      await t.tap(find.text('Confirm'));
      await t.pumpAndSettle();
      expect(old.mutations, isEmpty);
      expect(next.mutations, isEmpty);
      expect(find.text('Original text'), findsNothing);
    },
  );
  testWidgets(
    'pending status from an old API cannot clear a replacement journal',
    (t) async {
      final old = _Api()..delayedRead = Completer(),
          one = _Store()..value = saved().encode();
      await t.pumpWidget(
        MaterialApp(
          home: RoomContentChanges(api: old, roomId: 'room_1', store: one),
        ),
      );
      await t.pump();
      final next = _Api(),
          two = _Store()..value = saved(id: 'post_new', key: 'new').encode();
      await mount(t, next, two);
      old.delayedRead!.complete(old.accepted(saved()));
      await t.pumpAndSettle();
      expect(two.value, isNotNull);
      expect(one.value, isNotNull);
      expect(find.text('Your edit was saved.'), findsNothing);
    },
  );
  testWidgets(
    'recovery banner is hidden without a pending record and offers explicit review otherwise',
    (t) async {
      final api = _Api(), store = _Store();
      await mount(t, api, store, embedded: true);
      expect(find.text('Review saved change'), findsNothing);
      await t.pumpWidget(const SizedBox.shrink());
      store.value = saved().encode();
      await mount(t, api, store, embedded: true);
      expect(find.text('Review saved change'), findsOneWidget);
      expect(api.mutations, isEmpty);
    },
  );
  testWidgets(
    'editor and removal confirmation fit 320dp, 200 percent text and RTL',
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
          home: RoomContentChanges(
            api: _Api(),
            roomId: 'room_1',
            initialItem: item(),
            store: _Store(),
          ),
        ),
      );
      await t.pumpAndSettle();
      await t.ensureVisible(find.text('Remove your content'));
      await t.tap(find.text('Remove your content'));
      await t.pumpAndSettle();
      expect(t.takeException(), isNull);
      await t.tap(find.text('Cancel'));
      await t.pumpAndSettle();
    },
  );
  test('saved intent parser rejects arbitrary paths, versions and mutated payload shapes', () {
    for (final raw in ['{}', '{"version":2}', 'x' * 33000])
      expect(() => PendingRoomContentChange.decode(raw), throwsFormatException);
    expect(
      () => PendingRoomContentChange('post', '../other', 'edit', {
        'requestId': 'safe',
        'expectedRevision': 0,
        'body': 'text',
      }),
      throwsFormatException,
    );
    expect(
      () => PendingRoomContentChange('reply', 'reply_1', 'edit', {
        'requestId': 'safe',
        'expectedRevision': 0,
        'body': 'x' * 2001,
      }),
      throwsFormatException,
    );
    expect(
      () => PendingRoomContentChange('post', 'post_1', 'delete', {
        'requestId': 'safe',
        'expectedRevision': 0,
        'body': 'text',
      }),
      throwsFormatException,
    );
    expect(
      PendingRoomContentChange.decode(saved().encode()).payload,
      saved().payload,
    );
  });
  test('secure journal serializes same-Room writers, scopes accounts and refuses a stale clear', () async {
    FlutterSecureStorage.setMockInitialValues({});
    String? account = 'alice';
    final api = AccountBoundRoomCommunityApi(
      delegate: _Api(),
      ownerAccount: 'alice',
      currentAccount: () => account,
    );
    final one = SecureRoomContentRequestStore(api, 'room_1'),
        two = SecureRoomContentRequestStore(api, 'room_1'),
        other = SecureRoomContentRequestStore(api, 'room_2');
    final outcomes = await Future.wait([
      one.write(saved().encode()).then((_) => true, onError: (_) => false),
      two
          .write(saved(key: 'other').encode())
          .then((_) => true, onError: (_) => false),
    ]);
    expect(outcomes.where((v) => v), hasLength(1));
    final original = await one.read();
    expect(original, isNotNull);
    expect(await other.read(), isNull);
    final wrong = original == saved().encode()
        ? saved(key: 'other').encode()
        : saved().encode();
    await expectLater(two.clear(wrong), throwsStateError);
    expect(await one.read(), original);
    account = 'bob';
    await expectLater(one.read(), throwsStateError);
    final bob = AccountBoundRoomCommunityApi(
      delegate: _Api(),
      ownerAccount: 'bob',
      currentAccount: () => account,
    );
    expect(await SecureRoomContentRequestStore(bob, 'room_1').read(), isNull);
  });
}

class _Journey extends _Api implements RoomTimelinePages {
  @override
  Future<RoomTimelinePage> timelinePage(
    String id, {
    String search = '',
    String? parentId,
    String? cursor,
  }) async {
    final changed = mutations.isNotEmpty;
    final row = <String, dynamic>{
      ...item(text: changed ? 'Updated text' : 'Original text'),
      'authorId': 'bob',
      'parentId': null,
      'createdAt': '2026-10-23T12:00:00Z',
      'commentsEnabled': true,
      'reactions': [],
      if (changed) 'editedAt': '2026-10-23T12:01:00Z',
      if (changed) 'contentRevision': 1,
    };
    return RoomTimelinePage(
      parentId == null ? [row] : [],
      null,
      parent: parentId == null ? null : row,
    );
  }
}
