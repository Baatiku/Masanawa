import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/network/api_client.dart';
import '../core/providers.dart';
import 'call_outcome.dart';
import 'group_call_transport.dart';

class CallHistoryItem {
  const CallHistoryItem({
    required this.callId,
    required this.characterId,
    required this.displayName,
    required this.state,
    required this.createdAt,
    this.direction = 'outgoing',
    this.connectedAt,
    this.endedAt,
    this.expiresAt,
    this.endReason,
    this.groupId,
    this.mbAdmissionId,
    this.verifiedConnectedMs,
    this.chargedMb,
  });
  final String callId;
  final String characterId;
  final String displayName;
  final String state;
  final String direction;
  bool get incoming => direction == 'incoming';
  bool get missed => incoming && (state == 'missed' || state == 'expired');
  final DateTime createdAt;
  final DateTime? connectedAt, endedAt, expiresAt;
  final CallEndReason? endReason;
  final String? groupId, mbAdmissionId;
  final int? verifiedConnectedMs, chargedMb;
  bool get isGroupCall => groupId != null;
  Duration? get duration {
    if (verifiedConnectedMs != null)
      return Duration(milliseconds: verifiedConnectedMs!);
    final start = connectedAt, end = endedAt;
    if (start == null || end == null) return null;
    final elapsed = end.difference(start);
    return elapsed.isNegative ? null : elapsed;
  }

  String get outcomeLabel =>
      endReason?.label ??
      (missed
          ? 'Missed call'
          : state == 'missed'
          ? 'Not answered'
          : state == 'declined'
          ? 'Declined'
          : state == 'cancelled'
          ? 'Cancelled'
          : state == 'expired'
          ? 'No confirmed connection before expiry'
          : endedAt != null && connectedAt == null
          ? 'Ended before a connection was confirmed'
          : state == 'ended'
          ? 'Call ended'
          : state == 'active'
          ? 'Connected'
          : state == 'ringing'
          ? 'Ringing'
          : state == 'accepted'
          ? 'Answering'
          : 'Connecting');

  factory CallHistoryItem.fromJson(Map<String, dynamic> json) {
    final callId = json['callId'];
    final characterId = json['characterId'];
    final displayName = json['displayName'];
    final state = json['state'];
    final createdAt = json['createdAt'] is String
        ? DateTime.tryParse(json['createdAt'] as String)
        : null;
    if (callId is! String ||
        callId.isEmpty ||
        characterId is! String ||
        characterId.isEmpty ||
        displayName is! String ||
        displayName.isEmpty ||
        !const [
          'connecting',
          'active',
          'ended',
          'expired',
          'ringing',
          'accepted',
          'declined',
          'cancelled',
          'missed',
        ].contains(state) ||
        !const ['outgoing', 'incoming'].contains(json['direction']) ||
        json['kind'] != 'audio' ||
        createdAt == null) {
      throw const FormatException('Invalid Masana call history record');
    }
    DateTime? optionalDate(String key) {
      final raw = json[key];
      if (raw == null) return null;
      if (raw is! String) throw const FormatException('Invalid call timestamp');
      final parsed = DateTime.tryParse(raw);
      if (parsed == null) throw const FormatException('Invalid call timestamp');
      return parsed;
    }

    final groupId = json['groupId'];
    if (groupId != null && (groupId is! String || groupId.isEmpty))
      throw const FormatException('Invalid call group');
    final usage = json['mbUsage'];
    if (usage != null &&
        (usage is! Map ||
            usage['admissionId'] is! String ||
            usage['verifiedConnectedMs'] is! int ||
            (usage['verifiedConnectedMs'] as int) < 0 ||
            (usage['chargedMb'] != null &&
                (usage['chargedMb'] is! int ||
                    (usage['chargedMb'] as int) < 0)))) {
      throw const FormatException('Invalid authoritative MB call usage');
    }
    return CallHistoryItem(
      mbAdmissionId: usage is Map ? usage['admissionId'] as String : null,
      verifiedConnectedMs: usage is Map
          ? usage['verifiedConnectedMs'] as int
          : null,
      chargedMb: usage is Map ? usage['chargedMb'] as int? : null,
      connectedAt: optionalDate('connectedAt'),
      endedAt: optionalDate('endedAt'),
      expiresAt: optionalDate('expiresAt'),
      endReason: CallEndReason.parse(json['endReason']),
      groupId: groupId as String?,
      callId: callId,
      characterId: characterId,
      displayName: displayName,
      state: state as String,
      createdAt: createdAt,
      direction: json['direction'] as String,
    );
  }
}

class CallHistoryPage {
  const CallHistoryPage({required this.calls, this.nextCursor, this.summary});
  final List<CallHistoryItem> calls;
  final String? nextCursor;
  final CallHistorySummary? summary;
}

