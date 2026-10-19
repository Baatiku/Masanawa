import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/network/api_client.dart';
import '../core/providers.dart';
import '../state/session_state.dart';
import 'models.dart';

final humanAccountProvider = Provider<String?>(
  (ref) => ref.watch(
    sessionProvider.select((s) => s is SessionSignedIn ? s.user.id : null),
  ),
);
final humanCommunicationTransportProvider =
    Provider<HumanCommunicationTransport>((ref) {
      ref.watch(humanAccountProvider);
      final transport = HumanCommunicationTransport(
        ref.watch(apiClientProvider),
      );
      ref.onDispose(transport.cancel);
      return transport;
    });

class HumanCommunicationTransport {
  HumanCommunicationTransport(this.api) {
    unawaited(recoverTemporaryHumanMedia());
  }
  static Future<void>? _recovery;

  /// A killed process cannot dispose its player. Remove its private temporary
  /// videos once before this process creates any new playback files.
  static Future<void> recoverTemporaryHumanMedia() => _recovery ??= () async {
    try {
      await for (final entry in Directory.systemTemp.list()) {
        if (entry is Directory &&
            entry.uri.pathSegments
                .where((s) => s.isNotEmpty)
                .last
                .startsWith('human-video-')) {
          try {
            await entry.delete(recursive: true);
          } catch (_) {}
        }
      }
    } catch (_) {}
  }();
  final ApiClient api;
  final CancelToken _cancel = CancelToken();
  final _revocations = StreamController<void>.broadcast(sync: true);
  Stream<void> get revocations => _revocations.stream;
  bool get active => !_cancel.isCancelled;
  void cancel() {
    if (active) {
      _cancel.cancel('Account changed');
      _revocations.add(null);
      unawaited(_revocations.close());
    }
  }

  Future<HumanJson> request(
    String method,
    String path, {
    Object? data,
    Map<String, dynamic>? query,
  }) async {
    final r = await api.dio.request<dynamic>(
      '/v1/human$path',
      data: data,
      queryParameters: query,
      cancelToken: _cancel,
      options: Options(method: method, headers: {'Cache-Control': 'no-store'}),
    );
    if (!active) throw StateError('Account changed');
    return Map<String, dynamic>.from(r.data as Map);
  }

  Stream<HumanJson> stream(int after) async* {
    final response = await api.dio.get<ResponseBody>(
      '/v1/human/events/stream',
      queryParameters: {'after': after},
      cancelToken: _cancel,
      options: Options(
        responseType: ResponseType.stream,
        receiveTimeout: Duration.zero,
        headers: {'Accept': 'text/event-stream', 'Cache-Control': 'no-store'},
      ),
    );
    final lines = response.data!.stream
        .cast<List<int>>()
        .transform(utf8.decoder)
        .transform(const LineSplitter());
    await for (final line in lines) {
      if (!active) return;
      if (line.startsWith('data:'))
        yield Map<String, dynamic>.from(
          jsonDecode(line.substring(5).trim()) as Map,
        );
    }
  }
}
