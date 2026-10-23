import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/rooms_screen.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

class InvitationApi extends FakeCommunityApi {
  InvitationApi({int count = 1}) {
    pending = List.generate(
      count,
      (i) => {
        'roomId': 'room_$i',
        'inviteId': 'invite_$i',
        'name': 'Community invitation $i',
        'expiresAt': '2026-10-24T12:00:00Z',
      },
    );
  }
  late List<Map<String, dynamic>> pending;
  final requests = <String>[];
  bool fail = false;
  Completer<void>? response;
  @override
  Future<List<Map<String, dynamic>>> invitations() async => List.of(pending);
  @override
  Future<void> action(
    String id,
    String action, [
    Map<String, dynamic>? values,
  ]) async {
    requests.add('$id/$action');
    if (response != null) await response!.future;
    if (fail) throw StateError('connection_failed');
    if (action == 'join') {
      pending.removeWhere(
        (i) => i['roomId'] == id && i['inviteId'] == values?['inviteId'],
      );
    } else if (action.endsWith('/decline')) {
      pending.removeWhere(
        (i) => '$id/invitations/${i['inviteId']}/decline' == '$id/$action',
      );
    }
  }
}

void main() {
  testWidgets(
    'decline is explicit, cancel keeps invitation, success never joins',
    (tester) async {
      final api = InvitationApi();
      await tester.pumpWidget(MaterialApp(home: RoomsScreen(api: api)));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Decline'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Cancel'));
      await tester.pumpAndSettle();
      expect(api.requests, isEmpty);
      expect(find.text('Community invitation 0'), findsOneWidget);
      await tester.tap(find.text('Decline'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Decline invitation'));
      await tester.pumpAndSettle();
      expect(api.requests, ['room_0/invitations/invite_0/decline']);
      expect(find.text('Community invitation 0'), findsNothing);
      expect(find.text('Garden'), findsOneWidget);
    },
  );

  testWidgets('unknown decline retains original invitation for safe retry', (
    tester,
  ) async {
    final api = InvitationApi()..fail = true;
    await tester.pumpWidget(MaterialApp(home: RoomsScreen(api: api)));
    await tester.pumpAndSettle();
    Future<void> decline() async {
      await tester.tap(find.text('Decline'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Decline invitation'));
      await tester.pumpAndSettle();
    }

    await decline();
    expect(find.text('Community invitation 0'), findsOneWidget);
    expect(find.textContaining('Could not connect'), findsOneWidget);
    api.fail = false;
    await decline();
    expect(api.requests, List.filled(2, 'room_0/invitations/invite_0/decline'));
    expect(find.text('Community invitation 0'), findsNothing);
  });

  testWidgets(
    'account switch while confirming decline cannot submit to replacement account',
    (tester) async {
      final old = InvitationApi(), replacement = InvitationApi(count: 0);
      await tester.pumpWidget(MaterialApp(home: RoomsScreen(api: old)));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Decline'));
      await tester.pumpAndSettle();
      await tester.pumpWidget(MaterialApp(home: RoomsScreen(api: replacement)));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Decline invitation'));
      await tester.pumpAndSettle();
      expect(old.requests, isEmpty);
      expect(replacement.requests, isEmpty);
      expect(find.text('Community invitation 0'), findsNothing);
    },
  );

  testWidgets(
    'old decline completion cannot erase replacement account invitation',
    (tester) async {
      final old = InvitationApi()..response = Completer<void>();
      final replacement = InvitationApi();
      await tester.pumpWidget(MaterialApp(home: RoomsScreen(api: old)));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Decline'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Decline invitation'));
      await tester.pump();
      await tester.pumpWidget(MaterialApp(home: RoomsScreen(api: replacement)));
      await tester.pumpAndSettle();
      old.response!.complete();
      await tester.pumpAndSettle();
      expect(find.text('Community invitation 0'), findsOneWidget);
      expect(
        tester
            .widget<TextButton>(find.widgetWithText(TextButton, 'Accept'))
            .onPressed,
        isNotNull,
      );
    },
  );

  testWidgets(
    'returning from accepted Room restores remaining invitation actions',
    (tester) async {
      final api = InvitationApi(count: 2);
      await tester.pumpWidget(MaterialApp(home: RoomsScreen(api: api)));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Accept').first);
      await tester.pumpAndSettle();
      await tester.pageBack();
      await tester.pumpAndSettle();
      expect(find.text('Community invitation 0'), findsNothing);
      expect(find.text('Community invitation 1'), findsOneWidget);
      expect(
        tester
            .widget<TextButton>(find.widgetWithText(TextButton, 'Accept'))
            .onPressed,
        isNotNull,
      );
    },
  );

  testWidgets(
    'many invitations scroll with Rooms at 320dp and 200 percent text',
    (tester) async {
      tester.view.physicalSize = const Size(320, 640);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(
        MaterialApp(
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: TextScaler.linear(2)),
            child: child!,
          ),
          home: RoomsScreen(api: InvitationApi(count: 30)),
        ),
      );
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      await tester.scrollUntilVisible(
        find.text('Garden'),
        400,
        maxScrolls: 100,
        scrollable: find.byType(Scrollable).first,
      );
      expect(find.text('Garden'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );
}
