import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:dio/dio.dart';

import '../core/network/api_client.dart';

abstract interface class ConversationArchiveSource {
  Future<Map<String, dynamic>> page(String? cursor);
  Future<List<dynamic>> media(String characterId, List<String> requestIds);
  Future<Map<String, dynamic>?> download(String characterId, String requestId, int slot);
}

/// Uses only the authenticated Gateway connection; never follows media URLs.
class GatewayConversationArchiveSource implements ConversationArchiveSource {
  GatewayConversationArchiveSource(this.api);
  final ApiClient api;
  @override
  Future<Map<String, dynamic>> page(String? cursor) =>
      api.exportConversationPage(cursor: cursor);
  @override
  Future<List<dynamic>> media(String characterId, List<String> requestIds) async {
    final response = await api.dio.post<dynamic>('/agent/media/list',
        data: {'characterId': characterId, 'requestIds': requestIds},
        options: Options(followRedirects: false));
    final body = response.data;
    if (body is! Map || body['items'] is! List) {
      throw const FormatException('Invalid media manifest');
    }
    return body['items'] as List;
  }
  @override
  Future<Map<String, dynamic>?> download(String characterId, String requestId, int slot) async {
    try {
      final response = await api.dio.get<dynamic>(
          '/agent/media/${Uri.encodeComponent(requestId)}/$slot',
          queryParameters: {'characterId': characterId},
          options: Options(followRedirects: false));
      if (response.data is! Map) throw const FormatException('Invalid media');
      return (response.data as Map).cast<String, dynamic>();
    } on DioException catch (error) {
      if (error.response?.statusCode == 404 || error.response?.statusCode == 410) return null;
      rethrow;
    }
  }
}

class ConversationArchiveResult {
  const ConversationArchiveResult(this.file, this.mediaCount, this.unavailableCount);
  final File file;
  final int mediaCount, unavailableCount;
}

