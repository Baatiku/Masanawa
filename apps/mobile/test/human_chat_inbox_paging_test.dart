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

void main() {
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