class CallHistorySummary {
  const CallHistorySummary({required this.calls,required this.verifiedConnectedMs,
    required this.chargedMb,required this.unverifiedCalls,required this.pendingUsageCalls});
  final int calls,verifiedConnectedMs,chargedMb,unverifiedCalls,pendingUsageCalls;
  factory CallHistorySummary.read(Object? raw) {
    if(raw is! Map)throw const FormatException('Invalid call totals');
    final keys=['calls','verifiedConnectedMs','chargedMb','unverifiedCalls','pendingUsageCalls'];
    for(final key in keys) {
      if(raw[key] is! int || (raw[key] as int)<0)
        throw const FormatException('Invalid call totals');
    }
    final count=raw['calls'] as int,unknown=raw['unverifiedCalls'] as int,
      pending=raw['pendingUsageCalls'] as int;
    if(unknown+pending>count || (count==0 &&
       ((raw['verifiedConnectedMs'] as int)!=0 || (raw['chargedMb'] as int)!=0)))
      throw const FormatException('Inconsistent call totals');
    return CallHistorySummary(calls:count,verifiedConnectedMs:raw['verifiedConnectedMs'] as int,
      chargedMb:raw['chargedMb'] as int,unverifiedCalls:unknown,pendingUsageCalls:pending);
  }
}

abstract interface class CallHistoryTransport {
  Future<CallHistoryPage> loadPage({
    String? cursor,
    String query = '',
    String connection = 'all',
    String days = 'all',
    CancelToken? cancelToken,
  });
}

abstract interface class CallDetailTransport {
  Future<CallHistoryItem> get(String callId, {CancelToken? cancelToken});
  Future<MasanaCallGroup> group(String groupId, {CancelToken? cancelToken});
}

class GatewayCallHistoryTransport
    implements CallHistoryTransport, CallDetailTransport {
  const GatewayCallHistoryTransport({required this.api});
  final ApiClient api;
  @override
  Future<CallHistoryItem> get(String callId, {CancelToken? cancelToken}) async {
    final response = await api.dio.get<dynamic>(
      '/v1/calls/${Uri.encodeComponent(callId)}',
      cancelToken: cancelToken,
    );
    if (response.data is! Map)
      throw const FormatException('Invalid call detail');
    final item = CallHistoryItem.fromJson(
      (response.data as Map).cast<String, dynamic>(),
    );
    if (item.callId != callId)
      throw const FormatException('Mismatched call detail');
    return item;
  }

  @override
  Future<MasanaCallGroup> group(
    String groupId, {
    CancelToken? cancelToken,
  }) async {
    final response = await api.dio.get<dynamic>(
      '/v1/calls/groups/${Uri.encodeComponent(groupId)}',
      cancelToken: cancelToken,
    );
    if (response.data is! Map)
      throw const FormatException('Invalid group detail');
    final item = MasanaCallGroup.fromJson(
      (response.data as Map).cast<String, dynamic>(),
    );
    if (item.groupId != groupId)
      throw const FormatException('Mismatched group detail');
    return item;
  }

  @override
  Future<CallHistoryPage> loadPage({
    String? cursor,
    String query = '',
    String connection = 'all',
    String days = 'all',
    CancelToken? cancelToken,
  }) async {
    if(!const {'all','connected','not_connected'}.contains(connection) ||
       !const {'all','7','30'}.contains(days))
      throw const FormatException('Invalid call filter');
    final parameters = <String, dynamic>{'limit': 30,
      if(connection!='all')'connection':connection,if(days!='all')'days':days};
    if (cursor != null) parameters['cursor'] = cursor;
    if (query.isNotEmpty) parameters['q'] = query;
    final response = await api.dio.get<dynamic>(
      '/v1/calls',
      queryParameters: parameters,
      cancelToken: cancelToken,
    );
    final data = response.data;
    if (data is! Map ||
        data['calls'] is! List ||
        (data['nextCursor'] != null && data['nextCursor'] is! String)) {
      throw const FormatException('Invalid call history response');
    }
    final calls = (data['calls'] as List)
        .map((item) {
          if (item is! Map) {
            throw const FormatException('Invalid call history item');
          }
          return CallHistoryItem.fromJson(item.cast<String, dynamic>());
        })
        .toList(growable: false);
    return CallHistoryPage(
      calls: calls,
      nextCursor: data['nextCursor'] as String?,
      summary:data['summary']==null?null:CallHistorySummary.read(data['summary']),
    );
  }
}

final callHistoryTransportProvider = Provider<CallHistoryTransport>(
  (ref) => GatewayCallHistoryTransport(api: ref.watch(apiClientProvider)),
);
