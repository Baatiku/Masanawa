import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/human_chat/event_frames.dart';
import 'package:masanawa/src/human_chat/transport.dart';

class SseAdapter implements HttpClientAdapter {
  String body = '';
  String contentType = 'text/event-stream';
  final requests = <RequestOptions>[];

  @override
  Future<ResponseBody> fetch(RequestOptions options,
      Stream<Uint8List>? requestStream, Future<void>? cancelFuture) async {
    requests.add(options);
    return ResponseBody.fromString(body, 200,
        headers: {Headers.contentTypeHeader: [contentType]});
  }
  @override
  void close({bool force = false}) {}
}

HumanCommunicationTransport harness(SseAdapter adapter) {
  final api = ApiClient(
    dio: Dio(BaseOptions(baseUrl: 'https://gateway.example')),
  )
    ..authenticatedAccountId = 'account-a'
    ..accessToken = 'private-test-token';
  api.dio.httpClientAdapter = adapter;
  return HumanCommunicationTransport(api);
}

void main() {
  group('bounded Human SSE frame parser', () {
    test('waits for complete blank-line-terminated event, ignores heartbeat/comment and event type', () {
      final p = HumanEventFrameDecoder();
      expect(p.accept(': heartbeat'), isNull);
      expect(p.accept(''), isNull);
      expect(p.accept('event: message'), isNull);
      expect(p.accept('retry: 1000'), isNull);
      expect(p.accept('id: 7'), isNull);
      expect(p.accept('data: {"sequence":7,"type":"message"}'), isNull);
      expect(p.accept(''), {'sequence': 7, 'type': 'message'});
      expect(p.accept(''), isNull);
    });
    test('assembles multiline JSON and preserves whitespace inside strings', () {
      final p = HumanEventFrameDecoder();
      expect(p.accept('id:7'), isNull);
      expect(p.accept('data: {"sequence":'), isNull);
      expect(p.accept('data: 7,"payload":{"text":"hello there"}}'), isNull);
      expect(p.accept(''), {'sequence':7,'payload':{'text':'hello there'}});
    });
    test('one-event cache resets before the next complete event', () {
      final p = HumanEventFrameDecoder();
      expect(p.accept('id: 1'), isNull);
      expect(p.accept('data: {"sequence":1}'), isNull);
      expect(p.accept('')?['sequence'],1);
      expect(p.accept(': keepalive'), isNull);
      expect(p.accept('id: 3'), isNull);
      expect(p.accept('data: {"sequence":3}'), isNull);
      expect(p.accept('')?['sequence'],3);
    });
    test('conflicting id and JSON sequence must fail rather than drop missed messages', () {
      final p = HumanEventFrameDecoder();
      p.accept('id: 8');
      p.accept('data: {"sequence":9}');
      expect(() => p.accept(''), throwsFormatException);
      p.accept('id: 10');
      p.accept('data: {"sequence":10}');
      expect(p.accept('')?['sequence'], 10);
    });
    test('non-integer, negative and unsafe sequence formats are rejected', () {
      for(final raw in <Object?>[-1,7.5,'07','7.0','+3','-1','1e3',9007199254740992,null]) {
        expect(HumanEventFrameDecoder.eventSequence(raw), isNull,
          reason:'invalid sequence: $raw');
      }
      expect(HumanEventFrameDecoder.eventSequence('9007199254740991'), 9007199254740991);
      expect(HumanEventFrameDecoder.eventSequence('0'),0);
      expect(HumanEventFrameDecoder.eventSequence(7),7);
    });
    test('JSON scalar and array cannot create synthetic stream event', () {
      for(final input in ['[]','null','12','"x"']) {
        final p = HumanEventFrameDecoder();
        p.accept('data: $input');
        expect(() => p.accept(''), throwsFormatException,reason:input);
      }
    });
    test('invalid JSON is a recoverable stream error, not a cursor advance', () {
      final p = HumanEventFrameDecoder();
      p.accept('id: 14');
      p.accept('data: {"sequence":');
      expect(() => p.accept(''), throwsFormatException);
      p.accept('data: {"sequence":15}');
      expect(p.accept('')?['sequence'],15);
    });
    test('oversized events fail closed before parsing and reset', () {
      final p = HumanEventFrameDecoder();
      expect(
        () => p.accept('data: ${'x' * (HumanEventFrameDecoder.maxFrameCharacters + 1)}'),
        throwsFormatException,
      );
      p.accept('data: {"sequence":18}');
      expect(p.accept('')?['sequence'],18);
    });
    test('malformed SSE id rejects control bytes and oversized cursor', () {
      final p = HumanEventFrameDecoder();
      expect(() => p.accept('id: ${'1'*100}'), throwsFormatException);
      expect(() => p.accept('id: abc\u0000xyz'), throwsFormatException);
      p.accept('id: abc');
      p.accept('data: {"sequence":19}');
      expect(() => p.accept(''), throwsFormatException);
    });
    test('SSE empty data or bare id never creates an event', () {
      final p = HumanEventFrameDecoder();
      p.accept('id: 2');
      expect(p.accept(''), isNull);
      p.accept('data:');
      expect(() => p.accept(''), throwsFormatException);
    });
  });

  group('authorized SSE HTTP transport', () {
    test('parses framed server event and keeps token out of query', () async {
      final a=SseAdapter()
        ..body=': heartbeat\n\nid: 7\nevent: message\ndata: {"sequence":7,"type":"message","conversationId":"t"}\n\n';
      final t=harness(a);
      expect(await t.stream(6).toList(),[{'sequence':7,'type':'message','conversationId':'t'}]);
      expect(a.requests.single.uri.path,'/v1/human/events/stream');
      expect(a.requests.single.uri.queryParameters,{'after':'6'});
      expect(a.requests.single.uri.query,isNot(contains('private-test-token')));
      expect(a.requests.single.headers['Accept'],'text/event-stream');
      expect(a.requests.single.headers['Authorization'],'Bearer private-test-token');
      t.cancel();
    });
    test('suppresses replay/duplicate and out-of-order event ids', () async {
      final a=SseAdapter()
        ..body=[5,6,7,7,4,10,9].map((id)=>
          'id: $id\ndata: {"sequence":$id,"type":"message"}\n\n').join();
      final t=harness(a);
      expect((await t.stream(6).toList()).map((e)=>e['sequence']),[7,10]);
      t.cancel();
    });
    test('handles multiline frames, UTF-8 and CRLF chunk splitting', () async {
      final a=SseAdapter()
        ..body=': ping\r\n\r\nid: 4\r\ndata: {"sequence":\r\ndata: 4,"payload":{"text":"Tàbí"}}\r\n\r\n';
      final t=harness(a);
      final events=await t.stream(3).toList();
      expect(events.single['sequence'],4);
      expect((events.single['payload'] as Map)['text'],'Tàbí');
      t.cancel();
    });
    test('truncated stream never yields incomplete last message', () async {
      final a=SseAdapter()..body='id: 3\ndata: {"sequence":3}\n';
      final t=harness(a);
      expect(await t.stream(2).toList(),isEmpty);
      t.cancel();
    });
    test('mismatched id fails stream for controller GET catchup', () async {
      final a=SseAdapter()
        ..body='id: 7\ndata: {"sequence":9}\n\n';
      final t=harness(a);
      await expectLater(t.stream(6).toList(),throwsFormatException);
      t.cancel();
    });
    test('unexpected JSON response instead of SSE never passes as empty authorized history', () async {
      final a=SseAdapter()
        ..contentType='application/json'
        ..body='{"ok":false}';
      final t=harness(a);
      await expectLater(t.stream(0).toList(),throwsFormatException);
      t.cancel();
    });
    test('negative resume cursor rejects before starting an HTTP stream', () async {
      final a=SseAdapter();
      final t=harness(a);
      await expectLater(t.stream(-1).toList(),throwsFormatException);
      expect(a.requests,isEmpty);
      t.cancel();
    });
    test('cancelled transport never starts a new event stream', () async {
      final a=SseAdapter();
      final t=harness(a);
      t.cancel();
      expect(await t.stream(0).toList(),isEmpty);
      expect(a.requests,isEmpty);
    });
  });
}
