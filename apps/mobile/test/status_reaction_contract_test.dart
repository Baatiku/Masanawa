import 'dart:async';

import 'package:dio/dio.dart';
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

// Exercise the production DioFeedApi readback branch without an actual network
// or any claim of provider/device acceptance.
class _ReadbackStub extends DioFeedApi {
  _ReadbackStub(this.original) : super(Dio(), () async => 'test-token');

  final FeedPost original;
  final reactions = <String?>[];
  Future<void> Function()? put;
  Future<FeedPost> Function()? get;

  @override
  Future<FeedPage> list({required String mode, String? cursor}) async =>
      FeedPage([original], null);

  @override
  Future<void> react(String id, String? kind) async {
    reactions.add(kind);
    if (put != null) await put!();
  }

  @override
  Future<FeedPost> detail(String id) =>
      get?.call() ?? Future.value(original);
}

Future<void> _chooseLove(WidgetTester tester) async {
  await tester.longPress(find.byIcon(Icons.thumb_up_outlined).first);
  await tester.pumpAndSettle();
  await tester.tap(find.text('Love'));
  await tester.pumpAndSettle();
}

DioException _denial(int status) => DioException(
      requestOptions: RequestOptions(path: '/v1/posts/id'),
      response: Response(
        requestOptions: RequestOptions(path: '/v1/posts/id'),
        statusCode: status,
      ),
      type: DioExceptionType.badResponse,
    );

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
    await tester.longPress(find.byIcon(Icons.thumb_up_outlined).first);
    await tester.pumpAndSettle();
    expect(find.text('Love'),findsOneWidget);
    expect(find.text('Care'),findsOneWidget);
    expect(find.text('Angry'),findsNothing);
    await tester.tap(find.text('Love'));
    await tester.pumpAndSettle();
    expect(api.reactions,['love']);
    expect(find.textContaining('❤️ 1'),findsOneWidget);
    await tester.longPress(find.byIcon(Icons.thumb_up_outlined).first);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Love'));
    await tester.pumpAndSettle();
    expect(api.reactions,['love',null]);
    expect(find.textContaining('❤️ 1'),findsNothing);
  });

  testWidgets('accepted reaction survives a failed post-count readback', (tester) async {
    final feed = _ReadbackStub(_post({}));
    feed.get = () => Future.error(StateError('detail temporarily offline'));
    await tester.pumpWidget(MaterialApp(home: Scaffold(
      body: MasanaFeedScreen(api: feed, accountKey: 'fan-a'),
    )));
    await tester.pumpAndSettle();
    await _chooseLove(tester);
    expect(feed.reactions, ['love']);
    expect(find.textContaining('❤️ 1'), findsOneWidget);
    expect(find.textContaining('Reaction saved. Counts may be out of date'),
        findsOneWidget);

    // The same choice should now clear an already accepted reaction, not
    // mistakenly re-issue an add because a failed GET rolled it back.
    feed.get = () async => feed.original.withReaction(null);
    await _chooseLove(tester);
    expect(feed.reactions, ['love', null]);
  });

  testWidgets('stale detail GET cannot overwrite a confirmed reaction', (tester) async {
    final feed = _ReadbackStub(_post({}));
    feed.get = () async => feed.original;
    await tester.pumpWidget(MaterialApp(home: Scaffold(
      body: MasanaFeedScreen(api: feed, accountKey: 'fan-a'),
    )));
    await tester.pumpAndSettle();
    await _chooseLove(tester);
    expect(find.textContaining('❤️ 1'), findsOneWidget);
    expect(find.textContaining('Reaction saved. Counts may be out of date'),
        findsOneWidget);
  });

  testWidgets('failed reaction PUT rolls back and permits one retry', (tester) async {
    final pending = Completer<void>();
    final feed = _ReadbackStub(_post({}));
    feed.put = () => pending.future;
    feed.get = () async => feed.original.withReaction('love');
    await tester.pumpWidget(MaterialApp(home: Scaffold(
      body: MasanaFeedScreen(api: feed, accountKey: 'fan-a'),
    )));
    await tester.pumpAndSettle();
    await tester.longPress(find.byIcon(Icons.thumb_up_outlined).first);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Love'));
    await tester.pump();
    final disabled = tester.widget<TextButton>(
        find.widgetWithIcon(TextButton, Icons.thumb_up_outlined));
    expect(disabled.onPressed, isNull);
    pending.completeError(StateError('write unavailable'));
    await tester.pumpAndSettle();
    expect(find.textContaining('❤️ 1'), findsNothing);
    feed.put = null;
    await _chooseLove(tester);
    expect(feed.reactions, ['love', 'love']);
    expect(find.textContaining('❤️ 1'), findsOneWidget);
  });

  testWidgets('revoked reaction detail read clears private feed projection',
      (tester) async {
    final feed = _ReadbackStub(_post({}));
    feed.get = () => Future.error(_denial(403));
    await tester.pumpWidget(MaterialApp(home: Scaffold(
      body: MasanaFeedScreen(api: feed, accountKey: 'fan-a'),
    )));
    await tester.pumpAndSettle();
    await _chooseLove(tester);
    expect(find.text('Reaction test'), findsNothing);
    expect(find.text('Status is unavailable. Retry.'), findsOneWidget);
  });
}
