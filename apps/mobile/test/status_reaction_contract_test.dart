import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/feed_screen.dart';

class _ReactionStub implements FeedApi,ReactionFeedApi {
  _ReactionStub(this.post);
  FeedPost post;
  final reactions=<String?>[];
  @override Future<FeedPage> list({required String mode,String? cursor}) async =>
    FeedPage([post],null);
  @override Future<void> react(String id,String? kind) async {
    reactions.add(kind);
    post=post.withReaction(kind);
  }
  @override Future<void> like(String id,bool enabled) async {}
  @override Future<void> save(String id,bool enabled) async {}
  @override Future<void> comment(String id,String body,String key) async {}
  @override Future<List<FeedComment>> comments(String id) async => [];
}
FeedPost _post(Map<String,dynamic> reaction) => FeedPost.fromJson({
  'id':'381026c2-9d56-47b1-b73d-1784e24e41e2',
  'authorMasanaId':'masana_one','kind':'text','body':'Reaction test',
  'media':<String>[],'publishedAt':'2026-10-22T09:00:00Z',
  'likeCount':2,'commentCount':0,'viewerLiked':false,'viewerSaved':false,
  ...reaction,
});
void main(){
  test('old Like records remain legible and do not become separate actors',(){
    final p=_post({'viewerLiked':true});
    expect(p.currentReaction,'like');
    expect(p.totalReactions,2);
    final switched=p.withReaction('love');
    expect(switched.likeCount,1);
    expect(switched.reactionCounts['love'],1);
    expect(switched.currentReaction,'love');
    final cleared=switched.withReaction(null);
    expect(cleared.reactionCounts['love'],0);
    expect(cleared.totalReactions,1);
    expect(()=>p.withReaction('unknown'),throwsArgumentError);
  });
  test('seven reaction counts preserve single viewer choice and saved state',(){
    final p=_post({
      'viewerReaction':'love',
      'reactionCounts':{'like':3,'love':2,'sad':1},
    });
    expect(p.currentReaction,'love');
    expect(p.totalReactions,6);
    final changed=p.withReaction('care');
    expect(changed.reactionCounts['like'],3);
    expect(changed.reactionCounts['love'],1);
    expect(changed.reactionCounts['care'],1);
    expect(changed.totalReactions,6);
    expect(changed.withAction(saved:true).saved,isTrue);
    expect(changed.withAction(liked:true).currentReaction,'like');
  });
  testWidgets('Status horizontal picker sends one type and clears the same selection',(tester)async{
    final api=_ReactionStub(_post({}));
    await tester.pumpWidget(MaterialApp(home:Scaffold(body:
      MasanaFeedScreen(api:api,accountKey:'fan-a'))));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('React to post'));
    await tester.pumpAndSettle();
    expect(find.text('Love'),findsOneWidget);
    expect(find.text('Care'),findsOneWidget);
    expect(find.text('Angry'),findsNothing);
    await tester.tap(find.text('Love'));
    await tester.pumpAndSettle();
    expect(api.reactions,['love']);
    expect(find.textContaining('❤️ 1'),findsOneWidget);
    await tester.tap(find.byTooltip('React to post'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Love'));
    await tester.pumpAndSettle();
    expect(api.reactions,['love',null]);
    expect(find.textContaining('❤️ 1'),findsNothing);
  });
}
