import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/feed_post_detail_screen.dart';
import 'package:masanawa/src/features/home_feed/feed_image_mosaic.dart';
import 'package:masanawa/src/features/home_feed/feed_media_api.dart';

class _ApprovedMedia implements FeedMediaApi {
  @override
  Future<FeedMediaGrant> getGrant(String postId,String mediaId) async =>
      FeedMediaGrant(mediaId:mediaId,kind:'image',
        url:Uri.parse('https://example.test/approved'),
        expiresAt:DateTime.now().add(const Duration(minutes:2)));
}

final sample=FeedPost(id:'381026c2-9d56-47b1-b73d-1784e24e41e2',
  authorMasanaId:'masana_lecturer',authorName:'Gwana',kind:'text',
  body:'Study tips for today',mediaIds:const [],publishedAt:DateTime.utc(2026),
  likeCount:0,commentCount:1,liked:false,saved:false);
final root=FeedComment(id:'9b8c8884-7a31-49d9-aee5-521364b54aef',body:'A question',
  state:'visible',createdAt:DateTime.utc(2026));

class _DetailReactions implements FeedApi, ReactionFeedApi {
  final writes=<(String,String?)>[];
  @override Future<void> react(String postId,String? kind) async {
    writes.add((postId,kind));
  }
  @override Future<FeedPage> list({required String mode,String? cursor}) async =>
    FeedPage([sample],null);
  @override Future<void> like(String id,bool enabled) async {}
  @override Future<void> save(String id,bool enabled) async {}
  @override Future<void> comment(String id,String body,String key) async {}
  @override Future<List<FeedComment>> comments(String id) async => [];
}

