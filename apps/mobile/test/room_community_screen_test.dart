import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_community_api.dart';
import 'package:masanawa/src/features/rooms/room_community_screen.dart';

class FakeCommunityApi implements RoomCommunityApi {
  String policy = 'admins';
  String? role = 'member';
  final sent = <Map<String, dynamic>>[];
  final creates = <Map<String, dynamic>>[];
  final removed = <String>[];
  final actions = <String>[];
  bool failReview = false;
  bool failCreate = true;
  CommunityRoom get value => CommunityRoom(id: 'room_1', name: 'Garden', visibility: 'public', postingPolicy: policy, ownerId: 'owner', role: role, memberCount: 2);
  @override Future<CommunityRoom> room(String id) async => value;
  @override Future<List<Map<String, dynamic>>> invitations() async => [];
  @override Future<List<CommunityRoom>> list(bool joined) async => [value];
  @override Future<List<Map<String, dynamic>>> items(String id, String collection) async =>
    collection == 'timeline' ? [{'id': 'post_1', 'authorId': 'owner', 'authorDisplayName': 'Amina', 'body': 'Welcome gardeners'}]
      : collection == 'reports/summary' ? [{'postId': 'post_1', 'excerpt': 'Welcome gardeners', 'reportCount': 2}]
      : collection == 'reports/reviews' ? [{'postId': 'post_0', 'decision': 'dismissed', 'reportCount': 1, 'reviewedAt': '2026-10-22T00:00:00Z'}]
      : [];
  @override Future<void> action(String id, String action, [Map<String, dynamic>? values]) async {
    actions.add(action);
    if (values != null) sent.add(values);
    if (failReview && action.endsWith('/review')) throw StateError('connection_failed');
  }
  @override Future<CommunityRoom> create(Map<String, dynamic> values) async { creates.add(values); if (failCreate) throw StateError('offline'); return value; }
  @override Future<CommunityRoom> update(String id, Map<String, dynamic> values) async => value;
  @override Future<String> invite(String id, String requestId) async => 'secret';
  @override Future<void> revoke(String id, String inviteId) async {}
  @override Future<Map<String, dynamic>> request(String id, String method, String resource, Map<String, dynamic> values) async => {};
  @override Future<List<Map<String, dynamic>>> candidates(String kind, String query) async => [];
  @override Future<void> modify(String id, String resource, Map<String, dynamic> values) async {}
  @override Future<void> remove(String id, String resource) async { removed.add(resource); }
  @override Future<void> member(String id, String userId, Map<String, dynamic> values) async {}
}
void main() {
  test('Room author projection never prints a raw identifier as a name', () {
    expect(roomVisibleIdentity({'authorId': 'user_123'}), 'Room member');
    expect(roomVisibleIdentity({'authorDisplayName': 'Amina', 'authorId': 'user_123'}), 'Amina');
    expect(roomVisibleIdentity({'authorDisplayName': 'character_badid', 'authorKind': 'masana'}), 'Masana');
  });

  test('Room timeline places pinned/new posts first and comments below their parent', () {
    final sorted = orderRoomTimeline([
      {'id': 'r1', 'parentId': 'p1', 'createdAt': '2026-10-23T03:02:00Z'},
      {'id': 'p2', 'createdAt': '2026-10-23T03:03:00Z'},
      {'id': 'p1', 'createdAt': '2026-10-23T03:01:00Z', 'pinned': true},
      {'id': 'r2', 'parentId': 'p1', 'createdAt': '2026-10-23T03:04:00Z'},
    ]);
    expect(sorted.map((p) => p['id']), ['p1', 'r1', 'r2', 'p2']);
  });

  testWidgets('Rooms display a public name instead of an internal user ID', (tester) async {
    final api = FakeCommunityApi();
    await tester.pumpWidget(MaterialApp(home: RoomCommunityScreen(api: api, roomId: 'room_1')));
    await tester.pumpAndSettle();
    expect(find.text('Amina'), findsOneWidget);
    expect(find.text('owner'), findsNothing);
  });
  testWidgets('broadcast member reads timeline then comments with parent attribution', (tester) async {
    final api = FakeCommunityApi();
    await tester.pumpWidget(MaterialApp(home: RoomCommunityScreen(api: api, roomId: 'room_1')));
    await tester.pumpAndSettle();
    expect(find.text('Welcome gardeners'), findsOneWidget);
    expect(find.byType(TextField), findsNothing);
    await tester.tap(find.text('Comment / reply'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'Thank you');
    await tester.tap(find.byTooltip('Send post'));
    await tester.pumpAndSettle();
    expect(api.sent.single['parentId'], 'post_1');
    expect(api.sent.single['body'], 'Thank you');
    expect(api.sent.single['requestId'], isNotEmpty);
  });
  testWidgets('a member can report a Room post with a reason and fixed target', (tester) async {
    final api = FakeCommunityApi();
    await tester.pumpWidget(MaterialApp(home: RoomCommunityScreen(api: api, roomId: 'room_1')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Report post'));
    await tester.pumpAndSettle();
    expect(find.text('Report post'), findsWidgets);
    await tester.enterText(find.byType(TextField).last, 'Spam content');
    await tester.tap(find.text('Submit report'));
    await tester.pumpAndSettle();
    final report = api.sent.singleWhere((value) => value['targetId'] == 'post_1');
    expect(report['reason'], 'Spam content');
    expect(report['requestId'], isNotEmpty);
    expect(find.text('Post reported for review'), findsOneWidget);
  });
  testWidgets('Room owner sees aggregate reports without member identities and can remove a post', (tester) async {
    final api = FakeCommunityApi()..role = 'owner';
    await tester.pumpWidget(MaterialApp(home: RoomCommunityScreen(api: api, roomId: 'room_1')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Garden'));
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.text('Reported posts (1)'), 220, scrollable: find.byType(Scrollable).first);
    await tester.tap(find.text('Reported posts (1)'));
    await tester.pumpAndSettle();
    expect(find.text('2 member report(s)'), findsOneWidget);
    await tester.ensureVisible(find.text('Remove post'));
    await tester.tap(find.text('Remove post'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Confirm'));
    await tester.pumpAndSettle();
    expect(api.actions, contains('reports/post_1/review'));
    expect(api.sent.last['decision'], 'removed');
    expect(api.sent.last['requestId'], isNotEmpty);
  });
  testWidgets('manager dismissal preserves stable retry identity, and audit has no reporter details', (tester) async {
    final api = FakeCommunityApi()..role = 'owner'..failReview = true;
    await tester.pumpWidget(MaterialApp(home: RoomCommunityScreen(api: api, roomId: 'room_1')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Garden'));
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.text('Reported posts (1)'), 220, scrollable: find.byType(Scrollable).first);
    await tester.tap(find.text('Reported posts (1)'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Dismiss reports'));
    await tester.tap(find.text('Dismiss reports'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Confirm'));
    await tester.pumpAndSettle();
    final first = api.sent.last['requestId'];
    expect(find.textContaining('Could not connect'), findsWidgets);
    api.failReview = false;
    await tester.scrollUntilVisible(find.text('Dismiss reports'), 120, scrollable: find.byType(Scrollable).first);
    await tester.tap(find.text('Dismiss reports'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Confirm'));
    await tester.pumpAndSettle();
    expect(api.sent.last['decision'], 'dismissed');
    expect(api.sent.last['requestId'], first);
    expect(api.actions.where((v) => v == 'reports/post_1/review'), hasLength(2));
    await tester.scrollUntilVisible(find.text('Moderation history (1)'), 200, scrollable: find.byType(Scrollable).first);
    await tester.tap(find.text('Moderation history (1)'));
    await tester.pumpAndSettle();
    expect(find.text('Reports dismissed'), findsOneWidget);
    expect(find.textContaining('reporter'), findsNothing);
  });

  testWidgets('create validation and failed retry retain draft and request identity', (tester) async {
    final api = FakeCommunityApi();
    await tester.pumpWidget(MaterialApp(home: CreateCommunityRoomScreen(api: api)));
    await tester.tap(find.widgetWithText(FilledButton, 'Create Room'));
    await tester.pumpAndSettle();
    expect(find.text('Enter a Room name'), findsOneWidget);
    await tester.enterText(find.byType(TextFormField).first, 'Garden');
    await tester.ensureVisible(find.widgetWithText(FilledButton, 'Create Room'));
    await tester.tap(find.widgetWithText(FilledButton, 'Create Room'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.widgetWithText(FilledButton, 'Create Room'));
    await tester.tap(find.widgetWithText(FilledButton, 'Create Room'));
    await tester.pumpAndSettle();
    expect(api.creates, hasLength(2));
    expect(api.creates[0]['requestId'], api.creates[1]['requestId']);
    expect(api.creates[1]['name'], 'Garden');
    expect(api.creates[1]['postingPolicy'], 'admins');
  });
  testWidgets('outsider sees join without private timeline fetch or composer', (tester) async {
    final api = FakeCommunityApi()..role = null;
    await tester.pumpWidget(MaterialApp(home: RoomCommunityScreen(api: api, roomId: 'room_1')));
    await tester.pumpAndSettle();
    expect(find.text('Join Room'), findsOneWidget);
    expect(find.text('Welcome gardeners'), findsNothing);
    expect(find.byTooltip('Send post'), findsNothing);
  });
  testWidgets('membership revocation discards an unsent Room draft before rejoin', (tester) async {
    final api = FakeCommunityApi()..policy = 'members';
    await tester.pumpWidget(MaterialApp(home: RoomCommunityScreen(api: api, roomId: 'room_1')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'Private unsent draft');
    api.role = null;
    await tester.tap(find.byTooltip('Refresh Room'));
    await tester.pumpAndSettle();
    expect(find.text('Private unsent draft'), findsNothing);
    expect(find.byTooltip('Send post'), findsNothing);
    api.role = 'member';
    await tester.tap(find.byTooltip('Refresh Room'));
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byType(TextField)).controller?.text, isEmpty);
    expect(api.sent, isEmpty);
  });
}
