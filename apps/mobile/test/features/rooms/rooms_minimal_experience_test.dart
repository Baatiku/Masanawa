import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/rooms_client.dart';
import 'package:masanawa/src/features/rooms/rooms_screen.dart';
import 'package:masanawa/src/features/rooms/room_discussion_api.dart';
import 'package:masanawa/src/features/rooms/room_discussion_screen.dart';
import 'package:masanawa/src/features/rooms/saved_lessons_client.dart';
import 'package:masanawa/src/features/rooms/saved_lessons_screen.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
class _Rooms implements RoomsClient {
 bool joined=false,paid=false,answerReady=true;int joins=0,leaves=0,questionReads=0;
 final lesson=RoomLesson('room-lesson_one','A complete lesson about the heart and circulation.','lesson',createdAt:DateTime.utc(2026,10,17,8));
 RoomInfo get info=>RoomInfo('room-one','Medicine Room','Dr. Amina Yusuf','en',40,paid,joined);
 RoomQuestion get q=>RoomQuestion('question-one','How does the heart work?','pending',answerReady?'It pumps blood around the body.':null,createdAt:DateTime.utc(2026,10,17,9));
 @override Future<List<RoomInfo>> list({required bool joined,String query='',String language=''})async=>[info];
 @override Future<RoomInfo> room(String id)async=>info;
 @override Future<void> join(String id)async{joins++;joined=true;}
 @override Future<void> leave(String id)async{leaves++;joined=false;}
 @override Future<RoomQuestion> ask(String id,String text,String key)async=>q;
 @override Future<List<RoomQuestion>> questions(String id)async{questionReads++;return [q];}
 @override Future<List<RoomLesson>> lessons(String id)async=>[lesson];
}
class _Discussion implements RoomDiscussionApi {
 @override Future<List<RoomDiscussionTarget>> targets(String roomId)async=>const [RoomDiscussionTarget(kind:'lesson',id:'room-lesson_one',label:'The heart')];
 @override Future<RoomDiscussionPage> list(String roomId,RoomDiscussionTarget target,{String? cursor})async=>const RoomDiscussionPage([],null);
 @override Future<RoomDiscussionReply> send(String roomId,RoomDiscussionTarget target,String body,String key,{String? parentReplyId})async=>throw UnimplementedError();
}
class _Saved implements SavedLessonsClient {
 int saves=0;
 @override String get accountKey=>'a';
 @override bool get isCurrentAccount=>true;
 @override Future<List<SavedRoomLesson>> list(String id)async=>[SavedRoomLesson(id:'room-lesson_one',body:'The heart and circulation',kind:'lesson',bookmarkedAt:DateTime.utc(2026,10,17)),SavedRoomLesson(id:'room-lesson_two',body:'The lungs',kind:'lesson',bookmarkedAt:DateTime.utc(2026,10,17))];
 @override Future<void> save(String room,String id)async{saves++;}
 @override Future<void> remove(String room,String id)async{}
}
Widget app(Widget child)=>MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:child);
void main(){
 test('teacher display metadata never falls back to a raw canonical identifier',(){
  final json={'roomId':'room','professionTitle':'Medicine','teacherCharacterId':'character_private-id','language':'en','planMode':'free'};
  expect(RoomInfo.fromJson(json).teacher,'Masana teacher');
  final named=RoomInfo.fromJson(json,teacherName:(id)=>'Dr. Amina Yusuf');expect(named.teacher,'Dr. Amina Yusuf');expect(named.teacherCharacterId,'character_private-id');
 });
 testWidgets('discovery uses compact rows and opens full info without invented trials',(tester)async{
  final rooms=_Rooms()..paid=true;
  await tester.pumpWidget(app(RoomsScreen(client:rooms)));await tester.pumpAndSettle();
  expect(find.byType(Card),findsNothing);await tester.tap(find.text('Medicine'));await tester.pumpAndSettle();
  expect(find.byType(BottomSheet),findsNothing);expect(find.textContaining('7-Day'),findsNothing);expect(find.textContaining('active members'),findsNothing);
  expect(find.textContaining('subscription'),findsWidgets);expect(rooms.joins,0);expect(tester.takeException(),isNull);
 });
 testWidgets('free join reaches timeline, lesson detail, save and its pinned discussion',(tester)async{
  final rooms=_Rooms(),saved=_Saved();
  await tester.pumpWidget(app(RoomHomeScreen(client:rooms,id:'room-one',discussionApi:_Discussion(),discussionAccountScope:'a',savedLessonsClient:saved,savedLessonsAccountKey:'a')));await tester.pumpAndSettle();
  await tester.tap(find.text('Join free Room'));await tester.pumpAndSettle();expect(rooms.joins,1);
  await tester.tap(find.text(rooms.lesson.body));await tester.pumpAndSettle();expect(find.byType(SelectableText),findsOneWidget);
  await tester.tap(find.byTooltip('Save lesson'));await tester.pumpAndSettle();expect(saved.saves,1);
  await tester.tap(find.text('Open discussion'));await tester.pumpAndSettle();
  expect(tester.widget<RoomDiscussionScreen>(find.byType(RoomDiscussionScreen)).initialTarget?.id,'room-lesson_one');
  expect(find.byType(DropdownButtonFormField<String>),findsNothing);expect(tester.takeException(),isNull);
 });
 testWidgets('question detail updates a pending answer and stops duplicate parent polling',(tester)async{
  final rooms=_Rooms()..joined=true..answerReady=false;
  await tester.pumpWidget(app(RoomHomeScreen(client:rooms,id:'room-one')));await tester.pumpAndSettle();
  await tester.tap(find.text(rooms.q.body));await tester.pumpAndSettle();final before=rooms.questionReads;
  rooms.answerReady=true;await tester.pump(const Duration(seconds:3));await tester.pumpAndSettle();
  expect(find.text('It pumps blood around the body.'),findsOneWidget);expect(rooms.questionReads,before+1);
  await tester.pumpWidget(const SizedBox());await tester.pumpAndSettle();expect(tester.takeException(),isNull);
 });
 testWidgets('joined Room filters real lessons and questions without changing membership',(tester)async{
  final rooms=_Rooms()..joined=true;
  await tester.pumpWidget(app(RoomHomeScreen(client:rooms,id:'room-one')));
  await tester.pumpAndSettle();
  expect(find.text('Room timeline'),findsOneWidget);
  await tester.tap(find.widgetWithText(FilterChip,'Lessons'));await tester.pumpAndSettle();
  expect(find.text(rooms.lesson.body),findsOneWidget);expect(find.text(rooms.q.body),findsNothing);
  await tester.tap(find.widgetWithText(FilterChip,'Questions'));await tester.pumpAndSettle();
  expect(find.text(rooms.q.body),findsOneWidget);expect(find.text(rooms.lesson.body),findsNothing);
  expect(rooms.joins,0);expect(rooms.leaves,0);expect(tester.takeException(),isNull);
 });
 testWidgets('leave opens a dedicated review and Back preserves membership',(tester)async{
  final rooms=_Rooms()..joined=true;
  await tester.pumpWidget(app(RoomHomeScreen(client:rooms,id:'room-one')));await tester.pumpAndSettle();
  await tester.tap(find.byTooltip('More'));await tester.pumpAndSettle();await tester.tap(find.text('Leave Room'));await tester.pumpAndSettle();
  expect(find.byType(AlertDialog),findsNothing);expect(rooms.leaves,0);
  await tester.pageBack();await tester.pumpAndSettle();expect(rooms.joined,isTrue);
 });
 testWidgets('saved lessons can be searched and opened in full',(tester)async{
  await tester.pumpWidget(app(SavedRoomLessonsScreen(client:_Saved(),roomId:'room-one',accountKey:'a')));await tester.pumpAndSettle();
  await tester.enterText(find.byType(TextField),'heart');await tester.pumpAndSettle();expect(find.text('The lungs'),findsNothing);
  await tester.tap(find.text('The heart and circulation'));await tester.pumpAndSettle();expect(find.byType(SelectableText),findsOneWidget);expect(tester.takeException(),isNull);
 });
}