/// Owns a unique temporary directory. Deletes every output on failure. The
/// caller deletes the directory after the share operation has completed.
Future<ConversationArchiveResult> createConversationArchive({
  required Directory directory,
  required ConversationArchiveSource source,
  required bool Function() isCurrent,
  void Function(int messages, int media)? onProgress,
}) async {
  const maxBytes = 128 * 1024 * 1024;
  const maxFileBytes = 8 * 1024 * 1024;
  const maxMessages = 100000;
  const maxMedia = 4096;
  final encoder = ZipFileEncoder();
  var opened = false;
  var mediaCount = 0, mediaItems = 0, unavailable = 0, byteCount = 0, textBytes = 0;
  final messages = <Map<String, dynamic>>[];
  final seen = <String>{}, cursors = <String>{};
  void check() {
    if (!isCurrent()) throw StateError('Account changed');
  }
  String id(dynamic value) {
    if (value is! String || value.isEmpty || value.length > 160) {
      throw const FormatException('Invalid conversation identifier');
    }
    return value;
  }
  try {
    check();
    await directory.create(recursive: true);
    final zip = File('${directory.path}/masanawa-conversations.zip');
    encoder.create(zip.path, level: ZipFileEncoder.store);
    opened = true;
    String? cursor;
    var pages = 0;
    do {
      if (++pages > 1000) throw StateError('Conversation page limit exceeded');
      check();
      final page = await source.page(cursor);
      check();
      final items = page['items'];
      if (items is! List || items.length > 200) throw const FormatException('Invalid conversation page');
      final groups = <String, List<Map<String, dynamic>>>{};
      for (final raw in items) {
        if (raw is! Map) throw const FormatException('Invalid conversation');
        final item = raw.cast<String, dynamic>();
        final character = id(item['characterId']), request = id(item['requestId']);
        if (!seen.add('$character/$request')) throw const FormatException('Repeated conversation');
        if (seen.length > maxMessages) throw StateError('Conversation export exceeds 100000 messages');
        textBytes += utf8.encode(jsonEncode(item)).length;
        if (textBytes > 16 * 1024 * 1024) throw StateError('Conversation text exceeds 16 MiB');
        final entry = <String, dynamic>{...item, 'media': <Map<String, dynamic>>[]};
        messages.add(entry);
        groups.putIfAbsent(character, () => []).add(entry);
      }
      for (final group in groups.entries) {
        for (var start = 0; start < group.value.length; start += 100) {
          final batch = group.value.skip(start).take(100).toList();
          final byRequest = {for (final message in batch) message['requestId'] as String: message};
          check();
          final media = await source.media(group.key, byRequest.keys.toList());
          check();
          if (media.length > batch.length * 9) throw const FormatException('Invalid media count');
          final slots = <String>{};
          for (final raw in media) {
            if (raw is! Map) throw const FormatException('Invalid attachment');
            final request = id(raw['requestId']);
            final slot = raw['slot'], size = raw['sizeBytes'];
            if (!byRequest.containsKey(request) || slot is! int || slot < 0 || slot > 8 ||
                size is! int || size < 1 || !slots.add('$request/$slot')) {
              throw const FormatException('Invalid attachment ownership or size');
            }
            if (++mediaItems > maxMedia) {
              byRequest[request]!['mediaAvailability'] = 'export_item_limit';
              byRequest[request]!['omittedMediaCount'] =
                  (byRequest[request]!['omittedMediaCount'] as int? ?? 0) + 1;
              unavailable++;
              continue;
            }
            if (raw['mimeType'] is! String || (raw['mimeType'] as String).length > 160 ||
                raw['kind'] is! String ||
                (raw['name'] != null && (raw['name'] is! String || (raw['name'] as String).length > 240))) {
              throw const FormatException('Invalid media metadata');
            }
            final reference = <String, dynamic>{
              'slot': slot, 'kind': raw['kind'], 'mimeType': raw['mimeType'],
              'originalName': raw['name'], 'sizeBytes': size,
            };
            (byRequest[request]!['media'] as List).add(reference);
            if (size > maxFileBytes || mediaCount >= maxMedia ||
                byteCount + size + textBytes > maxBytes) {
              reference['status'] = 'export_limit';
              unavailable++;
              continue;
            }
            check();
            final body = await source.download(group.key, request, slot);
            check();
            if (body == null) {
              reference['status'] = 'expired_or_missing';
              unavailable++;
              continue;
            }
            final encoded = body['dataBase64'];
            if (encoded is! String || encoded.length > 11200000 ||
                body['sizeBytes'] != size || body['mimeType'] != raw['mimeType']) {
              throw const FormatException('Invalid attachment payload');
            }
            final bytes = base64Decode(encoded);
            if (bytes.length != size) throw const FormatException('Attachment size mismatch');
            // Generated names are independent of all provider-supplied paths.
            final extension = const {
              'image/jpeg': 'jpg', 'image/png': 'png', 'image/webp': 'webp',
              'image/gif': 'gif', 'audio/ogg': 'ogg', 'audio/mpeg': 'mp3',
              'audio/mp4': 'm4a', 'audio/m4a': 'm4a', 'audio/x-m4a': 'm4a',
              'audio/aac': 'aac', 'audio/webm': 'webm', 'audio/wav': 'wav',
              'video/mp4': 'mp4',
              'application/pdf': 'pdf', 'text/plain': 'txt',
            }[(raw['mimeType'] as String).split(';').first.toLowerCase()] ?? 'bin';
            final path = 'media/attachment-${mediaCount + 1}.$extension';
            final file = File('${directory.path}/attachment.tmp');
            await file.writeAsBytes(bytes, flush: true);
            check();
            await encoder.addFile(file, path, ZipFileEncoder.store);
            await file.delete();
            byteCount += size;
            mediaCount++;
            reference.addAll({'status': 'included', 'path': path});
          }
          for (final message in batch) {
            if ((message['media'] as List).isEmpty && message['mediaAvailability'] == null &&
                message['kind'] != 'text') {
              message['mediaAvailability'] = 'not_retained_or_expired';
              unavailable++;
            }
          }
        }
      }
      onProgress?.call(messages.length, mediaCount);
      final next = page['nextCursor'];
      if (next != null && (next is! String || next.isEmpty || !cursors.add(next))) {
        throw const FormatException('Invalid or repeated export cursor');
      }
      cursor = next as String?;
    } while (cursor != null);
    check();
    final manifest = utf8.encode(jsonEncode({
      'format': 'masanawa-conversations-v2',
      'exportedAt': DateTime.now().toUtc().toIso8601String(),
      'mediaFilesIncluded': mediaCount > 0,
      'mediaCount': mediaCount, 'unavailableCount': unavailable,
      'limits': {'totalBytes': maxBytes, 'fileBytes': maxFileBytes, 'mediaItems': maxMedia, 'messages': maxMessages},
      'notice': 'Includes available privately retained attachments. Expired or missing files cannot be recovered. Original names and MIME types are in each media reference.',
      'messages': messages,
    }));
    if (byteCount + manifest.length > maxBytes) throw StateError('Archive exceeds 128 MiB');
    final file = File('${directory.path}/manifest.tmp');
    await file.writeAsBytes(manifest, flush: true);
    await encoder.addFile(file, 'conversations.json', ZipFileEncoder.store);
    await file.delete();
    await encoder.close();
    opened = false;
    check();
    if (await zip.length() > maxBytes) throw StateError('ZIP exceeds 128 MiB');
    check();
    return ConversationArchiveResult(zip, mediaCount, unavailable);
  } catch (_) {
    if (opened) { try { await encoder.close(); } catch (_) {} }
    if (await directory.exists()) await directory.delete(recursive: true);
    rethrow;
  }
}
