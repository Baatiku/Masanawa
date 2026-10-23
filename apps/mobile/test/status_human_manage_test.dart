import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/feed_screen.dart';

const _id='381026c2-9d56-47b1-b73d-1784e24e41e2';
FeedPost _post(String author,String body,{bool human=true})=>FeedPost(
 id:_id,authorMasanaId:human?'':'masana_owner',
 authorType:human?'human':'masana',authorId:author,authorName:'Publisher',
 kind:'text',body:body,mediaIds:const [],publishedAt:DateTime.utc(2026,10,23),
 likeCount:0,commentCount:0,liked:false,saved:false,
);
class _Manager implements FeedApi,HumanPostManager {
 _Manager(this.author);
 final String author;
 String? content='Original human update';
 int removes=0,edits=0;
 Completer<void>? pendingRemoval;
 @override Future<FeedPage> list({required String mode,String? cursor}) async=>
   FeedPage(content==null?[]:[_post(author,content!)],null);
 @override Future<FeedPost> editHumanText(String id,String expectedBody,String body) async {
  edits++;
  if(id!=_id||expectedBody!=content)throw StateError('stale');
  content=body;return _post(author,body);
 }
 @override Future<void> removeHumanPost(String id) async {
  removes++;
  if(pendingRemoval!=null)await pendingRemoval!.future;
  content=null;
 }
 @override Future<void> like(String postId,bool enabled) async{}
 @override Future<void> save(String postId,bool enabled) async{}
 @override Future<void> comment(String postId,String body,String key) async{}
 @override Future<List<FeedComment>> comments(String id) async=>[];
}
Future<void> _mount(WidgetTester tester,_Manager manager,{String account='fan_a'}) async{
 await tester.pumpWidget(MaterialApp(home:Scaffold(body:MasanaFeedScreen(
   api:manager,accountKey:account))));
 await tester.pumpAndSettle();
}
void main(){
 testWidgets('self public text allows edit with server readback',(tester) async {
  final api=_Manager('fan_a');
  await _mount(tester,api);
  await tester.tap(find.byKey(const ValueKey('status-own-actions-$_id')));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Edit post'));
  await tester.pumpAndSettle();
  await tester.enterText(find.byType(TextFormField),'Edited public Status');
  await tester.tap(find.text('Save edit'));
  await tester.pumpAndSettle();
  expect(api.edits,1);
  expect(find.text('Edited public Status'),findsOneWidget);
  expect(tester.takeException(),isNull);
 });
 testWidgets('removal confirms and clears published projection',(tester) async{
  final api=_Manager('fan_a');
  await _mount(tester,api);
  await tester.tap(find.byKey(const ValueKey('status-own-actions-$_id')));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Remove post'));
  await tester.pumpAndSettle();
  expect(api.removes,0);
  await tester.tap(find.text('Cancel'));
  await tester.pumpAndSettle();
  expect(api.removes,0);
  await tester.tap(find.byKey(const ValueKey('status-own-actions-$_id')));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Remove post'));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Remove'));
  await tester.pumpAndSettle();
  expect(api.removes,1);
  expect(find.text('Original human update'),findsNothing);
  expect(tester.takeException(),isNull);
 });
 testWidgets('another human has no own-post mutation menu',(tester) async{
  final api=_Manager('fan_b');
  await _mount(tester,api);
  expect(find.byKey(const ValueKey('status-own-actions-$_id')),findsNothing);
  expect(api.edits,0);expect(api.removes,0);
 });
 testWidgets('account replacement fences delayed removal',(tester) async{
  final api=_Manager('fan_a')..pendingRemoval=Completer<void>();
  await _mount(tester,api);
  await tester.tap(find.byKey(const ValueKey('status-own-actions-$_id')));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Remove post'));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Remove'));
  await tester.pump();
  await _mount(tester,_Manager('fan_b'),account:'fan_b');
  api.pendingRemoval!.complete();
  await tester.pumpAndSettle();
  expect(find.text('Original human update'),findsOneWidget);
  expect(tester.takeException(),isNull);
 });
}
