import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/feed_screen.dart';
import 'package:masanawa/src/features/home_feed/news_story_card.dart';

class NewsFixture implements FeedApi,NewsFeedApi {
 int newsRequests=0,legacyRequests=0;
 @override Future<FeedPage> newsList({String? cursor,String? query,String? publisher})async{
  newsRequests++;
  return FeedPage([FeedPost(
   id:'11111111-1111-4111-8111-111111111111',authorMasanaId:'',
   authorType:'publisher',authorId:'bbc',authorName:'BBC News',
   kind:'text',body:'Verified headline\n\nA short licensed summary.',
   news:NewsPublisher(id:'bbc',name:'BBC News',title:'Verified headline',
    summary:'A short licensed summary.',original:Uri.parse('https://www.bbc.com/news/articles/abc'),
    verified:true),
   mediaIds:const [],publishedAt:DateTime.now(),likeCount:3,
   commentCount:2,liked:false,saved:false,
  )],null);
 }
 @override Future<List<NewsPublisherChoice>> newsPublishers()async=>[
  const NewsPublisherChoice('bbc','BBC News'),
  const NewsPublisherChoice('dw','DW News'),
 ];
 @override Future<FeedPage> list({required String mode,String? cursor})async{
  legacyRequests++;return const FeedPage([],null);
 }
 @override Future<void> like(String id,bool enabled)async{}
 @override Future<void> save(String id,bool enabled)async{}
 @override Future<void> comment(String id,String body,String key)async{}
 @override Future<List<FeedComment>> comments(String id)async=>[];
}
void main(){
 testWidgets('Home is publisher news only with a verified label, native engagement and no raw URL',
  (tester)async{
   final api=NewsFixture();
   await tester.pumpWidget(MaterialApp(home:Scaffold(body:
    MasanaFeedScreen(api:api,accountKey:'signed-in',newsMode:true))));
   await tester.pumpAndSettle();
   expect(api.newsRequests,greaterThan(0));
   expect(api.legacyRequests,0);
   expect(find.text('BBC News'),findsOneWidget);
   expect(find.text('Verified headline'),findsOneWidget);
   expect(find.text('A short licensed summary.'),findsOneWidget);
   expect(find.text('Read original'),findsOneWidget);
   expect(find.textContaining('https://'),findsNothing);
   expect(find.byType(NewsPublisherHeader),findsOneWidget);
   expect(find.byTooltip('Tip MB'),findsNothing);
   expect(find.text('Comment'),findsOneWidget);
   expect(find.text('Share'),findsOneWidget);
  });
 testWidgets('Home publisher filter selects an approved publisher', (tester)async{
  final api=NewsFixture();
  await tester.pumpWidget(MaterialApp(home:Scaffold(body:
   MasanaFeedScreen(api:api,accountKey:'signed-in',newsMode:true))));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Sources'));
  await tester.pumpAndSettle();
  expect(find.text('DW News'),findsOneWidget);
  await tester.tap(find.text('DW News'));
  await tester.pumpAndSettle();
  expect(find.text('Source selected'),findsOneWidget);
 });
}
