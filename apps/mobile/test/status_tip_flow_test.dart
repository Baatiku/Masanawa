import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/status_tip_flow.dart';

class Store implements StatusTipStore {
  String? value;
  bool fail=false;
  @override Future<String?> read() async=>value;
  @override Future<void> write(String? next) async {
    if(fail)throw StateError('Secure store unavailable');
    value=next;
  }
}
class Adapter implements HttpClientAdapter {
  Adapter(this.reply);
  final Future<ResponseBody> Function(RequestOptions) reply;
  @override Future<ResponseBody> fetch(RequestOptions request,
    Stream<List<int>>? stream,Future<void>? cancelFuture)=>reply(request);
  @override void close({bool force=false}){}
}
ResponseBody ok(Map<String,dynamic> data)=>ResponseBody.fromString(
  jsonEncode(data),200,headers:{Headers.contentTypeHeader:['application/json']});
const post='381026c2-9d56-47b1-b73d-1784e24e41e2';
const key='tip_12345678901234567890123456789012';
Map<String,dynamic> review()=>{'review':{
  'operationId':key,'postId':post,'characterId':'character_456',
  'displayName':'Amina','amountMb':50,
  'reviewToken':'signed_server_review_12345678901234567890123456',
  'expiresAt':DateTime.now().add(const Duration(minutes:5)).toUtc().toIso8601String()}};
Map<String,dynamic> receipt()=>{'receipt':{
  'operationId':key,'postId':post,'characterId':'character_456',
  'amountMb':50,'state':'completed'}};
void main(){
  test('review and confirm persist exact original before POST and clear on receipt',() async{
    final store=Store(),events=<String>[];
    final dio=Dio(BaseOptions(baseUrl:'https://gateway.example'));
    dio.httpClientAdapter=Adapter((req) async{
      events.add(req.path);
      expect(req.headers['Authorization'],'Bearer pinned');
      if(req.path.endsWith('/review'))return ok(review());
      if(req.path.endsWith('/confirm')){
        expect(jsonDecode(store.value!)['submitted'],true);
        expect(jsonDecode(store.value!)['operationId'],key);
        return ok(receipt());
      }
      throw StateError('Unexpected route: '+req.path);
    });
    final flow=StatusTipFlow(dio:dio,accountId:'owner',
      accessToken:'pinned',currentAccountId:()=> 'owner',store:store);
    final signed=await flow.review(post,50);
    expect(store.value,isNull);
    expect((await flow.confirm(signed)).amountMb,50);
    expect(store.value,isNull);
    expect(events,['/v1/gb/wallet/tips/review','/v1/gb/wallet/tips/confirm']);
  });

  test('lost confirm acknowledgment never posts a second payment',() async{
    final store=Store(),events=<String>[];
    var known=false;
    final dio=Dio(BaseOptions(baseUrl:'https://gateway.example'));
    dio.httpClientAdapter=Adapter((req) async{
      events.add(req.path);
      if(req.path.endsWith('/review'))return ok(review());
      if(req.path.endsWith('/confirm'))return ResponseBody.fromString('unknown',503);
      if(req.path.endsWith('/receipt/'+key)){
        if(known)return ok(receipt());
        return ResponseBody.fromString('not available',404);
      }
      throw StateError('Unexpected route: '+req.path);
    });
    final flow=StatusTipFlow(dio:dio,accountId:'owner',
      accessToken:'pinned',currentAccountId:()=> 'owner',store:store);
    await expectLater(flow.confirm(await flow.review(post,50)),throwsA(isA<DioException>()));
    expect(jsonDecode(store.value!)['submitted'],true);
    await expectLater(flow.review(post,50),throwsStateError);
    expect(events.where((x)=>x.endsWith('/confirm')).length,1);
    expect(events.where((x)=>x.endsWith('/review')).length,1);
    known=true;
    expect((await flow.recover())?.operationId,key);
    expect(store.value,isNull);
  });

  test('mismatched readback preserves pending original key',() async{
    final store=Store()..value=jsonEncode({
      'accountId':'owner','operationId':key,'postId':post,
      'characterId':'character_456','amountMb':50,'submitted':true});
    final dio=Dio(BaseOptions(baseUrl:'https://gateway.example'));
    dio.httpClientAdapter=Adapter((_) async=>ok({'receipt':{
      'operationId':key,'postId':post,'characterId':'character_456',
      'amountMb':51,'state':'completed'}}));
    final flow=StatusTipFlow(dio:dio,accountId:'owner',
      accessToken:'pinned',currentAccountId:()=> 'owner',store:store);
    await expectLater(flow.recover(),throwsStateError);
    expect(store.value,isNotNull);
  });

  test('failed encrypted write or account switch blocks financial POST',() async{
    final store=Store()..fail=true;
    final events=<String>[];
    var active='owner';
    final dio=Dio(BaseOptions(baseUrl:'https://gateway.example'));
    dio.httpClientAdapter=Adapter((req) async{
      events.add(req.path);
      return ok(review());
    });
    final flow=StatusTipFlow(dio:dio,accountId:'owner',
      accessToken:'pinned',currentAccountId:()=>active,store:store);
    final quote=await flow.review(post,50);
    await expectLater(flow.confirm(quote),throwsStateError);
    active='another';
    await expectLater(flow.review(post,50),throwsStateError);
    expect(events,['/v1/gb/wallet/tips/review']);
  });
}
