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
    if (method == 'GET' && path == '/privacy/blocked')
      return {'items': blocked};
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
      await tester.scrollUntilVisible(find.text('Unblock'), 200);
      await tester.tap(find.text('Unblock'));
      await tester.pumpAndSettle();
      expect(t.writes.last, 'PUT /privacy/blocked/blocked');
      expect(find.text('No blocked people'), findsOneWidget);
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
