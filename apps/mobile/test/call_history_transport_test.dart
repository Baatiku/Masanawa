import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/calls/call_history.dart';
import 'package:masanawa/src/core/network/api_client.dart';

class _Adapter implements HttpClientAdapter {
  _Adapter(this.handle);
  final Future<ResponseBody> Function(RequestOptions) handle;
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<List<int>>? stream,
    Future<void>? cancelFuture,
  ) => handle(options);
  @override
  void close({bool force = false}) {}
}

void main() {
  final record=<String,dynamic>{'callId':'call-a','characterId':'agent-a','displayName':'Amina','state':'ended','direction':'outgoing','kind':'audio','createdAt':'2026-10-17T10:00:00Z','connectedAt':'2026-10-17T10:00:05Z','endedAt':'2026-10-17T10:01:10Z','endReason':'connection_failed','groupId':'group-a'};
  test('final duration requires both timestamps and preserves bounded outcomes',(){
    final call=CallHistoryItem.fromJson(record);
    expect(call.duration,const Duration(seconds:65));expect(call.outcomeLabel,'Connection lost');expect(call.isGroupCall,isTrue);
    expect(CallHistoryItem.fromJson({...record,'endedAt':null}).duration,isNull);
    expect(CallHistoryItem.fromJson({...record,'endReason':'unknown future reason'}).endReason,isNull);
    expect(()=>CallHistoryItem.fromJson({...record,'endedAt':'bad'}),throwsFormatException);
  });
  test('detail endpoint pins id and rejects mismatched records',()async{
    final dio=Dio(BaseOptions(baseUrl:'https://example.test'));
    final api=ApiClient(dio:dio)..accessToken='owner';
    var mismatch=false;
    dio.httpClientAdapter=_Adapter((request)async{
      expect(request.path,'/v1/calls/call-a');expect(request.headers['Authorization'],'Bearer owner');
      return ResponseBody.fromString(jsonEncode({...record,if(mismatch)'callId':'another-call'}),200,headers:{Headers.contentTypeHeader:['application/json']});
    });
    final transport=GatewayCallHistoryTransport(api:api);
    expect((await transport.get('call-a')).duration,const Duration(seconds:65));
    mismatch=true;await expectLater(transport.get('call-a'),throwsFormatException);dio.close();
  });
  test(
    'history uses canonical endpoint, opaque cursor and session authorization',
    () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://example.test'));
      final api = ApiClient(dio: dio)..accessToken = 'session-token';
      dio.httpClientAdapter = _Adapter((request) async {
        expect(request.path, '/v1/calls');
        expect(request.queryParameters, {
          'limit': 30,
          'cursor': 'opaque-cursor',
        });
        expect(request.headers['Authorization'], 'Bearer session-token');
        return ResponseBody.fromString(
          jsonEncode({'calls': [], 'nextCursor': null}),
          200,
          headers: {
            Headers.contentTypeHeader: ['application/json'],
          },
        );
      });
      final page = await GatewayCallHistoryTransport(
        api: api,
      ).loadPage(cursor: 'opaque-cursor');
      expect(page.calls, isEmpty);
      expect(page.nextCursor, isNull);
      dio.close();
    },
  );
  test('query is sent only through canonical authorized /v1/calls', () async {
    final dio = Dio(BaseOptions(baseUrl: 'https://example.test'));
    final api = ApiClient(dio: dio)..accessToken = 'session-token';
    dio.httpClientAdapter = _Adapter((request) async {
      expect(request.path, '/v1/calls');
      expect(request.queryParameters, {
        'limit': 30,
        'q': 'amina',
        'cursor': 'query-bound-cursor',
      });
      expect(request.headers['Authorization'], 'Bearer session-token');
      return ResponseBody.fromString(
        '{"calls":[],"nextCursor":null}',
        200,
        headers: {Headers.contentTypeHeader: ['application/json']},
      );
    });
    await GatewayCallHistoryTransport(api: api).loadPage(
      query: 'amina', cursor: 'query-bound-cursor',
    );
    dio.close();
  });

  test(
    'rejects malformed history rather than silently displaying an empty list',
    () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://example.test'));
      final api = ApiClient(dio: dio);
      dio.httpClientAdapter = _Adapter(
        (_) async => ResponseBody.fromString(
          '{"calls":"invalid","nextCursor":null}',
          200,
          headers: {
            Headers.contentTypeHeader: ['application/json'],
          },
        ),
      );
      await expectLater(
        GatewayCallHistoryTransport(api: api).loadPage(),
        throwsFormatException,
      );
      dio.close();
    },
  );
}
