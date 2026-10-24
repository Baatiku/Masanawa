import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/human_chat/human_chat.dart';

HumanJson item(int n, {bool archived = false, String state = 'accepted'}) => {
  'id': 'thread$n',
  'peer': {'handle': 'peer$n', 'displayName': 'Person $n', 'avatarUrl': null},
  'state': state,
  'initiator': false,
  'unreadCount': 0,
  'updatedAt': '2026-10-24T09:00:00Z',
  'lastMessage': null,
  'archived': archived,
  'pinned': false,
  'muted': false,
};

class InboxTransport extends HumanCommunicationTransport {
  InboxTransport() : super(ApiClient(dio: Dio()));
  final reads = <Map<String, dynamic>>[];
  bool failOlder = false;
  @override
  Future<HumanJson> request(
    String method,
    String path, {
    Object? data,
    Map<String, dynamic>? query,
  }) async {
    if (method != 'GET' || path != '/conversations') {
      throw StateError('Unexpected $method $path');
    }
    final q = Map<String, dynamic>.from(query ?? {});
    reads.add(q);
    if (q['filter'] == 'archived') {
      return {
        'items': [item(90, archived: true)],
        'nextCursor': null,
      };
    }
    if (q['filter'] == 'requests') {
      return {
        'items': [item(91, state: 'pending')],
        'nextCursor': null,
      };
    }
    if (q['after'] != null) {
      if (failOlder) throw StateError('Network interrupted');
      return {
        'items': [item(50), item(51)],
        'nextCursor': null,
      };
    }
    return {
      'items': [for (var i = 0; i < 50; i++) item(i)],
      'nextCursor': 'thread49',
    };
  }
}

class MutableInbox extends InboxTransport {
  bool hide = false, failRefresh = false, denyAnchor = false;
  int firstReads = 0;
  Completer<HumanJson>? delayedRefresh, delayedOlder;
  final mutations = <HumanJson>[];
  @override
  Future<HumanJson> request(
    String method,
    String path, {
    Object? data,
    Map<String, dynamic>? query,
  }) async {
    if (method == 'PATCH') {
      mutations.add({'path': path, 'data': data});
      return {'updated': true};
    }
    if (query?['after'] != null && denyAnchor) {
      denyAnchor = false;
      hide = true;
      throw DioException(
        requestOptions: RequestOptions(),
        response: Response(requestOptions: RequestOptions(), statusCode: 404),
      );
    }
    if (query?['after'] != null && delayedOlder != null) {
      reads.add(Map<String, dynamic>.from(query ?? {}));
      return delayedOlder!.future;
    }
    if (query?['after'] == null) {
      firstReads++;
      if (firstReads > 1 && delayedRefresh != null) {
        reads.add(Map<String, dynamic>.from(query ?? {}));
        return delayedRefresh!.future;
      }
      if (firstReads > 1 && failRefresh) throw StateError('offline');
    }
    if (hide) {
      reads.add(Map<String, dynamic>.from(query ?? {}));
      return {
        'items': [for (var i = 1; i < 49; i++) item(i)],
        'nextCursor': null,
      };
    }
    return super.request(method, path, data: data, query: query);
  }
}

