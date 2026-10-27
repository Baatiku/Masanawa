import 'package:dio/dio.dart';

import '../agents/agent_shell.dart';
import '../core/network/api_client.dart';

/// An original operation belongs to one signed-in customer. Callers must keep
/// its key until a matching admission or terminal receipt is read back.
class MbCallReview {
  const MbCallReview({required this.characterId, required this.operationKey,
    required this.reviewToken, required this.budgetMb, required this.expiresAt});
  final String characterId, operationKey, reviewToken;
  final int budgetMb;
  final DateTime expiresAt;
}

class MbCallAdmission {
  const MbCallAdmission({required this.id, required this.characterId,
    required this.budgetMb, required this.state, required this.expiresAt,
    required this.verifiedConnectedMs, this.chargedMb});
  final String id, characterId, state;
  final int budgetMb, verifiedConnectedMs;
  final int? chargedMb;
  final DateTime expiresAt;
  bool get active => const {'reserved', 'connecting', 'connected'}
      .contains(state) && DateTime.now().isBefore(expiresAt);
}

/// Pinned bearer and server-owned time accounting. No client duration or
/// provider URL is accepted as call authority.
class MbCallTransport {
  MbCallTransport({required Dio dio, required this.baseUrl,
    required this.accessToken, required this.accountId,
    required this.currentAccountId}) : _dio = Dio(dio.options.copyWith(baseUrl: baseUrl)) {
    _dio.httpClientAdapter = dio.httpClientAdapter;
  }
  final Dio _dio;
  final String baseUrl, accessToken, accountId;
  final String? Function() currentAccountId;
  void _owner() {
    if (accountId.isEmpty || accessToken.isEmpty || currentAccountId() != accountId) {
      throw StateError('The signed-in call account changed.');
    }
  }
  Options get _options => Options(headers: {'Authorization': 'Bearer $accessToken'},
    followRedirects: false, sendTimeout: const Duration(seconds: 15),
    receiveTimeout: const Duration(seconds: 25));
  Future<Map<String, dynamic>> _request(String method, String path,
      [Map<String, dynamic>? body]) async {
    _owner();
    try {
      final response = await _dio.request<Map<String, dynamic>>(path,
        data: body, options: _options.copyWith(method: method));
      _owner();
      return response.data ?? (throw const FormatException('Empty call response'));
    } on DioException catch (error) {
      _owner();
      throw mapDioError(error);
    }
  }
  Map<String, dynamic> _object(dynamic value) {
    if (value is! Map) throw const FormatException('Invalid call response');
    return value.cast<String, dynamic>();
  }
  DateTime _time(dynamic value) {
    final time = value is String ? DateTime.tryParse(value) : null;
    if (time == null) throw const FormatException('Invalid call expiry');
    return time;
  }
  int _integer(dynamic value, {int min = 0}) {
    if (value is! int || value < min) throw const FormatException('Invalid call amount');
    return value;
  }
  MbCallAdmission _admission(dynamic value) {
    final row = _object(value);
    final id = row['admissionId'], character = row['characterId'], state = row['state'];
    if (id is! String || id.isEmpty || character is! String || character.isEmpty ||
        state is! String || !const {'pending','reserved','connecting','connected',
          'settling','completed','failed'}.contains(state)) {
      throw const FormatException('Invalid call admission');
    }
    final charged = row['chargedMb'];
    return MbCallAdmission(id: id, characterId: character,
      budgetMb: _integer(row['budgetMb'], min: 1), state: state,
      expiresAt: _time(row['expiresAt']),
      verifiedConnectedMs: _integer(row['verifiedConnectedMs']),
      chargedMb: charged == null ? null : _integer(charged));
  }
  Future<MbCallReview> review(String characterId, String operationKey,
      {int expectedSeconds = 300}) async {
    if (!RegExp(r'^[A-Za-z0-9_-]{8,128}$').hasMatch(operationKey) ||
        expectedSeconds < 1 || expectedSeconds > 3600) {
      throw const FormatException('Invalid original call operation');
    }
    final data = _object((await _request('POST', '/v1/gb/calls/review', {
      'characterId': characterId, 'idempotencyKey': operationKey,
      'expectedSeconds': expectedSeconds,
    }))['review']);
    if (data['characterId'] != characterId || data['reviewToken'] is! String ||
        (data['reviewToken'] as String).isEmpty) {
      throw const FormatException('Call review changed Masana');
    }
    return MbCallReview(characterId: characterId, operationKey: operationKey,
      reviewToken: data['reviewToken'] as String,
      budgetMb: _integer(data['budgetMb'], min: 1),
      expiresAt: _time(data['expiresAt']));
  }
  Future<MbCallAdmission> confirm(MbCallReview review) async {
    if (DateTime.now().isAfter(review.expiresAt)) {
      throw StateError('Call review expired. Check the original operation.');
    }
    final admission = _admission((await _request('POST', '/v1/gb/calls/admissions',
      {'reviewToken': review.reviewToken, 'accepted': true}))['admission']);
    if (admission.characterId != review.characterId ||
        admission.budgetMb != review.budgetMb) {
      throw const FormatException('Call admission changed consent');
    }
    return admission;
  }
  Future<MbCallAdmission> readOriginal(String operationKey) async {
    if (!RegExp(r'^[A-Za-z0-9_-]{8,128}$').hasMatch(operationKey)) {
      throw const FormatException('Invalid original call operation');
    }
    return _admission((await _request('GET',
      '/v1/gb/calls/admissions/original/$operationKey'))['admission']);
  }
  Future<MbCallAdmission> read(String admissionId) async =>
    _admission((await _request('GET',
      '/v1/gb/calls/admissions/${Uri.encodeComponent(admissionId)}'))['admission']);
  Future<MbCallAdmission> finish(String admissionId) async =>
    _admission((await _request('POST',
      '/v1/gb/calls/admissions/${Uri.encodeComponent(admissionId)}/finish', {}))['admission']);
  Future<AgentLiveVoiceGrant> grant(MbCallAdmission admission) async {
    if (!admission.active) throw StateError('Call admission is no longer active.');
    final value = _object((await _request('POST',
      '/v1/gb/calls/admissions/${Uri.encodeComponent(admission.id)}/grant', {}))['grant']);
    final token = value['token'], websocketUrl = value['websocketUrl'];
    final model = value['model'], voiceName = value['voiceName'];
    final url = websocketUrl is String ? Uri.tryParse(websocketUrl) : null;
    final origin = Uri.tryParse(baseUrl);
    final local = origin != null && const {'localhost','127.0.0.1','::1'}.contains(origin.host);
    if (value['transport'] != 'gateway_relay' ||
        token is! String || !RegExp(r'^[A-Za-z0-9_-]{43}$').hasMatch(token) ||
        url == null || origin == null || url.host != origin.host ||
        url.scheme != (local && origin.scheme == 'http' ? 'ws' : 'wss') ||
        url.hasPort != origin.hasPort || (url.hasPort && url.port != origin.port) ||
        url.path != '/agent/live/stream' || url.userInfo.isNotEmpty ||
        url.hasQuery || url.hasFragment || model is! String || model.isEmpty ||
        voiceName is! String || voiceName.isEmpty) {
      throw const FormatException('Invalid trusted call relay grant');
    }
    final expiresAt = _time(value['expiresAt']);
    if (!DateTime.now().isBefore(expiresAt)) throw StateError('Call grant expired.');
    final instruction = value['systemInstruction'];
    if (instruction != null && (instruction is! String || instruction.length > 32000)) {
      throw const FormatException('Invalid call context');
    }
    final historyId=value['callId'];
    if(historyId!=null && (historyId is! String ||
      !RegExp(r'^[0-9a-f]{8}-[0-9a-f]{4}-7[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$').hasMatch(historyId))) {
      throw const FormatException('Invalid canonical call history reference');
    }
    return AgentLiveVoiceGrant(token: token, websocketUrl: websocketUrl,
      model: model, voiceName: voiceName, expiresAt: expiresAt,
      systemInstruction: instruction as String?, callId: historyId as String?,
      transport: AgentLiveVoiceTransport.gatewayRelay);
  }
}
