import 'dart:convert';

import 'models.dart';

/// Stateful, bounded Server-Sent Events frame parser for a single authorized
/// Human Chat stream. Never treat a `data:` line as a complete event: a frame
/// commits only at its blank-line boundary (comments/heartbeats are ignored).
class HumanEventFrameDecoder {
  static const int maxFrameCharacters = 128 * 1024;
  static const int maxSequence = 9007199254740991; // JS safe integer

  final _data = <String>[];
  String? _id;
  int _characters = 0;

  void _reset() {
    _data.clear();
    _id = null;
    _characters = 0;
  }

  /// Returns null for a partial frame, comment, or empty heartbeat. Throwing a
  /// FormatException deliberately closes this stream so its owner can backfill
  /// from its *last acknowledged* cursor instead of skipping a corrupt event.
  HumanJson? accept(String line) {
    if (line.isEmpty) {
      if (_data.isEmpty) {
        _reset();
        return null;
      }
      try {
        final payload = _data.join('\n');
        // Parse only an assembled complete JSON frame.
        final decoded = parseHumanEventJson(payload);
        final bodySequence = eventSequence(decoded['sequence']);
        if (bodySequence == null) {
          throw const FormatException('Human event has invalid sequence');
        }
        if (_id != null && _id!.isNotEmpty) {
          final idSequence = eventSequence(_id);
          if (idSequence == null || idSequence != bodySequence) {
            throw const FormatException('Human event id and sequence disagree');
          }
        }
        return decoded;
      } finally {
        _reset();
      }
    }
    if (line.startsWith(':')) return null; // SSE heartbeat/comment.

    final separator = line.indexOf(':');
    final key = separator < 0 ? line : line.substring(0, separator);
    var value = separator < 0 ? '' : line.substring(separator + 1);
    if (value.startsWith(' ')) value = value.substring(1);

    if (key == 'data') {
      _characters += value.length;
      if (_characters > maxFrameCharacters) {
        _reset();
        throw const FormatException('Human event frame exceeds size limit');
      }
      _data.add(value);
    } else if (key == 'id') {
      if (value.length > 32 || value.contains('\u0000')) {
        _reset();
        throw const FormatException('Invalid human event id');
      }
      _id = value;
    }
    // The event/retry fields do not have authority to inject another cursor.
    return null;
  }

  /// Canonical per-viewer human_event identifiers are positive (or zero for
  /// an initial query) and must survive JavaScript/PostgreSQL round trips.
  static int? eventSequence(Object? raw) {
    int? n;
    if (raw is int) {
      n = raw;
    } else if (raw is String && RegExp(r'^(0|[1-9][0-9]*)$').hasMatch(raw)) {
      n = int.tryParse(raw);
    }
    if (n == null || n < 0 || n > maxSequence) return null;
    return n;
  }
}

/// Isolated parser gate: never allow scalar/array JSON, or a partial map, to
/// masquerade as a valid event that advances a private conversation cursor.
HumanJson parseHumanEventJson(String raw) {
  final Object? result;
  try {
    result = jsonDecode(raw);
  } on FormatException {
    rethrow;
  }
  if (result is! Map<String, dynamic>) {
    throw const FormatException('Invalid human event payload');
  }
  return result;
}
