import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_shell.dart';
import 'package:masanawa/src/calls/mb_call_transport.dart';

class _Adapter implements HttpClientAdapter {
  _Adapter(this.reply);
  final Future<ResponseBody> Function(RequestOptions) reply;
  @override
  Future<ResponseBody> fetch(RequestOptions options, Stream<List<int>>? stream,
    Future<void>? cancelFuture) => reply(options);
  @override
  void close({bool force = false}) {}
}

ResponseBody _ok(Object value) => ResponseBody.fromString(jsonEncode(value), 200,
  headers: {Headers.contentTypeHeader: ['application/json']});

void main() {
  const key = 'original_call_001';
  final expiry = DateTime.now().add(const Duration(minutes: 5)).toUtc().toIso8601String();
  final row = <String,dynamic>{'admissionId':'call_123','characterId':'character_456',
    'budgetMb':150,'state':'reserved','expiresAt':expiry,
    'verifiedConnectedMs':0,'chargedMb':null};
  test('review, admission recovery and same-origin relay grant pin owner and operation', () async {
    final dio = Dio(BaseOptions(baseUrl:'https://gateway.example'));
    String? current = 'owner-1';
    final paths = <String>[];
    dio.httpClientAdapter = _Adapter((request) async {
      paths.add(request.path);
      expect(request.headers['Authorization'], 'Bearer pinned-owner-1');
      if (request.path == '/v1/gb/calls/review') {
        expect(request.data, {'characterId':'character_456',
          'expectedSeconds':300,'idempotencyKey':key});
        return _ok({'review':{'characterId':'character_456',
          'reviewToken':'signed-review','budgetMb':150,'expiresAt':expiry}});
      }
      if (request.path == '/v1/gb/calls/admissions') {
        expect(request.data, {'reviewToken':'signed-review','accepted':true});
        return _ok({'admission':row});
      }
      if (request.path == '/v1/gb/calls/admissions/original/$key') {
        return _ok({'admission':row});
      }
      if (request.path == '/v1/gb/calls/admissions/call_123/grant') {
        return _ok({'grant':{'transport':'gateway_relay','token':List.filled(43,'a').join(),
          'websocketUrl':'wss://gateway.example/agent/live/stream',
          'model':'gemini-live','voiceName':'Aoede','expiresAt':expiry,
          'callId':'0199f0d0-0000-7000-8000-000000000001'}});
      }
      throw StateError('Unexpected route ${request.path}');
    });
    final transport = MbCallTransport(dio:dio,baseUrl:'https://gateway.example',
      accessToken:'pinned-owner-1',accountId:'owner-1',currentAccountId:()=>current);
    final review = await transport.review('character_456',key);
    expect(review.budgetMb,150);
    final admission = await transport.confirm(review);
    expect((await transport.readOriginal(key)).id,admission.id);
    final grant = await transport.grant(admission);
    expect(grant.transport,AgentLiveVoiceTransport.gatewayRelay);
    expect(grant.callId,'0199f0d0-0000-7000-8000-000000000001');
    expect(grant.callId,isNot(admission.id));
    current='owner-2';
    await expectLater(transport.readOriginal(key),throwsStateError);
    expect(paths.length,4);
  });

  test('rejects cross-origin or direct provider call grants', () async {
    final dio = Dio(BaseOptions(baseUrl:'https://gateway.example'));
    dio.httpClientAdapter = _Adapter((_) async => _ok({'grant':{
      'transport':'gateway_relay','token':List.filled(43,'a').join(),
      'websocketUrl':'wss://provider.example/agent/live/stream',
      'model':'gemini-live','voiceName':'Aoede','expiresAt':expiry}}));
    final transport = MbCallTransport(dio:dio,baseUrl:'https://gateway.example',
      accessToken:'owner',accountId:'owner',currentAccountId:()=> 'owner');
    final admission = MbCallAdmission(id:'call_123',characterId:'character_456',
      budgetMb:150,state:'reserved',expiresAt:DateTime.parse(expiry),
      verifiedConnectedMs:0);
    await expectLater(transport.grant(admission),throwsFormatException);
  });
}
