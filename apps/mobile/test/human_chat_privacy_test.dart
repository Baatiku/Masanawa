import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/human_chat/human_chat.dart';

class PrivacyTransport extends HumanCommunicationTransport {
  PrivacyTransport() : super(ApiClient(dio: Dio()));
  HumanJson privacy = {
    'messages': 'everyone',
    'calls': 'contacts',
    'roomInvites': 'nobody',
    'readReceipts': true,
    'presence': true,
  };
  final writes = <String>[];
  final blockedReads = <Map<String, dynamic>>[];
  final blockedPages = <String, HumanJson>{};
  bool failBlockedPage = false;
  Completer<HumanJson>? update;
  List<HumanJson> blocked = [
    {'handle': 'blocked', 'displayName': 'Blocked Person'},
  ];
  @override
  Future<HumanJson> request(
    String method,
    String path, {
    Object? data,
    Map<String, dynamic>? query,
  }) async {
    if (method == 'GET' && path == '/privacy') return Map.from(privacy);
    if (method == 'GET' && path == '/privacy/blocked') {
      final params = Map<String, dynamic>.from(query ?? {});
      blockedReads.add(params);
      if (failBlockedPage && params.containsKey('after')) {
        throw StateError('Temporary blocked-list failure');
      }
      final key = '${params['query'] ?? ''}|${params['after'] ?? ''}';
      return blockedPages[key] ?? {'items': blocked};
    }
    writes.add('$method $path');
    if (method == 'PATCH') return update!.future;
    if (method == 'PUT') {
      blocked = [];
      return {'ok': true};
    }
    throw StateError('Unexpected $method $path');
  }
}

void main() {
  testWidgets(
    'privacy is acknowledged by server and blocked peer can be unblocked',
    (tester) async {
      final t = PrivacyTransport()..update = Completer<HumanJson>();
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            humanAccountProvider.overrideWithValue('alice'),
            humanCommunicationTransportProvider.overrideWithValue(t),
          ],
          child: const MaterialApp(home: HumanPrivacyScreen()),
        ),
      );
      await tester.pumpAndSettle();
      await tester.scrollUntilVisible(
        find.text('Blocked Person'),
        180,
        scrollable: find.byType(Scrollable).first,
      );
      expect(find.text('Blocked Person'), findsOneWidget);
      await tester.tap(find.text('Read receipts'));
      await tester.pump();
      expect(t.writes.single, 'PATCH /privacy');
      expect(
        tester
            .widgetList<SwitchListTile>(find.byType(SwitchListTile))
            .first
            .value,
        true,
      );
      t.update!.complete({...t.privacy, 'readReceipts': false});
      await tester.pumpAndSettle();
      expect(
        tester
            .widgetList<SwitchListTile>(find.byType(SwitchListTile))
            .first
            .value,
        false,
      );
      await tester.scrollUntilVisible(
        find.text('Unblock'),
        200,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.tap(find.text('Unblock'));
      await tester.pumpAndSettle();
      expect(t.writes.last, 'PUT /privacy/blocked/blocked');
      expect(find.text('No blocked people'), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
      t.cancel();
    },
  );
  testWidgets(
    'blocked list loads older pages, searches server-side and clears filters',
    (tester) async {
      final t = PrivacyTransport();
      t.blockedPages['|'] = {
        'items': [
          {'handle': 'first', 'displayName': 'First Person'},
        ],
        'nextCursor': 'first',
      };
      t.blockedPages['|first'] = {
        'items': [
          {'handle': 'first', 'displayName': 'Duplicate First'},
          {'handle': 'second', 'displayName': 'Second Person'},
        ],
        'nextCursor': null,
      };
      t.blockedPages['second|'] = {
        'items': [
          {'handle': 'second', 'displayName': 'Second Person'},
        ],
        'nextCursor': null,
      };
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            humanAccountProvider.overrideWithValue('alice'),
            humanCommunicationTransportProvider.overrideWithValue(t),
          ],
          child: const MaterialApp(home: HumanPrivacyScreen()),
        ),
      );
      await tester.pumpAndSettle();
      await tester.scrollUntilVisible(
        find.text('Load more blocked people'),
        150,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.tap(find.text('Load more blocked people'));
      await tester.pumpAndSettle();
      expect(t.blockedReads.last['after'], 'first');
      expect(find.text('Second Person'), findsOneWidget);
      expect(find.text('Duplicate First'), findsNothing);

      await tester.scrollUntilVisible(
        find.byType(TextField),
        -150,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.enterText(find.byType(TextField), 'second');
      final searchButton = find.widgetWithText(
        TextButton,
        'Search blocked people',
      );
      await tester.ensureVisible(searchButton);
      await tester.tap(searchButton);
      await tester.pumpAndSettle();
      expect(t.blockedReads.last['query'], 'second');
      expect(find.text('First Person'), findsNothing);
      expect(find.text('Second Person'), findsOneWidget);
      await tester.ensureVisible(find.text('Clear search'));
      await tester.tap(find.text('Clear search'));
      await tester.pumpAndSettle();
      expect(t.blockedReads.last, isEmpty);
      expect(find.text('First Person'), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
      t.cancel();
    },
  );

  testWidgets(
    'blocked page failure preserves first page and offers scoped retry',
    (tester) async {
      final t = PrivacyTransport();
      t.blockedPages['|'] = {
        'items': [
          {'handle': 'first', 'displayName': 'First Person'},
        ],
        'nextCursor': 'first',
      };
      t.blockedPages['|first'] = {
        'items': [
          {'handle': 'second', 'displayName': 'Second Person'},
        ],
        'nextCursor': null,
      };
      t.failBlockedPage = true;
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            humanAccountProvider.overrideWithValue('alice'),
            humanCommunicationTransportProvider.overrideWithValue(t),
          ],
          child: const MaterialApp(home: HumanPrivacyScreen()),
        ),
      );
      await tester.pumpAndSettle();
      await tester.scrollUntilVisible(
        find.text('Load more blocked people'),
        150,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.tap(find.text('Load more blocked people'));
      await tester.pumpAndSettle();
      expect(find.text('First Person'), findsOneWidget);
      expect(find.text('Blocked contacts could not be loaded'), findsOneWidget);
      t.failBlockedPage = false;
      await tester.scrollUntilVisible(
        find.text('Retry blocked list'),
        150,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.drag(find.byType(ListView), const Offset(0, -90));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Retry blocked list'));
      await tester.pumpAndSettle();
      expect(find.text('Second Person'), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
      t.cancel();
    },
  );
  testWidgets(
    'account switch removes prior private controls and blocked names',
    (tester) async {
      final account = StateProvider<String?>((ref) => 'alice');
      final t = PrivacyTransport();
      final container = ProviderContainer(
        overrides: [
          humanAccountProvider.overrideWith((ref) => ref.watch(account)),
          humanCommunicationTransportProvider.overrideWithValue(t),
        ],
      );
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: const MaterialApp(home: HumanPrivacyScreen()),
        ),
      );
      await tester.pumpAndSettle();
      await tester.scrollUntilVisible(
        find.text('Blocked Person'),
        180,
        scrollable: find.byType(Scrollable).first,
      );
      expect(find.text('Blocked Person'), findsOneWidget);
      container.read(account.notifier).state = null;
      await tester.pumpAndSettle();
      expect(find.text('Blocked Person'), findsNothing);
      expect(find.text('Sign in to change privacy.'), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
      container.dispose();
      t.cancel();
    },
  );
}
