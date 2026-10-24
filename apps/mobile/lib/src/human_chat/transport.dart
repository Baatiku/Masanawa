import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/network/api_client.dart';
import '../core/providers.dart';
import '../state/session_state.dart';
import 'event_frames.dart';
import 'models.dart';

/// A fresh sign-in is a new authorization lease even when the user ID is the
/// same. Routine access-token refresh preserves the epoch and live transports.
typedef HumanAuthorizationLease = (String?, int);
final humanAuthorizationLeaseProvider = Provider<HumanAuthorizationLease>((
  ref,
) {
  final state = ref.watch(sessionProvider);
  final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
  return (state is SessionSignedIn ? state.user.id : null, epoch);
});

final humanAccountProvider = Provider<String?>(
  (ref) => ref.watch(humanAuthorizationLeaseProvider).$1,
);
final humanCommunicationTransportProvider =
    Provider<HumanCommunicationTransport>((ref) {
      ref.watch(humanAuthorizationLeaseProvider);
      final transport = HumanCommunicationTransport(
        ref.watch(apiClientProvider),
      );
      // Provider recomputation revokes the old live request/stream lease before
      // the next account/session may render or post with its replacement.
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
    if (!active) return;
    if (HumanEventFrameDecoder.eventSequence(after) == null) {
      throw const FormatException('Invalid Human Chat event resume cursor');
    }
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
    if (!active) return;
    final contentType =
        response.headers.value(Headers.contentTypeHeader)?.toLowerCase() ?? '';
    if (!contentType.startsWith('text/event-stream')) {
      throw const FormatException('Unexpected Human Chat event content type');
    }
    if (response.data == null) {
      throw const FormatException('Missing Human Chat event stream');
    }

    final decoder = HumanEventFrameDecoder();
    var lastSequence = after;
    final lines = response.data!.stream
        .cast<List<int>>()
        .transform(utf8.decoder)
        .transform(const LineSplitter());
    await for (final line in lines) {
      if (!active) return;
      final event = decoder.accept(line);
      if (event == null) continue; // heartbeat or unfinished SSE frame
      final sequence = HumanEventFrameDecoder.eventSequence(event['sequence'])!;
      if (sequence <= lastSequence) continue; // duplicate/replayed SSE event
      lastSequence = sequence;
      if (!active) return;
      yield event;
    }
    // Incomplete final data without the blank-line delimiter is intentionally
    // discarded: reconnect from the last committed sequence to recover it.
  }
}