void main(){
 testWidgets('original detail has the Home action strip and preserves accepted reaction on stale GET',
     (tester) async {
   final api=_DetailReactions(),shared=<String>[];
   await tester.pumpWidget(MaterialApp(home:FeedPostDetailScreen(
     initialPost:sample,accountKey:'fan',engagementApi:api,
     loadPost:(_) async => sample,
     loadThread:(_,__) async =>[],
     sendComment:(_,__,___,____) async {},
     onSharePost:(post) async => shared.add(post.id),
   )));
   await tester.pumpAndSettle();
   await tester.ensureVisible(find.text('Like'));
   await tester.tap(find.text('Like'));
   await tester.pumpAndSettle();
   expect(api.writes,[(sample.id,'like')]);
   expect(find.byIcon(Icons.thumb_up_rounded),findsOneWidget,
     reason:'A stale reaction GET must not visually undo an accepted PUT');
   await tester.tap(find.text('Share'));
   expect(shared,[sample.id]);
   await tester.longPress(find.text('Like'));
   await tester.pumpAndSettle();
   await tester.tap(find.text('Love'));
   await tester.pumpAndSettle();
   expect(api.writes.last,(sample.id,'love'));
   expect(tester.takeException(),isNull);
 });

 testWidgets('detail shares the feed multi-image mosaic and preserves exact media entry', (tester) async {
   final gallery=FeedPost(id:'status-gallery',authorMasanaId:'masana_owner',
     kind:'image',body:'Approved photos',mediaIds:const ['image-first','image-second'],
     publishedAt:DateTime.utc(2026),likeCount:0,commentCount:0,
     liked:false,saved:false);
   final opened=<String>[];
   await tester.pumpWidget(MaterialApp(home:FeedPostDetailScreen(
     initialPost:gallery,accountKey:'fan',loadPost:(_)async=>gallery,
     loadThread:(_,__)async=>[],sendComment:(_,__,___,____)async{},
     mediaApi:_ApprovedMedia(),onMedia:opened.add)));
   await tester.pump();
   expect(find.byType(FeedImageMosaic),findsOneWidget);
   expect(find.text('View image'),findsNothing,
     reason:'Detail must render the same approved mosaic as the feed');
 });
 testWidgets('C22 loads approved detail, oldest order and replies with parent id',(tester)async{
   String? reply;String order='newest';String? key;
   await tester.pumpWidget(MaterialApp(home:FeedPostDetailScreen(
     initialPost:sample,accountKey:'fan_one',
     loadPost:(id)async=>sample,
     loadThread:(id,sort)async{order=sort;return [root];},
     sendComment:(id,body,idempotency,parent)async{
       reply=parent;key=idempotency;
     })));
   await tester.pumpAndSettle();
   expect(find.text('Study tips for today'),findsOneWidget);
   expect(find.text('A question'),findsOneWidget);
   await tester.tap(find.text('Oldest'));
   await tester.pumpAndSettle();
   expect(order,'oldest');
   await tester.tap(find.text('Reply'));
   await tester.pumpAndSettle();
   await tester.enterText(find.byType(TextField),'Follow-up question');
   await tester.tap(find.byTooltip('Send'));
   await tester.pumpAndSettle();
   expect(reply,root.id);expect(key,startsWith('c22-'));
   expect(find.text('Publish'),findsNothing);
 });
 testWidgets('C22 does not show old account content when switching',(tester)async{
   final old=sample;
   final next=FeedPost(id:'4aa45213-95b9-45ad-9579-52924e07ce73',
     authorMasanaId:'masana_other',kind:'text',body:'New account post',
     mediaIds:const [],publishedAt:DateTime.utc(2026),likeCount:0,
     commentCount:0,liked:false,saved:false);
   Future<void> render(String account,FeedPost post)async{
     await tester.pumpWidget(MaterialApp(home:FeedPostDetailScreen(
       initialPost:post,accountKey:account,loadPost:(_)async=>post,
       loadThread:(_,__)async=>[],sendComment:(_,__,___,____)async{})));
     await tester.pumpAndSettle();
   }
   await render('first',old);
   expect(find.text('Study tips for today'),findsOneWidget);
   await render('second',next);
   expect(find.text('Study tips for today'),findsNothing);
   expect(find.text('New account post'),findsOneWidget);
 });
 testWidgets('identified comment opens its canonical human profile only when linked',(tester)async{
   String? openedHuman;
   final identified=FeedComment.fromJson({
     'id':'9b8c8884-7a31-49d9-aee5-521364b54aef',
     'body':'Verified comment',
     'state':'visible',
     'createdAt':'2026-10-22T09:00:00Z',
     'author':{'type':'human','id':'fan_public','handle':'musa_verified',
       'displayName':'Musa Verified'},
   });
   await tester.pumpWidget(MaterialApp(home:FeedPostDetailScreen(
     initialPost:sample,accountKey:'fan_one',
     loadPost:(_)async=>sample,loadThread:(_,__)async=>[identified],
     sendComment:(_,__,___,____)async{},
     onHumanProfile:(handle)=>openedHuman=handle,
   )));
   await tester.pumpAndSettle();
   expect(find.text('Musa Verified'),findsOneWidget);
   await tester.tap(find.text('Musa Verified'));
   expect(openedHuman,'musa_verified');
   expect(find.text('Verified comment'),findsOneWidget);
 });

 testWidgets('Status comments continue in canonical 30-row pages without duplicates',(tester)async{
   final rows=List<FeedComment>.generate(35,(index)=>FeedComment(
     id:'comment-${index.toString().padLeft(2,'0')}',body:'Page item $index',
     state:'visible',createdAt:DateTime.utc(2026)));
   final requests=<String>[];
   await tester.pumpWidget(MaterialApp(home:FeedPostDetailScreen(
     initialPost:sample,accountKey:'fan_one',
     loadPost:(_)async=>sample,
     loadThread:(_,__)async=>rows.take(30).toList(),
     loadMoreThread:(_,sort,before)async{
       requests.add('$sort:$before');
       return [rows[29],...rows.skip(30)];
     },
     sendComment:(_,__,___,____)async{},
   )));
   await tester.pumpAndSettle();
   await tester.ensureVisible(find.text('Load older comments'));
   await tester.pumpAndSettle();
   await tester.tap(find.text('Load older comments'));
   await tester.pumpAndSettle();
   expect(requests,['newest:comment-29']);
   expect(find.text('Page item 34'),findsOneWidget);
   expect(find.text('Load older comments'),findsNothing);
   final state=tester.state(find.byType(FeedPostDetailScreen)) as dynamic;
   expect(state.comments.length,35);
 });
 testWidgets('Status older comments retry preserves the first page and exact cursor',(tester)async{
   final rows=List<FeedComment>.generate(30,(i)=>FeedComment(
     id:'row-$i',body:'Comment $i',state:'visible',createdAt:DateTime.utc(2026)));
   var attempts=0;
   await tester.pumpWidget(MaterialApp(home:FeedPostDetailScreen(
     initialPost:sample,accountKey:'fan_one',
     loadPost:(_)async=>sample,loadThread:(_,__)async=>rows,
     loadMoreThread:(_,sort,before)async{
       expect(sort,'newest');expect(before,'row-29');
       if(++attempts==1)throw StateError('offline');
       return [FeedComment(id:'row-30',body:'Recovered row',state:'visible',
         createdAt:DateTime.utc(2026))];
     },sendComment:(_,__,___,____)async{},
   )));
   await tester.pumpAndSettle();
   await tester.ensureVisible(find.text('Load older comments'));
   await tester.pumpAndSettle();
   await tester.tap(find.text('Load older comments'));
   await tester.pumpAndSettle();
   expect(find.textContaining('Could not load older comments'),findsOneWidget);
   expect(find.text('Load older comments'),findsOneWidget);
   await tester.tap(find.text('Load older comments'));
   await tester.pumpAndSettle();
   expect(attempts,2);
   expect(find.text('Recovered row'),findsOneWidget);
 });

 testWidgets('C22 feature gate disables the post journey',(tester)async{
   await tester.pumpWidget(MaterialApp(home:FeedPostDetailScreen(
     initialPost:sample,accountKey:'fan',enabled:false,
     loadPost:(_)async=>throw StateError('never'),
     loadThread:(_,__)async=>[],sendComment:(_,__,___,____)async{})));
   expect(find.text('This feature is unavailable'),findsOneWidget);
 });
}
