import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/human_chat/human_chat.dart';

class ReportStore implements HumanReportRequestStore {
  String? value;
  bool failRead = false, failWrite = false, failClear = false;
  @override
  Future<String?> read() async {
    if (failRead) throw StateError('Encrypted read unavailable');
    return value;
  }
  @override
  Future<void> write(String next) async {
    if (failWrite) throw StateError('Encrypted write unavailable');
    if (value != null && value != next) throw StateError('Different report pending');
    value = next;
  }
  @override
  Future<void> clear(String expected) async {
    if (failClear) throw StateError('Encrypted clear unavailable');
    if (value != null && value != expected) throw StateError('Report changed');
    value = null;
  }
}

class ReportNetwork extends HumanCommunicationTransport {
  ReportNetwork(): super(ApiClient(dio: Dio()));
  final requests=<String>[];
  final posts=<Map<String,dynamic>>[];
  final accepted=<String,HumanJson>{};
  bool losePostResponse=false, denyStatus=false, offlineStatus=false, denyPost=false;
  DioException responseError(String path,int code)=>DioException(
    requestOptions:RequestOptions(path:path),
    response:Response(requestOptions:RequestOptions(path:path),statusCode:code),
    type:DioExceptionType.badResponse,
  );
  @override
  Future<HumanJson> request(String method,String path,{
    Object? data,Map<String,dynamic>? query,
  })async {
    if (!active) throw StateError('Account changed');
    requests.add('$method $path');
    if(method=='GET' && path.startsWith('/reports/')){
      if(denyStatus) throw responseError(path,401);
      if(offlineStatus) throw DioException(
        requestOptions:RequestOptions(path:path),
        type:DioExceptionType.connectionError,
      );
      return accepted[path.split('/').last]??(throw responseError(path,404));
    }
    if(method=='POST' && path.endsWith('/report')){
      if(denyPost)throw responseError(path,403);
      final intent=Map<String,dynamic>.from(data as Map);
      posts.add(intent);
      final key=intent['requestId'] as String;
      accepted.putIfAbsent(key,()=>{'ok':true,'reportId':'report-$key','submittedAt':'2026-10-24T12:00:00Z'});
      if(losePostResponse)throw DioException(requestOptions:RequestOptions(path:path),type:DioExceptionType.connectionError);
      return accepted[key]!;
    }
    throw StateError('Unexpected $method $path');
  }
}

PendingHumanReport intent({String key='request-one',String reason='Abusive message',
  String thread='thread-1',String message='message-1'})=>
  PendingHumanReport(conversationId:thread,messageId:message,reason:reason,requestId:key);

HumanReportRequestJournal journal(ReportStore store,{String owner='alice',String thread='thread-1'})=>
  HumanReportRequestJournal(owner,thread,store:store);

