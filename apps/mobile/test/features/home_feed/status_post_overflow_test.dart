import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/status_post_overflow.dart';
import 'package:masanawa/src/features/home_feed/status_post_cta.dart';

FeedPost _post({bool human=false,bool rewarded=false,bool promoted=false})=>FeedPost.fromJson({
  'id':'381026c2-9d56-47b1-b73d-1784e24e41e2',
  'author':human
    ?{'type':'human','id':'owner','handle':'owner','displayName':'Owner'}
    :{'type':'masana','id':'official','displayName':'Masana'},
  'kind':'text','body':'Reviewed educational update','media':<String>[],
  'publishedAt':'2026-10-28T00:00:00Z',
  'shareEarnEligible':rewarded,
  'promotionActive':promoted,
});

void main(){
  testWidgets('post-specific overflow has separate Hide/Report and non-billing Share details',
      (tester) async {
    final hidden=<String>[],reported=<String>[];
    await tester.pumpWidget(MaterialApp(home:Scaffold(body:StatusPostOverflow(
      post:_post(rewarded:true),accountKey:'owner',
      onHide:(p)async{hidden.add(p.id);},
      onReport:(p,reason)async{reported.add(reason);},
    ))));
    await tester.tap(find.byTooltip('More post options'));
    await tester.pumpAndSettle();
    expect(find.text('Manage promotion'),findsNothing);
    await tester.tap(find.text('Share & Earn details'));
    await tester.pumpAndSettle();
    expect(find.textContaining('0.5 MB'),findsOneWidget);
    await tester.tap(find.text('Got it'));
    await tester.pumpAndSettle();
    expect(hidden,isEmpty);expect(reported,isEmpty);
    await tester.tap(find.byTooltip('More post options'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Report this post'));
    await tester.pumpAndSettle();
    expect(find.text('Why are you reporting this post?'),findsOneWidget);
    await tester.tap(find.text('Fraud or scam'));
    await tester.pumpAndSettle();
    expect(reported,['fraud']);expect(hidden,isEmpty);
    await tester.tap(find.byTooltip('More post options'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Hide this post'));
    await tester.pumpAndSettle();
    expect(hidden,hasLength(1));expect(reported,hasLength(1));
    expect(tester.takeException(),isNull);
  });

  testWidgets('Manage promotion appears only to original human publisher',
      (tester) async {
    var opened=0;
    Future<void> show(String viewer) async {
      await tester.pumpWidget(MaterialApp(home:Scaffold(body:StatusPostOverflow(
        post:_post(human:true),accountKey:viewer,onManage:()=>opened++))));
      await tester.tap(find.byTooltip('More post options'));
      await tester.pumpAndSettle();
    }
    await show('other-user');
    expect(find.text('Manage promotion'),findsNothing);
    await tester.pumpWidget(const SizedBox.shrink());
    await show('owner');
    await tester.tap(find.text('Manage promotion'));
    await tester.pumpAndSettle();
    expect(opened,1);
    expect(tester.takeException(),isNull);
  });

  testWidgets('reviewed human publisher gets a safe 48dp profile CTA; ordinary content gets none',
    (tester)async{
    final opened=<String>[];
    Future<void> show(FeedPost post)async{
      await tester.pumpWidget(MaterialApp(home:Scaffold(body:
        StatusPostCta(post:post,onHumanProfile:opened.add))));
      await tester.pumpAndSettle();
    }
    await show(_post(human:true));
    expect(find.text('View publisher profile'),findsNothing);
    await show(_post(human:true,promoted:true));
    final cta=find.text('View publisher profile');
    expect(cta,findsOneWidget);
    expect(tester.getSize(find.ancestor(of:cta,
      matching:find.byType(OutlinedButton))).height,greaterThanOrEqualTo(48));
    await tester.tap(cta);
    expect(opened,['owner']);
    await show(_post(promoted:true));
    expect(cta,findsNothing);
    expect(tester.takeException(),isNull);
  });
}
