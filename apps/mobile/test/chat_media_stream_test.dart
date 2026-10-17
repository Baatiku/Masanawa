import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_session.dart';
import 'package:masanawa/src/agents/masanawa_transport.dart';
import 'package:masanawa/src/core/network/api_client.dart';

class Adapter implements HttpClientAdapter {
  Adapter(this.events, {this.status = 200, this.keepOpen = false});
  final bool keepOpen;
  final List<Map<String, dynamic>> events;
  final int status;
  final requests = <RequestOptions>[];
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? body,
    Future<void>? cancelFuture,
  ) async {
    requests.add(options);
    final text = events.map(jsonEncode).join('\n') + '\n';
    // Split every UTF-8 byte, including multi-codepoint emoji and JSON strings.
    if (keepOpen) {
      final output=StreamController<Uint8List>();
      output.add(Uint8List.fromList(utf8.encode(text)));
      return ResponseBody(output.stream,status,headers:{Headers.contentTypeHeader:['application/x-ndjson']});
    }
    return ResponseBody(
      Stream.fromIterable(
        utf8.encode(text).map((b) => Uint8List.fromList([b])),
      ),
      status,
      headers: {
        Headers.contentTypeHeader: ['application/x-ndjson'],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

MasanawaAgentTransport transport(Adapter adapter) {
  final dio = Dio();
  dio.httpClientAdapter = adapter;
  return MasanawaAgentTransport(
    dio: dio,
    baseUrl: 'https://unit.test',
    readAccessToken: () => 'test-token',
  );
}

const binding = AgentSessionBinding(
  characterId: 'character',
  characterSessionId: 'session',
);
void main() {
  test(
    'voice-note upload receives streamed PCM and output transcript with the original request identity',
    () async {
      final adapter = Adapter([
        {'type': 'delta', 'text': 'Hello 😀'},
        {'type': 'audio', 'dataBase64': 'AQACAA=='},
        {'type': 'audio-transcript', 'text': 'Hello 😀'},
        {
          'type': 'done',
          'reply': 'Hello 😀',
          'agentRunId': 'run',
          'parts': [],
          'audioTranscript': 'Hello 😀',
        },
      ]);
      final pcm = <int>[];
      final transcript = <String>[];
      final result = await transport(adapter).sendMediaTurnStream(
        binding: binding,
        bytes: Uint8List.fromList([1, 2]),
        mimeType: 'audio/mp4',
        caption: '',
        requestId: 'request_original',
        onAudioPcmChunk: (bytes) async => pcm.addAll(bytes),
        onAudioTranscriptDelta: transcript.add,
      );
      expect(result.text, 'Hello 😀');
      expect(result.audioTranscript, 'Hello 😀');
      expect(result.audioBytes, [1, 0, 2, 0]);
      expect(result.audioMimeType, 'audio/l16;rate=24000');
      expect(pcm, result.audioBytes);
      expect(transcript.single, 'Hello 😀');
      expect(adapter.requests.single.path, endsWith('/media-turn-stream'));
      expect(
        adapter.requests.single.headers['x-request-id'],
        'request_original',
      );
    },
  );
  test('missing final ASR never promotes a partial transcript over the complete reply', () async {
    final adapter=Adapter([
      {'type':'audio','dataBase64':'AQACAA=='},
      {'type':'audio-transcript','text':'Hello, two'},
      {'type':'done','reply':'Hello, two plus three is five.','parts':[]},
    ]);
    final result=await transport(adapter).sendMediaTurnStream(binding:binding,bytes:Uint8List.fromList([1,2]),mimeType:'audio/mp4',caption:'');
    expect(result.text,'Hello, two plus three is five.');
    expect(result.audioTranscript,isNull);
  });
  test('done ends a reply even when the HTTP connection remains open', () async {
    final adapter=Adapter([{'type':'done','reply':'Complete reply','parts':[]}],keepOpen:true);
    final result=await transport(adapter).sendMediaTurnStream(binding:binding,bytes:Uint8List.fromList([1,2]),mimeType:'audio/mp4',caption:'').timeout(const Duration(seconds:2));
    expect(result.text,'Complete reply');expect(adapter.requests,hasLength(1));
  });
  test(
    'emoji-only text survives split UTF-8 and requires a completed reply',
    () async {
      final adapter = Adapter([
        {'type': 'delta', 'text': '👍🏿 🇳🇬 👨‍👩‍👧‍👦'},
        {
          'type': 'done',
          'reply': '👍🏿 🇳🇬 👨‍👩‍👧‍👦',
          'agentRunId': 'run',
          'parts': [],
        },
      ]);
      final result = await transport(adapter).sendTurn(
        binding: binding,
        text: '😀',
        onTextDelta: (_) {},
        requestId: 'emoji',
      );
      expect(result.text, '👍🏿 🇳🇬 👨‍👩‍👧‍👦');
      expect(adapter.requests.single.data['text'], '😀');
    },
  );
  for (final events in [
    [
      {'type': 'delta', 'text': 'partial'},
    ],
    [
      {'type': 'audio', 'dataBase64': 'AQACAA=='},
      {'type': 'error', 'code': 'turn_failed'},
    ],
    [
      {'type': 'error', 'code': 'turn_failed'},
    ],
  ]) {
    test(
      'incomplete or failed output never falls back and repeats inference: $events',
      () async {
        final adapter = Adapter(events);
        await expectLater(
          transport(adapter).sendMediaTurnStream(
            binding: binding,
            bytes: Uint8List.fromList([1]),
            mimeType: 'image/png',
            caption: '',
          ),
          throwsA(isA<ApiException>()),
        );
        expect(adapter.requests, hasLength(1));
      },
    );
  }
  test('partial text alone is not a completed successful message', () async {
    final adapter = Adapter([
      {'type': 'delta', 'text': 'partial'},
    ]);
    await expectLater(
      transport(
        adapter,
      ).sendTurn(binding: binding, text: '😀', onTextDelta: (_) {}),
      throwsA(isA<ApiException>()),
    );
    expect(adapter.requests, hasLength(1));
  });
  test(
    'multiple attachments keep the stream endpoint and Unicode filenames',
    () async {
      final adapter = Adapter([
        {
          'type': 'done',
          'reply': 'Two files received',
          'agentRunId': 'run',
          'parts': [],
        },
      ]);
      await transport(adapter).sendMediaSetTurnStream(
        binding: binding,
        media: [
          AgentMediaInput(
            bytes: Uint8List.fromList([1]),
            mimeType: 'image/png',
            name: 'photo😀.png',
          ),
          AgentMediaInput(
            bytes: Uint8List.fromList([2]),
            mimeType: 'application/pdf',
            name: 'notes.pdf',
          ),
        ],
        caption: 'Review',
      );
      expect(adapter.requests.single.path, endsWith('/media-set-turn-stream'));
      expect(adapter.requests.single.data['media'][0]['name'], 'photo😀.png');
    },
  );
}
