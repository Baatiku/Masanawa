import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/feed_screen.dart';

const id='381026c2-9d56-47b1-b73d-1784e24e41e2';

class _ModerationStub implements FeedApi,StatusModerationFeedApi {
  bool hidden=false;
  final reported=<String>[];
  final item=FeedPost.fromJson({
    'id':id,'author':{'type':'masana','id':'official','displayName':'Official'},
    'kind':'text','body':'An original eligible community post',
    'media':<String>[],'publishedAt':'2026-10-28T00:00:00Z',
  });
  @override Future<FeedPage> list({required String mode,String? cursor})async=>
    FeedPage(hidden?[]:[item],null);
  @override Future<void> hidePost(String postId)async{
    if(postId!=id)throw StateError('other post');
    hidden=true;
  }
  @override Future<void> reportPost(String postId,String reason)async{
    if(postId!=id)throw StateError('other post');
    reported.add(reason);
  }
  @override Future<void> like(String postId,bool enabled)async{}
  @override Future<void> save(String postId,bool enabled)async{}
  @override Future<void> comment(String postId,String body,String key)async{}
  @override Future<List<FeedComment>> comments(String postId)async=>[];
}

void main(){
  testWidgets('Home report does not hide post, while successful per-user hide does',
    (tester)async{
    final api=_ModerationStub();
    await tester.pumpWidget(MaterialApp(home:Scaffold(body:
      MasanaFeedScreen(api:api,accountKey:'owner'))));
    await tester.pumpAndSettle();
    expect(find.text('An original eligible community post'),findsOneWidget);
    await tester.tap(find.byTooltip('More post options'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Report this post'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Spam'));
    await tester.pumpAndSettle();
    expect(api.reported,['spam']);
    expect(api.hidden,false);
    expect(find.text('An original eligible community post'),findsOneWidget);
    await tester.tap(find.byTooltip('More post options'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Hide this post'));
    await tester.pumpAndSettle();
    expect(api.hidden,true);
    expect(find.text('An original eligible community post'),findsNothing);
    expect(find.textContaining('Other viewers are unaffected'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });
}
