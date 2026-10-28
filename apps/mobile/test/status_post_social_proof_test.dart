import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/status_post_social_proof.dart';

FeedPost post({required String id, int? views, int comments = 0,
    Map<String,int> reactions = const {}}) => FeedPost(
  id: id, authorMasanaId: 'platform', kind: 'text', body: 'Approved post',
  mediaIds: const [], publishedAt: DateTime.utc(2026,10,28),
  likeCount: 0, commentCount: comments, liked: false, saved: false,
  reactionCounts: reactions, verifiedViewCount: views,
);

void main() {
  test('count formatting stays compact without converting 0 into unavailable',(){
    expect(StatusPostSocialProof.compactCount(0), '0');
    expect(StatusPostSocialProof.compactCount(999), '999');
    expect(StatusPostSocialProof.compactCount(1500), '1.5K');
    expect(StatusPostSocialProof.compactCount(1200000), '1.2M');
    expect(StatusPostSocialProof.compactCount(1000000000), '1B');
  });

  testWidgets('shared verified social proof distinguishes missing, zero and real counts',
      (tester) async {
    Future<void> render(FeedPost value) => tester.pumpWidget(MaterialApp(
      home: Scaffold(body: SizedBox(width: 280,
        child: StatusPostSocialProof(post: value))),
    ));
    await render(post(id:'one'));
    expect(find.text('Views unavailable'), findsOneWidget);
    expect(find.textContaining('comments'), findsNothing);

    await render(post(id:'two', views:0));
    expect(find.text('0 views'), findsOneWidget);
    expect(find.text('Views unavailable'), findsNothing);

    await render(post(id:'three', views:1543, comments:1,
      reactions:const {'like':1234,'love':2}));
    expect(find.text('1.5K views'), findsOneWidget);
    expect(find.text('1 comment'), findsOneWidget);
    expect(find.textContaining('1.2K'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
