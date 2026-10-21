import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_community_api.dart';
import 'package:masanawa/src/features/rooms/rooms_screen.dart';
import 'room_community_screen_test.dart' show FakeCommunityApi;

class _RoomApi extends FakeCommunityApi {
  _RoomApi({required this.title, this.failInvitations = false, this.delayed});
  final String title;
  final bool failInvitations;
  final Completer<List<CommunityRoom>>? delayed;
  Completer<void>? pendingJoin;
  @override
  Future<List<CommunityRoom>> list(bool joined) =>
      delayed?.future ??
      Future.value([
        CommunityRoom(
          id: 'room_${title.toLowerCase()}',
          name: title,
          visibility: 'public',
          postingPolicy: 'members',
          ownerId: 'owner',
          role: 'member',
        ),
      ]);
  @override
  Future<List<Map<String, dynamic>>> invitations() async {
    if (failInvitations) throw StateError('temporarily unavailable');
    return pendingJoin == null
        ? []
        : [
            {
              'roomId': 'room_old',
              'inviteId': 'invite_old',
              'name': 'Old invitation',
            },
          ];
  }

  @override
  Future<void> action(
    String id,
    String action, [
    Map<String, dynamic>? values,
  ]) async {
    if (pendingJoin != null) await pendingJoin!.future;
  }
}

void main() {
  testWidgets('independent invitation outage preserves usable Rooms', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: RoomsScreen(
          api: _RoomApi(title: 'Garden', failInvitations: true),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Garden'), findsOneWidget);
    expect(find.text('Room invitations unavailable'), findsOneWidget);
    expect(find.text('Retry invitations'), findsOneWidget);
  });

  testWidgets('old invitation error cannot leak into a replacement account', (
    tester,
  ) async {
    final original = _RoomApi(title: 'Original');
    original.pendingJoin = Completer<void>();
    final replacement = _RoomApi(title: 'Replacement');
    await tester.pumpWidget(MaterialApp(home: RoomsScreen(api: original)));
    await tester.pumpAndSettle();
    expect(find.text('Old invitation'), findsOneWidget);
    await tester.tap(find.text('Accept'));
    await tester.pump();
    await tester.pumpWidget(MaterialApp(home: RoomsScreen(api: replacement)));
    await tester.pumpAndSettle();
    original.pendingJoin!.completeError(StateError('old account error'));
    await tester.pumpAndSettle();
    expect(find.text('Replacement'), findsOneWidget);
    expect(find.text('Old invitation'), findsNothing);
    expect(find.text('Original'), findsNothing);
    expect(find.textContaining('old account error'), findsNothing);
  });

  testWidgets('account API change clears prior private Rooms before readback', (
    tester,
  ) async {
    final oldApi = _RoomApi(title: 'Private archive');
    final deferred = Completer<List<CommunityRoom>>();
    final newApi = _RoomApi(title: 'New account', delayed: deferred);
    await tester.pumpWidget(MaterialApp(home: RoomsScreen(api: oldApi)));
    await tester.pumpAndSettle();
    expect(find.text('Private archive'), findsOneWidget);
    await tester.pumpWidget(MaterialApp(home: RoomsScreen(api: newApi)));
    await tester.pump();
    expect(find.text('Private archive'), findsNothing);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    deferred.complete([
      const CommunityRoom(
        id: 'room_new',
        name: 'New account',
        visibility: 'private',
        postingPolicy: 'admins',
        ownerId: 'new',
        role: 'member',
      ),
    ]);
    await tester.pumpAndSettle();
    expect(find.text('New account'), findsOneWidget);
    expect(find.text('Private archive'), findsNothing);
  });
}
