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
  bool failCreate = true;
  CommunityRoom get value => CommunityRoom(id: 'room_1', name: 'Garden', visibility: 'public', postingPolicy: policy, ownerId: 'owner', role: role, memberCount: 2);
  @override Future<CommunityRoom> room(String id) async => value;
  @override Future<List<Map<String, dynamic>>> invitations() async => [];
  @override Future<List<CommunityRoom>> list(bool joined) async => [value];
  @override Future<List<Map<String, dynamic>>> items(String id, String collection) async => collection == 'timeline' ? [{'id': 'post_1', 'authorId': 'owner', 'body': 'Welcome gardeners'}] : collection == 'reports/summary' ? [{'postId': 'post_1', 'excerpt': 'Welcome gardeners', 'reportCount': 2}] : [];
  @override Future<void> action(String id, String action, [Map<String, dynamic>? values]) async { if (values != null) sent.add(values); }
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
    expect(api.removed, contains('posts/post_1'));
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
