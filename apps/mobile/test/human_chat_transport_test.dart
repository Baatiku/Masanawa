import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/human_chat/transport.dart';

class Adapter implements HttpClientAdapter {
  final requests = <RequestOptions>[];
  bool sse = false;
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    requests.add(options);
    if (sse)
      return ResponseBody.fromString(
        'id: 7\ndata: {"sequence":7,"type":"message","conversationId":"thread"}\n\n',
        200,
        headers: {
          Headers.contentTypeHeader: ['text/event-stream'],
        },
      );
    return ResponseBody.fromString(
      jsonEncode({'items': []}),
      200,
      headers: {
        Headers.contentTypeHeader: ['application/json'],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

void main() {
  test(
    'human transport stays on private human API with authorization header',
    () async {
      final a = Adapter();
      final api =
          ApiClient(dio: Dio(BaseOptions(baseUrl: 'https://gateway.example')))
            ..authenticatedAccountId = 'alice'
            ..accessToken = 'test-access';
      api.dio.httpClientAdapter = a;
      final t = HumanCommunicationTransport(api);
      await t.request(
        'POST',
        '/conversations/thread/messages',
        data: {'requestId': 'stable', 'text': 'private'},
      );
      final r = a.requests.single;
      expect(r.uri.path, '/v1/human/conversations/thread/messages');
      expect(r.headers['Authorization'], 'Bearer test-access');
      expect(r.uri.query, isNot(contains('test-access')));
      expect(r.headers['Cache-Control'], 'no-store');
      t.cancel();
    },
  );
  test(
    'SSE parses persistent sequence and never places bearer in URL',
    () async {
      final a = Adapter()..sse = true;
      final api =
          ApiClient(dio: Dio(BaseOptions(baseUrl: 'https://gateway.example')))
            ..authenticatedAccountId = 'alice'
            ..accessToken = 'test-access';
      api.dio.httpClientAdapter = a;
      final t = HumanCommunicationTransport(api);
      final events = await t.stream(6).toList();
      expect(events.single['sequence'], 7);
      expect(a.requests.single.uri.queryParameters, {'after': '6'});
      expect(a.requests.single.headers['Accept'], 'text/event-stream');
      t.cancel();
    },
  );
  test(
    'account cancellation notifies media leases and rejects future requests',
    () async {
      final a = Adapter();
      final api = ApiClient(
        dio: Dio(BaseOptions(baseUrl: 'https://gateway.example')),
      );
      api.dio.httpClientAdapter = a;
      final t = HumanCommunicationTransport(api);
      var revoked = false;
      final subscription = t.revocations.listen((_) {
        revoked = true;
      });
      t.cancel();
      expect(t.active, false);
      expect(revoked, true);
      await expectLater(
        t.request('GET', '/privacy'),
        throwsA(isA<DioException>()),
      );
      expect(a.requests, isEmpty);
      await subscription.cancel();
    },
  );
}
