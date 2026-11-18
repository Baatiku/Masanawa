import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/feed_screen.dart';

Map<String,dynamic> post(String body)=>{'id':'post-1','authorMasanaId':'masana_one','authorName':'Amina',
 'kind':'text','body':body,'media':<String>[],'publishedAt':'2026-10-27T18:00:00Z','likeCount':0,'commentCount':0};
class FeedFixture {
 int reads=0;Completer<Map<String,dynamic>>? pending;String approved='Fresh approved text';bool denied=false;
 late final Dio dio=Dio(BaseOptions(baseUrl:'https://example.test'))..interceptors.add(InterceptorsWrapper(onRequest:(options,handler){
  if(options.path=='/v1/feed'){
   handler.resolve(Response(requestOptions:options,statusCode:200,data:{'items':[post('Cached text')],'nextCursor':null}));
  }else if(options.path=='/v1/posts/post-1'){
   reads++;
   void fail(Object error)=>handler.reject(error is DioException?error:DioException(requestOptions:options,error:error));
   if(pending!=null){pending!.future.then((value)=>handler.resolve(Response(requestOptions:options,statusCode:200,data:value)),onError:fail);}
   else if(denied){fail(DioException(requestOptions:options,type:DioExceptionType.badResponse,response:Response(requestOptions:options,statusCode:403)));}
   else{handler.resolve(Response(requestOptions:options,statusCode:200,data:post(approved)));}
  }else{handler.reject(DioException(requestOptions:options,type:DioExceptionType.connectionError));}
 }));
 late final api=DioFeedApi(dio,()async=>'synthetic-owner-token');
}
Future<void> draw(WidgetTester tester,String account,FeedApi api)async{
 await tester.pumpWidget(MaterialApp(home:Scaffold(body:MasanaFeedScreen(api:api,accountKey:account))));
 await tester.pumpAndSettle();
}
void main(){
 TestWidgetsFlutterBinding.ensureInitialized();
 const channel=MethodChannel('dev.fluttercommunity.plus/share');
 final shares=<Map<String,dynamic>>[];bool nativeFailure=false;
 setUp((){
  shares.clear();nativeFailure=false;
  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel,(call)async{
   expect(call.method,'share');shares.add(Map<String,dynamic>.from(call.arguments as Map));
   if(nativeFailure)throw PlatformException(code:'share_unavailable');return '';
  });
 });
 tearDown(()=>TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel,null));
 testWidgets('one preparation uses fresh permission and dismissal releases the share lock',(tester)async{
  final f=FeedFixture()..pending=Completer<Map<String,dynamic>>();addTearDown(()=>f.dio.close(force:true));
  await draw(tester,'owner',f.api);await tester.tap(find.byIcon(Icons.share_outlined));await tester.tap(find.byIcon(Icons.share_outlined));
  await tester.pumpAndSettle();expect(f.reads,1);expect(shares,isEmpty);
  f.pending!.complete(post('Fresh approved text'));await tester.pumpAndSettle();
  expect(shares,hasLength(1));expect(shares.single['text'],contains('Fresh approved text'));expect(shares.single['text'],isNot(contains('Cached text')));
  f.pending=null;await tester.tap(find.byIcon(Icons.share_outlined));await tester.pumpAndSettle();expect(f.reads,2);expect(shares.length,2);
 });
 testWidgets('denied fresh permission cannot share cached text and retry requires another authorized read',(tester)async{
  final f=FeedFixture()..denied=true;addTearDown(()=>f.dio.close(force:true));await draw(tester,'owner',f.api);
  await tester.tap(find.byIcon(Icons.share_outlined));await tester.pumpAndSettle();
  expect(shares,isEmpty);expect(find.text('Sharing unavailable.'),findsOneWidget);
  f.denied=false;await tester.tap(find.byIcon(Icons.share_outlined));await tester.pumpAndSettle();expect(f.reads,2);expect(shares.length,1);
 });
 testWidgets('an old-account denial cannot show a new-account snackbar',(tester)async{
  final f=FeedFixture()..pending=Completer<Map<String,dynamic>>();addTearDown(()=>f.dio.close(force:true));await draw(tester,'owner',f.api);
  await tester.tap(find.byIcon(Icons.share_outlined));await tester.pump();await tester.pump();
  await draw(tester,'other',f.api);f.pending!.completeError(StateError('old account denied'));await tester.pumpAndSettle();
  expect(shares,isEmpty);expect(find.text('Sharing unavailable.'),findsNothing);expect(tester.takeException(),isNull);
 });
 testWidgets('same-account API credential replacement cancels old sharing without erasing public posts',(tester)async{
  final old=FeedFixture()..pending=Completer<Map<String,dynamic>>(),fresh=FeedFixture()..approved='New credential-approved text';
  addTearDown(()=>old.dio.close(force:true));addTearDown(()=>fresh.dio.close(force:true));await draw(tester,'owner',old.api);
  await tester.tap(find.byIcon(Icons.share_outlined));await tester.pump();await tester.pump();
  await draw(tester,'owner',fresh.api);old.pending!.complete(post('Old private share payload'));await tester.pumpAndSettle();
  expect(shares,isEmpty);expect(find.text('Cached text'),findsOneWidget);
  await tester.tap(find.byIcon(Icons.share_outlined));await tester.pumpAndSettle();expect(shares.single['text'],contains('New credential-approved text'));
 });
 testWidgets('refreshing a pending share discards the old preparation and permits an explicit retry',(tester)async{
  final f=FeedFixture()..pending=Completer<Map<String,dynamic>>();addTearDown(()=>f.dio.close(force:true));
  await draw(tester,'owner',f.api);await tester.tap(find.byIcon(Icons.share_outlined));await tester.pump();await tester.pump();
  unawaited(tester.widget<RefreshIndicator>(find.byType(RefreshIndicator).first).onRefresh());await tester.pumpAndSettle();
  f.pending!.complete(post('Old refresh payload'));await tester.pumpAndSettle();expect(shares,isEmpty);
  f.pending=null;await tester.tap(find.byIcon(Icons.share_outlined));await tester.pumpAndSettle();expect(shares.length,1);
 });
 testWidgets('native share failure permits an explicit retry with another fresh read',(tester)async{
  final f=FeedFixture();addTearDown(()=>f.dio.close(force:true));await draw(tester,'owner',f.api);nativeFailure=true;
  await tester.tap(find.byIcon(Icons.share_outlined));await tester.pumpAndSettle();expect(find.text('Sharing unavailable.'),findsOneWidget);
  nativeFailure=false;await tester.tap(find.byIcon(Icons.share_outlined));await tester.pumpAndSettle();expect(f.reads,2);expect(shares.length,2);
  expect(tester.takeException(),isNull);
 });
}
