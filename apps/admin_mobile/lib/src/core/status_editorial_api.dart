import 'package:dio/dio.dart';

import 'admin_api.dart';
import 'admin_auth_api.dart';

/// Gateway editorial authority is distinct from the Ops character-directory
/// service. Every operation carries the existing signed admin session.
class StatusEditorialApi {
  StatusEditorialApi({required this.session, Dio? dio})
      : _dio = dio ??
            Dio(BaseOptions(
              baseUrl: requireAdminAuthBaseUrl(),
              connectTimeout: const Duration(seconds: 10),
              receiveTimeout: const Duration(seconds: 20),
              headers: {'Accept': 'application/json'},
            ));

  final AdminApi session;
  final Dio _dio;

  Options _authorized([String? key]) => Options(headers: {
        'Authorization': 'Bearer ${session.currentAccessToken}',
        if (key != null) 'Idempotency-Key': key,
      });

  Future<Response<dynamic>> _request(
    Future<Response<dynamic>> Function() call,
  ) async {
    try {
      return await call();
    } on DioException catch (error) {
      if (error.response?.statusCode == 401 &&
          await session.refreshForExternalClient() != null) {
        try {
          return await call();
        } on DioException catch (retryError) {
          throw _failure(retryError);
        }
      }
      throw _failure(error);
    }
  }

  Exception _failure(DioException error) {
    final data = error.response?.data;
    final reason = data is Map ? data['code']?.toString() : null;
    if (error.response?.statusCode == 403) {
      return const StatusEditorialException(
          'Editorial permission denied. Only approved Status editors can publish.');
    }
    if (error.response?.statusCode == 401) {
      return const StatusEditorialException('Admin session expired. Sign in again.');
    }
    if (error.response?.statusCode == 409) {
      return const StatusEditorialException(
          'This post was changed by another editor. Refresh before retrying.');
    }
    if (error.response?.statusCode == 422) {
      return StatusEditorialException(reason ?? 'Invalid post or schedule.');
    }
    return const StatusEditorialException(
        'Status editorial service unavailable. Check your connection and retry.');
  }

  Future<List<StatusEditorialPost>> list({String? state}) async {
    final response = await _request(() => _dio.get<dynamic>(
          '/v1/admin/feed/review',
          options: _authorized(),
          queryParameters: state == null ? null : {'state': state},
        ));
    final records = response.data as List<dynamic>;
    return records
        .map((value) => StatusEditorialPost.fromJson(
            Map<String, dynamic>.from(value as Map)))
        .toList(growable: false);
  }

  Future<StatusEditorialPost> createTextDraft({
    required String authorMasanaId,
    required String body,
    required String idempotencyKey,
  }) async {
    final response = await _request(() => _dio.post<dynamic>(
          '/v1/admin/feed/drafts',
          options: _authorized(idempotencyKey),
          data: {
            'authorMasanaId': authorMasanaId,
            'kind': 'text',
            'body': body.trim(),
          },
        ));
    return StatusEditorialPost.fromJson(
        Map<String, dynamic>.from(response.data as Map));
  }

  Future<StatusEditorialPost> editTextDraft({
    required StatusEditorialPost post,
    required String body,
    required String idempotencyKey,
  }) async {
    final response = await _request(() => _dio.patch<dynamic>(
          '/v1/admin/feed/posts/${Uri.encodeComponent(post.id)}/draft',
          options: _authorized(idempotencyKey),
          data: {
            'expectedRevision': post.revision,
            'authorMasanaId': post.authorMasanaId,
            'kind': 'text',
            'body': body.trim(),
          },
        ));
    return StatusEditorialPost.fromJson(
        Map<String, dynamic>.from(response.data as Map));
  }

  Future<StatusEditorialPost> transition(
    StatusEditorialPost post,
    String action, {
    DateTime? scheduledAt,
  }) async {
    final schedule = scheduledAt?.toUtc().toIso8601String();
    // Stable across retries of the same action/revision; no duplicate transition.
    final key = 'editorial-${post.id}-${post.revision}-$action';
    final response = await _request(() => _dio.post<dynamic>(
          '/v1/admin/feed/posts/${Uri.encodeComponent(post.id)}/transition',
          options: _authorized(key),
          data: {
            'action': action,
            'expectedRevision': post.revision,
            if (schedule != null) 'scheduledAt': schedule,
          },
        ));
    return StatusEditorialPost.fromJson(
        Map<String, dynamic>.from(response.data as Map));
  }
}

class StatusEditorialException implements Exception {
  const StatusEditorialException(this.message);
  final String message;
  @override
  String toString() => message;
}

class StatusEditorialPost {
  const StatusEditorialPost({
    required this.id,
    required this.authorMasanaId,
    required this.kind,
    required this.body,
    required this.state,
    required this.revision,
    required this.scheduledAt,
  });

  final String id;
  final String authorMasanaId;
  final String kind;
  final String body;
  final String state;
  final int revision;
  final DateTime? scheduledAt;

  factory StatusEditorialPost.fromJson(Map<String, dynamic> json) =>
      StatusEditorialPost(
        id: json['id'] as String,
        authorMasanaId: json['authorMasanaId'] as String,
        kind: json['kind'] as String,
        body: json['body'] as String,
        state: json['state'] as String,
        revision: json['revision'] as int,
        scheduledAt: json['scheduledAt'] == null
            ? null
            : DateTime.tryParse(json['scheduledAt'] as String),
      );
}
