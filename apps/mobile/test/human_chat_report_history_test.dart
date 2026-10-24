import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/human_chat/human_chat.dart';

HumanJson reports(List<String> ids,{String? next}) => {
  'paginationVersion':1,
  'items':[
    for(final id in ids)
      {'reportId':id,'messageId':'message-$id','reason':'Reason $id',
       'submittedAt':'2026-10-24T02:00:00.123Z','status':'submitted'},
  ],
  'nextCursor':next,
};

class ReportTransport extends HumanCommunicationTransport {
  ReportTransport():super(ApiClient(dio:Dio()));
  final paths=<String>[];
  @override
  Future<HumanJson> request(String method,String path,
      {Object? data,Map<String,dynamic>? query}) async {
    paths.add('$method $path');
    if(path=='/privacy') return {'messages':'everyone','calls':'everyone',
      'roomInvites':'everyone','readReceipts':true,'presence':true};
    if(path=='/privacy/blocked') return {'items':[]};
    if(path=='/reports') return reports(['one']);
    throw StateError('Unexpected $method $path');
  }
}

void main(){
 test('rejects malformed, duplicate and false-review report results',(){
  final parsed=HumanReportPage.fromJson(reports(['one','two'],next:'two'));
  expect(parsed.items.map((x)=>x.reason),['Reason one','Reason two']);
  expect(parsed.nextCursor,'two');
  for(final data in [
    {...reports(['one']),'paginationVersion':2},
    {...reports(['one']),'nextCursor':'not-last'},
    reports(['one','one']),
    {...reports(['one']),'items':[{'reportId':'one','messageId':'m',
      'reason':'bad','submittedAt':'2026-10-24T02:00:00Z','status':'reviewed'}]},
  ]){
   expect(()=>HumanReportPage.fromJson(data),throwsFormatException);
  }
 });
 testWidgets('pages submitted reports without claiming review and preserves rows on retry', (tester) async {
  final calls=<String?>[];
  var failOlder=true;
  Future<HumanJson> fetch(String? before) async{
   calls.add(before);
   if(before==null)return reports(['first','second'],next:'second');
   if(failOlder){failOlder=false;throw StateError('Offline');}
   return reports(['third']);
  }
  await tester.pumpWidget(ProviderScope(
    overrides:[humanAccountProvider.overrideWithValue('alice')],
    child:MaterialApp(home:HumanReportHistoryScreen(fetchPage:fetch)),
  ));
  await tester.pumpAndSettle();
  expect(find.text('Reason first'),findsOneWidget);
  expect(find.textContaining('Submission does not mean'),findsOneWidget);
  await tester.tap(find.byKey(const Key('human-reports-older')));
  await tester.pumpAndSettle();
  expect(find.text('Reason first'),findsOneWidget);
  expect(find.textContaining('Could not load report history'),findsOneWidget);
  await tester.tap(find.byKey(const Key('human-reports-older')));
  await tester.pumpAndSettle();
  expect(find.text('Reason third'),findsOneWidget);
  expect(calls,[null,'second','second']);
 });
 testWidgets('empty, offline error and retry are distinct states', (tester) async{
  var attempts=0;
  await tester.pumpWidget(ProviderScope(
    overrides:[humanAccountProvider.overrideWithValue('alice')],
    child:MaterialApp(home:HumanReportHistoryScreen(fetchPage:(before) async{
      attempts++;
      if(attempts==1)throw StateError('Network');
      return reports([]);
    })),
  ));
  await tester.pumpAndSettle();
  expect(find.textContaining('Could not load report history'),findsOneWidget);
  await tester.tap(find.byKey(const Key('human-reports-retry')));
  await tester.pumpAndSettle();
  expect(find.text('No message reports submitted yet.'),findsOneWidget);
 });
 testWidgets('account revocation immediately hides previous private reports and discards late fetch',(tester) async{
  final account=StateProvider<String?>((ref)=>'alice');
  final pending=Completer<HumanJson>();
  final container=ProviderContainer(overrides:[humanAccountProvider.overrideWith((ref)=>ref.watch(account))]);
  await tester.pumpWidget(UncontrolledProviderScope(container:container,
   child:MaterialApp(home:HumanReportHistoryScreen(fetchPage:(_)=>pending.future))));
  await tester.pump();
  container.read(account.notifier).state=null;
  await tester.pumpAndSettle();
  expect(find.text('Sign in to view your reports.'),findsOneWidget);
  pending.complete(reports(['private']));
  await tester.pumpAndSettle();
  expect(find.text('Reason private'),findsNothing);
  await tester.pumpWidget(const SizedBox());
  container.dispose();
 });
 testWidgets('privacy settings navigate into the canonical report history client',(tester) async{
  final t=ReportTransport();
  await tester.pumpWidget(ProviderScope(overrides:[
    humanAccountProvider.overrideWithValue('alice'),
    humanCommunicationTransportProvider.overrideWithValue(t),
  ],child:const MaterialApp(home:HumanPrivacyScreen())));
  await tester.pumpAndSettle();
  await tester.scrollUntilVisible(find.byKey(const Key('human-open-report-history')),150,scrollable:find.byType(Scrollable).first);
  await tester.tap(find.byKey(const Key('human-open-report-history')));
  await tester.pumpAndSettle();
  expect(find.text('Reason one'),findsOneWidget);
  expect(t.paths,contains('GET /reports'));
  await tester.pumpWidget(const SizedBox());
  t.cancel();
 });
}