Future<void> renderInbox(
  WidgetTester tester,
  ProviderContainer container,
) async {
  await tester.pumpWidget(
    UncontrolledProviderScope(
      container: container,
      child: MaterialApp(
        home: Scaffold(body: ListView(children: const [HumanInboxSection()])),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> olderInbox(WidgetTester tester) async {
  await tester.ensureVisible(find.text('Load older chats'));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Load older chats'));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets(
    'loaded prefix revalidates without dropping older rows or scrolling back to page one',
    (tester) async {
      final t = MutableInbox(),
          container = ProviderContainer(
            overrides: [
              humanAccountProvider.overrideWithValue('alice'),
              humanCommunicationTransportProvider.overrideWithValue(t),
            ],
          );
      await renderInbox(tester, container);
      await olderInbox(tester);
      final position = tester
          .state<ScrollableState>(find.byType(Scrollable).first)
          .position
          .pixels;
      final before = t.reads.length;
      await tester.pump(const Duration(seconds: 10));
      await tester.pumpAndSettle();
      expect(t.reads.length - before, 2);
      expect(find.text('Person 51'), findsOneWidget);
      expect(
        tester
            .state<ScrollableState>(find.byType(Scrollable).first)
            .position
            .pixels,
        closeTo(position, 0.5),
      );
      await tester.pumpWidget(const SizedBox());
      container.dispose();
      t.cancel();
    },
  );
  testWidgets(
    'canonical catch-up removes hidden first and older rows without requiring a tab change',
    (tester) async {
      final t = MutableInbox(),
          container = ProviderContainer(
            overrides: [
              humanAccountProvider.overrideWithValue('alice'),
              humanCommunicationTransportProvider.overrideWithValue(t),
            ],
          );
      await renderInbox(tester, container);
      await olderInbox(tester);
      expect(find.text('Person 51'), findsOneWidget);
      t.hide = true;
      await tester.pump(const Duration(seconds: 10));
      await tester.pumpAndSettle();
      expect(find.text('Person 51'), findsNothing);
      expect(find.text('Person 0'), findsNothing);
      expect(t.mutations, isEmpty);
      await tester.pumpWidget(const SizedBox());
      container.dispose();
      t.cancel();
    },
  );
  testWidgets(
    'manual continuation denial immediately reauthorizes rather than retaining known stale rows',
    (tester) async {
      final t = MutableInbox(),
          container = ProviderContainer(
            overrides: [
              humanAccountProvider.overrideWithValue('alice'),
              humanCommunicationTransportProvider.overrideWithValue(t),
            ],
          );
      await renderInbox(tester, container);
      expect(find.text('Person 49'), findsOneWidget);
      t.denyAnchor = true;
      await olderInbox(tester);
      expect(find.text('Person 49'), findsNothing);
      expect(find.text('Person 0'), findsNothing);
      expect(t.reads.last['after'], isNull);
      expect(t.mutations, isEmpty);
      await tester.pumpWidget(const SizedBox());
      container.dispose();
      t.cancel();
    },
  );
  testWidgets(
    'a revoked continuation anchor clears the old prefix and reauthorizes the first page',
    (tester) async {
      final t = MutableInbox(),
          container = ProviderContainer(
            overrides: [
              humanAccountProvider.overrideWithValue('alice'),
              humanCommunicationTransportProvider.overrideWithValue(t),
            ],
          );
      await renderInbox(tester, container);
      await olderInbox(tester);
      t.denyAnchor = true;
      await tester.pump(const Duration(seconds: 10));
      await tester.pumpAndSettle();
      expect(find.text('Person 51'), findsNothing);
      expect(find.text('Person 0'), findsNothing);
      expect(t.mutations, isEmpty);
      expect(t.reads.last['after'], isNull);
      await tester.pumpWidget(const SizedBox());
      container.dispose();
      t.cancel();
    },
  );
  testWidgets(
    'failed canonical catch-up preserves current rows and retries the same loaded prefix',
    (tester) async {
      final t = MutableInbox(),
          container = ProviderContainer(
            overrides: [
              humanAccountProvider.overrideWithValue('alice'),
              humanCommunicationTransportProvider.overrideWithValue(t),
            ],
          );
      await renderInbox(tester, container);
      await olderInbox(tester);
      t.failRefresh = true;
      await tester.pump(const Duration(seconds: 10));
      await tester.pumpAndSettle();
      expect(find.text('Person 51'), findsOneWidget);
      expect(find.text('Conversations need refresh'), findsOneWidget);
      t.failRefresh = false;
      await tester.ensureVisible(find.text('Retry refresh'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Retry refresh'));
      await tester.pumpAndSettle();
      expect(find.text('Conversations need refresh'), findsNothing);
      expect(find.text('Person 51'), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
      container.dispose();
      t.cancel();
    },
  );
  testWidgets(
    'late catch-up cannot repopulate a replacement transport under the same account',
    (tester) async {
      final first = MutableInbox(), second = MutableInbox();
      final transport = StateProvider<HumanCommunicationTransport>(
        (_) => first,
      );
      final container = ProviderContainer(
        overrides: [
          humanAccountProvider.overrideWithValue('alice'),
          humanCommunicationTransportProvider.overrideWith(
            (ref) => ref.watch(transport),
          ),
        ],
      );
      await renderInbox(tester, container);
      await olderInbox(tester);
      first.delayedRefresh = Completer();
      await tester.pump(const Duration(seconds: 10));
      await tester.pump();
      container.read(transport.notifier).state = second;
      await tester.pumpAndSettle();
      first.delayedRefresh!.complete({
        'items': [
          {
            ...item(90),
            'peer': {'handle': 'old', 'displayName': 'Stale private peer'},
          },
        ],
        'nextCursor': null,
      });
      await tester.pumpAndSettle();
      expect(find.text('Stale private peer'), findsNothing);
      expect(find.text('Person 51'), findsNothing);
      await tester.pumpWidget(const SizedBox());
      container.dispose();
      first.cancel();
      second.cancel();
    },
  );
  for (final replace in ['account', 'transport']) {
    testWidgets('an old action sheet cannot pin under a replaced $replace', (
      tester,
    ) async {
      final first = MutableInbox(), second = MutableInbox();
      final owner = StateProvider<String?>((_) => 'alice'),
          transport = StateProvider<HumanCommunicationTransport>((_) => first);
      final container = ProviderContainer(
        overrides: [
          humanAccountProvider.overrideWith((ref) => ref.watch(owner)),
          humanCommunicationTransportProvider.overrideWith(
            (ref) => ref.watch(transport),
          ),
        ],
      );
      await renderInbox(tester, container);
      await tester.longPress(find.text('Person 0'));
      await tester.pumpAndSettle();
      if (replace == 'account') {
        container.read(owner.notifier).state = 'bob';
      } else {
        container.read(transport.notifier).state = second;
      }
      await tester.pumpAndSettle();
      await tester.tap(find.text('Pin'));
      await tester.pumpAndSettle();
      expect(first.mutations, isEmpty);
      expect(second.mutations, isEmpty);
      await tester.pumpWidget(const SizedBox());
      container.dispose();
      first.cancel();
      second.cancel();
    });
  }
  testWidgets(
    'late manual older page cannot cross a same-query mutation refresh',
    (tester) async {
      final t = MutableInbox()..delayedOlder = Completer();
      final container = ProviderContainer(
        overrides: [
          humanAccountProvider.overrideWithValue('alice'),
          humanCommunicationTransportProvider.overrideWithValue(t),
        ],
      );
      await renderInbox(tester, container);
      await tester.ensureVisible(find.text('Load older chats'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Load older chats'));
      await tester.pump();
      await tester.ensureVisible(find.text('Person 0'));
      await tester.pump();
      await tester.longPress(find.text('Person 0'));
      await tester.pump(const Duration(milliseconds: 300));
      await tester.tap(find.text('Pin'));
      await tester.pumpAndSettle();
      t.delayedOlder!.complete({
        'items': [
          {
            ...item(99),
            'peer': {'handle': 'stale', 'displayName': 'Stale older peer'},
          },
        ],
        'nextCursor': null,
      });
      await tester.pumpAndSettle();
      expect(find.text('Stale older peer'), findsNothing);
      expect(t.mutations, hasLength(1));
      await tester.pumpWidget(const SizedBox());
      container.dispose();
      t.cancel();
    },
  );

  testWidgets(
    'active inbox loads one page first and retrieves older conversations on demand',
    (tester) async {
      final t = InboxTransport();
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            humanAccountProvider.overrideWithValue('alice'),
            humanCommunicationTransportProvider.overrideWithValue(t),
          ],
          child: MaterialApp(
            home: Scaffold(body: ListView(children: [HumanInboxSection()])),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(t.reads, hasLength(1));
      expect(t.reads.single['filter'], 'active');
      expect(find.text('Archived chats'), findsOneWidget);
      expect(find.text('Message requests'), findsOneWidget);
      await tester.ensureVisible(find.text('Load older chats'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Load older chats'));
      await tester.pumpAndSettle();
      expect(t.reads, hasLength(2));
      expect(t.reads.last['after'], 'thread49');
      expect(find.text('Person 51'), findsOneWidget);
      expect(find.text('Load older chats'), findsNothing);
      await tester.pumpWidget(const SizedBox());
      t.cancel();
    },
  );

  testWidgets(
    'failed older page stays recoverable without losing current contacts',
    (tester) async {
      final t = InboxTransport()..failOlder = true;
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            humanAccountProvider.overrideWithValue('alice'),
            humanCommunicationTransportProvider.overrideWithValue(t),
          ],
          child: MaterialApp(
            home: Scaffold(body: ListView(children: [HumanInboxSection()])),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.ensureVisible(find.text('Load older chats'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Load older chats'));
      await tester.pumpAndSettle();
      expect(find.text('Older conversations unavailable'), findsOneWidget);
      t.failOlder = false;
      await tester.ensureVisible(find.text('Retry older chats'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Retry older chats'));
      await tester.pumpAndSettle();
      expect(t.reads.last['after'], 'thread49');
      expect(find.text('Person 51'), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
      t.cancel();
    },
  );

  testWidgets('account replacement discards previously fetched older people', (
    tester,
  ) async {
    final account = StateProvider<String?>((ref) => 'alice');
    final t = InboxTransport();
    final container = ProviderContainer(
      overrides: [
        humanAccountProvider.overrideWith((ref) => ref.watch(account)),
        humanCommunicationTransportProvider.overrideWithValue(t),
      ],
    );
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: MaterialApp(
          home: Scaffold(body: ListView(children: [HumanInboxSection()])),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Load older chats'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Load older chats'));
    await tester.pumpAndSettle();
    expect(find.text('Person 51'), findsOneWidget);
    final before = t.reads.length;
    container.read(account.notifier).state = 'bob';
    await tester.pumpAndSettle();
    expect(t.reads.length, greaterThan(before));
    expect(find.text('Person 51'), findsNothing);
    await tester.pumpWidget(const SizedBox());
    container.dispose();
    t.cancel();
  });

  testWidgets(
    'archived and message request tabs ask server for their independent scopes',
    (tester) async {
      final t = InboxTransport();
      Future<void> render(String filter) => tester.pumpWidget(
        ProviderScope(
          overrides: [
            humanAccountProvider.overrideWithValue('alice'),
            humanCommunicationTransportProvider.overrideWithValue(t),
          ],
          child: MaterialApp(
            home: Scaffold(
              body: ListView(children: [HumanInboxSection(filter: filter)]),
            ),
          ),
        ),
      );
      await render('archived');
      await tester.pumpAndSettle();
      expect(t.reads.last['filter'], 'archived');
      expect(find.text('Person 90'), findsOneWidget);
      await render('requests');
      await tester.pumpAndSettle();
      expect(t.reads.last['filter'], 'requests');
      expect(find.text('Person 91'), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
      t.cancel();
    },
  );
}
