import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/rooms_client.dart';
import 'package:masanawa/src/features/rooms/rooms_screen.dart';

class FakeRooms implements RoomsClient {
 @override Future<List<RoomInfo>> list({required bool joined,String query='',String language=''})async=>
  [const RoomInfo('room_test','Mathematics','character_teacher','en',1,false,false)];
 @override Future<RoomInfo> room(String id)async=>
  const RoomInfo('room_test','Mathematics','character_teacher','en',1,false,false);
 @override Future<void> join(String id)async{}
 @override Future<void> leave(String id)async{}
 @override Future<RoomQuestion> ask(String id,String text,String key)async=>
  const RoomQuestion('room-question_1','Can I learn algebra?','queued',null);
 @override Future<List<RoomQuestion>> questions(String id)async=>[];
 @override Future<List<RoomLesson>> lessons(String id)async=>[];
}
class CountingRooms extends FakeRooms {
  int joinedCalls = 0;
  int discoverCalls = 0;
  String lastQuery = '';
  @override
  Future<List<RoomInfo>> list({required bool joined, String query='', String language=''}) async {
    if (joined) {
      joinedCalls++;
      return [];
    }
    discoverCalls++;
    lastQuery = query;
    if (query.isNotEmpty) return [];
    return [const RoomInfo('room_test','Mathematics','character_teacher','en',1,false,false)];
  }
}

void main(){
 testWidgets('fan sees professional Rooms but cannot create one',(tester)async{
  await tester.pumpWidget(MaterialApp(home:RoomsScreen(client:FakeRooms())));
  await tester.pumpAndSettle();
  expect(find.text('Mathematics'),findsOneWidget);
  expect(find.text('Create Room'),findsNothing);
  await tester.tap(find.text('Mathematics'));await tester.pumpAndSettle();
  expect(find.text('Join free Room'),findsOneWidget);
 });
 testWidgets('discover auto-selection runs once and Clear restores query',(tester)async{
  final api=CountingRooms();
  await tester.pumpWidget(MaterialApp(home:RoomsScreen(client:api)));
  await tester.pumpAndSettle();
  expect(api.joinedCalls,1);
  expect(api.discoverCalls,1);
  await tester.enterText(find.byType(TextField).first,'nonsense');
  await tester.pump(const Duration(milliseconds:350));
  await tester.pumpAndSettle();
  expect(api.lastQuery,'nonsense');
  expect(find.text('Show all'),findsOneWidget);
  await tester.tap(find.text('Show all'));
  await tester.pumpAndSettle();
  expect(api.lastQuery,'');
  expect(tester.widget<TextField>(find.byType(TextField).first).controller!.text,'');
  expect(find.text('Mathematics'),findsOneWidget);
 });
}
