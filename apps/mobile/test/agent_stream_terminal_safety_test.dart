import 'dart:async';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_session.dart';
import 'package:masanawa/src/agents/masanawa_transport.dart';

/// Real Dio adapter path: these are transport events, not a fake chat result.
class _TurnStreamAdapter implements HttpClientAdapter {
  _TurnStreamAdapter({
    this.streamStatus = 200,
    this.streamBody = '',
    this.networkFailure = false,
  });

  final int streamStatus;
  final String streamBody;
  final bool networkFailure;
  final requests = <RequestOptions>[];

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    requests.add(options);
    if (options.uri.path.endsWith('/turn-stream')) {
      if (networkFailure) {
        throw DioException(
          requestOptions: options,
          type: DioExceptionType.connectionTimeout,
        );
      }
      return ResponseBody.fromString(
        streamBody,
        streamStatus,
        headers: {
          Headers.contentTypeHeader: ['application/x-ndjson'],
        },
      );
    }
    if (options.uri.path.endsWith('/turn')) {
      return ResponseBody.fromString(
        '{"reply":"Legacy server reply","agentRunId":"one-run"}',
        200,
        headers: {Headers.contentTypeHeader: ['application/json']},
      );
    }
    throw StateError('Unexpected transport request: ${options.uri.path}');
  }

  @override
  void close({bool force = false}) {}
}

const _binding = AgentSessionBinding(
  characterId: 'masana-approved',
  characterSessionId: 'session-current',
);

MasanawaAgentTransport _transport(_TurnStreamAdapter adapter) {
  final dio = Dio()..httpClientAdapter = adapter;
  return MasanawaAgentTransport(
    dio: dio,
    baseUrl: 'https://gateway.test',
    readAccessToken: () => 'owner-token',
  );
}

Future<AgentTurnResult> _streamTurn(_TurnStreamAdapter adapter) =>
    _transport(adapter).sendTurn(
      binding: _binding,
      text: 'Please help me',
      requestId: 'original-request-1',
      onTextDelta: (_) {},
    );

void main() {
  for (final scenario in <({String label, int status, String body, bool lost})>[
    (label: '200 empty body', status: 200, body: '', lost: false),
    (label: '200 partial text then EOF', status: 200,
      body: '{"type":"delta","text":"Partial answer"}\n', lost: false),
    (label: '200 explicit terminal error', status: 200,
      body: '{"type":"error","code":"model_failed"}\n', lost: false),
    (label: '200 invalid line', status: 200, body: 'not-json\n', lost: false),
    (label: '500 without a delta', status: 500, body: '{}', lost: false),
    (label: '401 authorization denial', status: 401, body: '{}', lost: false),
    (label: 'connection lost before output', status: 200, body: '', lost: true),
  ]) {
    test('no second turn POST after ${scenario.label}', () async {
      final adapter = _TurnStreamAdapter(
        streamStatus: scenario.status,
        streamBody: scenario.body,
        networkFailure: scenario.lost,
      );
      await expectLater(_streamTurn(adapter), throwsA(isA<Exception>()));
      expect(adapter.requests, hasLength(1));
      expect(adapter.requests.single.uri.path,
          '/agent/sessions/session-current/turn-stream');
      expect(adapter.requests.single.headers['x-request-id'],
          'original-request-1');
    });
  }

  for (final status in [404, 405]) {
    test('a definitive $status missing stream route permits one legacy turn',
        () async {
      final adapter = _TurnStreamAdapter(streamStatus: status, streamBody: '{}');
      final result = await _streamTurn(adapter);
      expect(result.text, 'Legacy server reply');
      expect(adapter.requests.map((r) => r.uri.path), [
        '/agent/sessions/session-current/turn-stream',
        '/agent/sessions/session-current/turn',
      ]);
      expect(adapter.requests.every((r) =>
          r.headers['x-request-id'] == 'original-request-1'), isTrue);
      expect(adapter.requests.every((r) =>
          r.headers['Authorization'] == 'Bearer owner-token'), isTrue);
    });
  }

  test('only a terminal done with text confirms a streamed turn', () async {
    final adapter = _TurnStreamAdapter(streamBody:
        '{"type":"delta","text":"Draft"}\n'
        '{"type":"done","reply":"Final answer","agentRunId":"run-1"}\n');
    final text = <String>[];
    final result = await _transport(adapter).sendTurn(
      binding: _binding,
      text: 'Please help me',
      requestId: 'original-request-1',
      onTextDelta: text.add,
    );
    expect(text, ['Draft']);
    expect(result.text, 'Final answer');
    expect(result.agentRunId, 'run-1');
    expect(adapter.requests, hasLength(1));
  });
}