void main(){
 test('freezes encrypted original report before any submission; retries preserve exact payload',()async{
  final store=ReportStore(),network=ReportNetwork()..losePostResponse=true;
  final j=journal(store);
  await j.stage(intent());
  expect(network.requests,isEmpty);
  expect((jsonDecode(store.value!) as Map)['reason'],'Abusive message');
  expect(await j.recover(network,retryOriginal:true),HumanReportRecovery.submitted);
  expect(network.posts,singleElement({'requestId':'request-one','reason':'Abusive message'}));
  expect(network.requests,['GET /reports/request-one',
    'POST /conversations/thread-1/messages/message-1/report','GET /reports/request-one']);
  expect(store.value,isNull);
  network.cancel();
 });
 test('process-death style recovery is read-only and never duplicates accepted POST',()async{
  final store=ReportStore(),network=ReportNetwork();
  await journal(store).stage(intent(key:'old-request'));
  network.accepted['old-request']={'ok':true,'reportId':'report-old','submittedAt':'2026-10-24T12:00:00Z'};
  final restored=journal(store);
  expect(await restored.recover(network),HumanReportRecovery.submitted);
  expect(network.posts,isEmpty);
  expect(store.value,isNull);
  network.cancel();
 });
 test('unknown receipt remains pending; explicit retry sends exactly original ID and reason',()async{
  final store=ReportStore(),network=ReportNetwork();
  final j=journal(store);
  await j.stage(intent(key:'retry-me',reason:'The original reason'));
  expect(await j.recover(network),HumanReportRecovery.unconfirmed);
  expect(network.posts,isEmpty);
  expect(store.value,isNotNull);
  expect(await j.recover(network,retryOriginal:true),HumanReportRecovery.submitted);
  expect(network.posts.single,{'requestId':'retry-me','reason':'The original reason'});
  network.cancel();
 });
 test('offline/denied lookup never sends a new POST or clears original',()async{
  final store=ReportStore(),network=ReportNetwork()..offlineStatus=true;
  final j=journal(store);
  await j.stage(intent());
  await expectLater(j.recover(network,retryOriginal:true),throwsA(isA<DioException>()));
  expect(network.posts,isEmpty);
  expect(store.value,isNotNull);
  network.offlineStatus=false;
  network.denyStatus=true;
  await expectLater(j.recover(network,retryOriginal:true),throwsA(isA<DioException>()));
  expect(network.posts,isEmpty);
  expect(store.value,isNotNull);
  network.cancel();
 });
 test('forbidden POST cannot be treated as an accepted report, key remains frozen',()async{
  final store=ReportStore(),network=ReportNetwork()..denyPost=true;
  final j=journal(store);
  await j.stage(intent());
  await expectLater(j.recover(network,retryOriginal:true),throwsA(isA<DioException>()));
  expect(store.value,isNotNull);
  network.cancel();
 });
 test('corrupt/missing encrypted data and errors fail closed before submission',()async{
  final store=ReportStore(),network=ReportNetwork(),j=journal(store);
  expect(await j.recover(network,retryOriginal:true),HumanReportRecovery.noSavedRequest);
  store.value='{"conversationId":"wrong","messageId":"m","reason":"private","requestId":"key"}';
  await expectLater(j.recover(network,retryOriginal:true),throwsFormatException);
  store.value='not json';
  await expectLater(j.recover(network,retryOriginal:true),throwsFormatException);
  store.value=null;store.failWrite=true;
  await expectLater(j.stage(intent()),throwsA(isA<StateError>()));
  expect(network.requests,isEmpty);
  store.failWrite=false;store.failRead=true;
  await expectLater(j.stage(intent()),throwsA(isA<StateError>()));
  expect(network.requests,isEmpty);
  network.cancel();
 });
 test('different report cannot overwrite pending original; clear uses exact compare',()async{
  final store=ReportStore(),j=journal(store);
  await j.stage(intent());
  await j.stage(intent());
  await expectLater(j.stage(intent(key:'new')),throwsA(isA<StateError>()));
  await expectLater(j.stage(intent(thread:'other')),throwsA(isA<StateError>()));
  await expectLater(j.discard('changed'),throwsA(isA<StateError>()));
  expect((jsonDecode(store.value!) as Map)['requestId'],'request-one');
  store.failClear=true;
  await expectLater(j.discard('request-one'),throwsA(isA<StateError>()));
  expect(store.value,isNotNull);
  store.failClear=false;
  await j.discard('request-one');
  expect(store.value,isNull);
 });
 test('account and thread namespace keys never collide; cancelled session cannot post',()async{
  final keys=[
   EncryptedHumanReportRequestStore('alice','thread-one').key,
   EncryptedHumanReportRequestStore('bob','thread-one').key,
   EncryptedHumanReportRequestStore('alice','thread-two').key,
  ];
  expect(keys.toSet(),hasLength(3));
  final store=ReportStore(),j=journal(store),network=ReportNetwork();
  await j.stage(intent());
  network.cancel();
  await expectLater(j.recover(network,retryOriginal:true),throwsA(isA<StateError>()));
  expect(network.requests,isEmpty);
  expect(store.value,isNotNull);
 });
 test('missing or fraudulent status readbacks are never falsely called submitted',()async{
  final store=ReportStore(),j=journal(store),network=ReportNetwork();
  await j.stage(intent());
  network.accepted['request-one']={'ok':false,'reportId':'fake'};
  await expectLater(j.recover(network),throwsFormatException);
  expect(store.value,isNotNull);
  network.accepted['request-one']={'ok':true,'reportId':''};
  await expectLater(j.recover(network),throwsFormatException);
  expect(store.value,isNotNull);
  network.cancel();
 });
}
