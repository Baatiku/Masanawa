import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:masanawa/src/features/home_feed/status_promotion_api.dart';
import 'package:masanawa/src/features/home_feed/status_qualified_view_observer.dart';

class StubQualifiedViews implements StatusQualifiedViewApi {
  int starts=0,finishes=0;
  @override Future<StatusViewChallenge> beginView(String postId,{String? referral})async{
    starts++;return const StatusViewChallenge('challenge-1',6);
  }
  @override Future<StatusQualifiedViewResult> qualifyView(String id,
    {required double visibleFraction,required bool foreground,
    required bool engaged})async{
    finishes++;
    expect(visibleFraction,greaterThanOrEqualTo(0.5));
    expect(foreground,true);
    return const StatusQualifiedViewResult(qualified:true,verifiedViews:4);
  }
}
void main(){
  testWidgets('disabled promotion observer never claims impressions or charges',(tester)async{
    final api=StubQualifiedViews();
    await tester.pumpWidget(MaterialApp(home:Scaffold(body:
      StatusQualifiedViewObserver(postId:'post',accountKey:'fan',
        enabled:false,api:api,child:const Text('Readable content')))));
    await tester.pump(const Duration(seconds:9));
    expect(find.text('Readable content'),findsOneWidget);
    expect(api.starts,0);expect(api.finishes,0);
  });
  testWidgets('a continuous foreground exposure starts one server challenge',(tester)async{
    VisibilityDetectorController.instance.updateInterval=Duration.zero;
    addTearDown(()=>VisibilityDetectorController.instance.updateInterval=
      const Duration(milliseconds:500));
    final api=StubQualifiedViews();int? authoritative;
    await tester.pumpWidget(MaterialApp(home:Scaffold(body:
      StatusQualifiedViewObserver(postId:'post',accountKey:'fan',
        enabled:true,api:api,onVerified:(n)=>authoritative=n,
        child:const SizedBox(height:140,width:220,child:Text('Original'))))));
    await tester.pump();
    VisibilityDetectorController.instance.notifyNow();
    await tester.pump();
    expect(api.starts,1);
    await tester.pump(const Duration(seconds:7));
    await tester.pump();
    expect(api.finishes,1);
    expect(authoritative,4);
  });
}
