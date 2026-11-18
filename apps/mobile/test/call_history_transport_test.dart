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
  final record = <String, dynamic>{
    'callId': 'call-a',
    'characterId': 'agent-a',
    'displayName': 'Amina',
    'state': 'ended',
    'direction': 'outgoing',
    'kind': 'audio',
    'createdAt': '2026-10-17T10:00:00Z',
    'connectedAt': '2026-10-17T10:00:05Z',
    'endedAt': '2026-10-17T10:01:10Z',
    'endReason': 'connection_failed',
    'groupId': 'group-a',
  };
  test(
    'final duration requires both timestamps and preserves bounded outcomes',
    () {
      final call = CallHistoryItem.fromJson(record);
      expect(call.duration, const Duration(seconds: 65));
      expect(call.outcomeLabel, 'Connection lost');
      expect(call.isGroupCall, isTrue);
      expect(
        CallHistoryItem.fromJson({...record, 'endedAt': null}).duration,
        isNull,
      );
      expect(
        CallHistoryItem.fromJson({
          ...record,
          'endedAt': '2026-10-17T09:59:00Z',
        }).duration,
        isNull,
      );
      expect(
        CallHistoryItem.fromJson({
          ...record,
          'state': 'ringing',
          'endedAt': null,
          'endReason': null,
        }).outcomeLabel,
        'Ringing',
      );
      expect(
        CallHistoryItem.fromJson({
          ...record,
          'state': 'missed',
          'direction': 'outgoing',
          'endReason': null,
        }).outcomeLabel,
        'Not answered',
      );
      expect(
        CallHistoryItem.fromJson({
          ...record,
          'state': 'missed',
          'direction': 'incoming',
          'endReason': null,
        }).outcomeLabel,
        'Missed call',
      );
      expect(
        CallHistoryItem.fromJson({
          ...record,
          'endReason': 'unknown future reason',
        }).endReason,
        isNull,
      );
      expect(
        () => CallHistoryItem.fromJson({...record, 'endedAt': 'bad'}),
        throwsFormatException,
      );
    },
  );
  test('MB history uses server evidence rather than lifecycle timestamps', () {
    final call = CallHistoryItem.fromJson({
      ...record,
      'groupId': null,
      'mbUsage': {
        'admissionId': 'call-original',
        'verifiedConnectedMs': 1501,
        'chargedMb': 2,
        'state': 'completed',
      },
    });
    expect(call.duration, const Duration(milliseconds: 1501));
    expect(call.chargedMb, 2);
    expect(call.mbAdmissionId, 'call-original');
    expect(
      () => CallHistoryItem.fromJson({
        ...record,
        'mbUsage': {
          'admissionId': 'call-original',
          'verifiedConnectedMs': -1,
          'chargedMb': 2,
        },
      }),
      throwsFormatException,
    );
  });
  test('detail endpoint pins id and rejects mismatched records', () async {
    final dio = Dio(BaseOptions(baseUrl: 'https://example.test'));
    final api = ApiClient(dio: dio)..accessToken = 'owner';
    var mismatch = false;
    dio.httpClientAdapter = _Adapter((request) async {
      expect(request.path, '/v1/calls/call-a');
      expect(request.headers['Authorization'], 'Bearer owner');
      return ResponseBody.fromString(
        jsonEncode({...record, if (mismatch) 'callId': 'another-call'}),
        200,
        headers: {
          Headers.contentTypeHeader: ['application/json'],
        },
      );
    });
    final transport = GatewayCallHistoryTransport(api: api);
    expect(
      (await transport.get('call-a')).duration,
      const Duration(seconds: 65),
    );
    mismatch = true;
    await expectLater(transport.get('call-a'), throwsFormatException);
    dio.close();
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
        headers: {
          Headers.contentTypeHeader: ['application/json'],
        },
      );
    });
    await GatewayCallHistoryTransport(
      api: api,
    ).loadPage(query: 'amina', cursor: 'query-bound-cursor');
    dio.close();
  });

  test('filters and verified totals use the same authorized history request',()async{
    final dio=Dio(BaseOptions(baseUrl:'https://example.test'));
    final api=ApiClient(dio:dio)..accessToken='session-token';
    dio.httpClientAdapter=_Adapter((request)async{
      expect(request.queryParameters,{'limit':30,'q':'amina','connection':'connected','days':'7'});
      expect(request.headers['Authorization'],'Bearer session-token');
      return ResponseBody.fromString(jsonEncode({'calls':[],'nextCursor':null,'summary':{
        'calls':3,'verifiedConnectedMs':1501,'chargedMb':2,'unverifiedCalls':1,'pendingUsageCalls':1,
      }}),200,headers:{Headers.contentTypeHeader:['application/json']});
    });
    final page=await GatewayCallHistoryTransport(api:api).loadPage(query:'amina',connection:'connected',days:'7');
    expect(page.summary!.verifiedConnectedMs,1501);
    expect(page.summary!.chargedMb,2);
    expect(page.summary!.unverifiedCalls,1);
    expect(()=>CallHistorySummary.read({'calls':1,'verifiedConnectedMs':0,
      'chargedMb':0,'unverifiedCalls':1,'pendingUsageCalls':1}),throwsFormatException);
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
