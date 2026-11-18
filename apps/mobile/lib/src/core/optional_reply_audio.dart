import 'dart:convert';
import 'dart:typed_data';

/// A malformed optional speech attachment must not discard a valid text reply.
Uint8List? decodeOptionalReplyAudio(Object? encoded) {
  if (encoded is! String || encoded.isEmpty || encoded.length > 11184812) return null;
  try {
    final bytes = base64Decode(encoded);
    return bytes.isEmpty || bytes.length > 8 * 1024 * 1024 ? null : bytes;
  } on FormatException {
    return null;
  }
}
