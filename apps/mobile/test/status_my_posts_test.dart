import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/feed_screen.dart';

FeedPost _post(String author,String id,String body)=>FeedPost(
  id:id,authorMasanaId:'',authorType:'human',authorId:author,
  authorName:'Publisher',kind:'text',body:body,mediaIds:const [],
  publishedAt:DateTime.utc(2026,10,23),likeCount:0,
  commentCount:0,liked:false,saved:false,
);
class _Feed implements FeedApi {
  final modes=<String>[];
  final cursors=<String?>[];
  bool returnForeign=false,withNextPage=false;
  @override Future<FeedPage> list({required String mode,String? cursor}) async{
    modes.add(mode);cursors.add(cursor);
    if(mode=='mine') {
      if(returnForeign)return FeedPage([_post('other','foreign-post','Forbidden projection')],null);
      if(cursor!=null)return FeedPage([_post('fan_a','own-second','My second update')],null);
      return FeedPage([_post('fan_a','own-first','My public update')],
        withNextPage?'page-cursor':null);
    }
    return FeedPage([_post('other','global','Someone else updated')],null);
  }
  @override Future<void> like(String id,bool enabled) async{}
  @override Future<void> save(String id,bool enabled) async{}
  @override Future<void> comment(String id,String body,String key) async{}
  @override Future<List<FeedComment>> comments(String id) async=>[];
}
Future<void> _mount(WidgetTester tester,_Feed api,{bool largeText=false})async{
  tester.view.physicalSize=largeText?const Size(320,640):const Size(390,844);
  tester.view.devicePixelRatio=1;
  addTearDown(tester.view.resetPhysicalSize);
  addTearDown(tester.view.resetDevicePixelRatio);
  await tester.pumpWidget(MaterialApp(
    builder:(context,child)=>MediaQuery(data:MediaQuery.of(context).copyWith(
      textScaler:TextScaler.linear(largeText?2:1)),child:child!),
    home:Scaffold(body:MasanaFeedScreen(api:api,accountKey:'fan_a'))));
  await tester.pumpAndSettle();
}
void main(){
  testWidgets('My posts opens an owner-only secondary timeline, returns to For You',(tester)async{
    final api=_Feed();
    await _mount(tester,api);
    expect(api.modes,['for_you']);
    expect(find.text('Someone else updated'),findsOneWidget);
    await tester.tap(find.text('My posts'));
    await tester.pumpAndSettle();
    expect(api.modes.last,'mine');
    expect(find.text('My public update'),findsOneWidget);
    expect(find.text('Someone else updated'),findsNothing);
    await tester.tap(find.byType(BackButton).first);
    await tester.pumpAndSettle();
    expect(find.text('Someone else updated'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });
  testWidgets('unexpected foreign post is rejected rather than exposed',(tester)async{
    final api=_Feed()..returnForeign=true;
    await _mount(tester,api);
    await tester.tap(find.text('My posts'));
    await tester.pumpAndSettle();
    expect(api.modes.last,'mine');
    expect(find.text('Forbidden projection'),findsNothing);
    expect(find.text('Status is unavailable. Retry.'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });
  testWidgets('own posts pagination preserves owner mode and cursor',(tester)async{
    final api=_Feed()..withNextPage=true;
    await _mount(tester,api);
    await tester.tap(find.text('My posts'));
    await tester.pumpAndSettle();
    expect(find.text('My public update'),findsOneWidget);
    await tester.tap(find.text('Load more'));
    await tester.pumpAndSettle();
    expect(api.modes.last,'mine');
    expect(api.cursors.last,'page-cursor');
    expect(find.text('My second update'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });
  testWidgets('320dp and 200 percent text keeps My posts reachable',(tester)async{
    final api=_Feed();
    await _mount(tester,api,largeText:true);
    expect(find.text('My posts'),findsOneWidget);
    await tester.tap(find.text('My posts'));
    await tester.pumpAndSettle();
    expect(find.text('My public update'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });
}
