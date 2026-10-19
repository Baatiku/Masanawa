import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/network/api_client.dart';
import '../core/providers.dart';
import '../state/session_state.dart';

abstract interface class HumanCallsTransport {
  Future<Map<String, dynamic>> request(
    String method,
    String path, {
    Map<String, dynamic>? data,
  });
  void cancel();
}

class GatewayHumanCallsTransport implements HumanCallsTransport {
  GatewayHumanCallsTransport(this.api);
  final ApiClient api;
  final _cancel = CancelToken();
  @override
  Future<Map<String, dynamic>> request(
    String method,
    String path, {
    Map<String, dynamic>? data,
  }) async {
    if (!RegExp(r'^/calls(?:$|[/?])').hasMatch(path) || path.contains('..'))
      throw ArgumentError('Human call path required');
    final r = await api.dio.request<dynamic>(
      '/v1/human$path',
      data: data,
      options: Options(method: method, headers: {'Cache-Control': 'no-store'}),
      cancelToken: _cancel,
    );
    if (r.data is! Map)
      throw const FormatException('Invalid human call response');
    return (r.data as Map).cast<String, dynamic>();
  }

  @override
  void cancel() => _cancel.cancel('Call account changed');
}

final humanCallsTransportProvider = Provider<HumanCallsTransport>((ref) {
  ref.watch(
    sessionProvider.select((s) => s is SessionSignedIn ? s.user.id : null),
  );
  final api = GatewayHumanCallsTransport(ref.watch(apiClientProvider));
  ref.onDispose(api.cancel);
  return api;
});

class HumanCallRecord {
  HumanCallRecord({
    required this.id,
    required this.handle,
    required this.name,
    required this.state,
    required this.direction,
    required this.createdAt,
    this.avatarUrl,
    this.answeredAt,
    this.endedAt,
    this.expiresAt,
  });
  final String id, handle, name, state, direction;
  final String? avatarUrl;
  final DateTime createdAt;
  final DateTime? answeredAt, endedAt, expiresAt;
  bool get incoming => direction == 'incoming';
  bool get terminal => !const ['ringing', 'accepted'].contains(state);
  factory HumanCallRecord.fromJson(Map<String, dynamic> j) {
    final peer = j['peer'];
    if (j['id'] is! String ||
        peer is! Map ||
        peer['handle'] is! String ||
        peer['displayName'] is! String ||
        !const [
          'ringing',
          'accepted',
          'declined',
          'busy',
          'missed',
          'cancelled',
          'ended',
        ].contains(j['state']) ||
        !const ['incoming', 'outgoing'].contains(j['direction']))
      throw const FormatException('Invalid human call');
    return HumanCallRecord(
      id: j['id'] as String,
      handle: peer['handle'] as String,
      name: peer['displayName'] as String,
      avatarUrl: peer['avatarUrl'] as String?,
      state: j['state'] as String,
      direction: j['direction'] as String,
      createdAt: DateTime.parse(j['createdAt'] as String),
      answeredAt: DateTime.tryParse(j['answeredAt'] as String? ?? ''),
      endedAt: DateTime.tryParse(j['endedAt'] as String? ?? ''),
      expiresAt: DateTime.tryParse(j['expiresAt'] as String? ?? ''),
    );
  }
}
