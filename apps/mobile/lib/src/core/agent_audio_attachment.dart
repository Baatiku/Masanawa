import 'dart:typed_data';

/// Audio returned by the model is not necessarily a WAV container. Raw Gemini
/// PCM is wrapped; already encoded provider audio is stored with its actual
/// container extension so Android's decoder is not asked to decode ADTS as MP4.
class AgentAudioAttachment {
  const AgentAudioAttachment({
    required this.bytes,
    required this.extension,
    required this.isWav,
  });

  final Uint8List bytes;
  final String extension;
  final bool isWav;
}

bool _hasAscii(Uint8List bytes, int offset, String signature) {
  if (bytes.length < offset + signature.length) return false;
  for (var i = 0; i < signature.length; i++) {
    if (bytes[offset + i] != signature.codeUnitAt(i)) return false;
  }
  return true;
}

/// An AAC ADTS frame requires the 12 sync bits, MPEG layer 0 and a valid
/// sampling-frequency index. This intentionally does not guess the codec of
/// unlabelled raw PCM (sample rate and channel count cannot be inferred).
bool _isAdts(Uint8List bytes) =>
    bytes.length >= 7 &&
    bytes[0] == 0xff &&
    (bytes[1] & 0xf6) == 0xf0 &&
    ((bytes[2] >> 2) & 0x0f) != 0x0f;

bool _isMp4(Uint8List bytes) =>
    bytes.length >= 12 && _hasAscii(bytes, 4, 'ftyp');

bool _isWav(Uint8List bytes) =>
    bytes.length >= 44 &&
    _hasAscii(bytes, 0, 'RIFF') &&
    _hasAscii(bytes, 8, 'WAVE');

/// Only inspect recognizable containers. If MIME is absent/ambiguous, decoding
/// a definite encoded container is safer than dropping playable audio; unknown
/// bytes still fail closed and the calling chat preserves its successful text.
String? _sniffEncoded(Uint8List bytes) {
  if (_isWav(bytes)) return 'wav';
  if (_isMp4(bytes)) return 'm4a';
  if (_isAdts(bytes)) return 'aac';
  if (_hasAscii(bytes, 0, 'ID3') ||
      (bytes.length >= 4 &&
          bytes[0] == 0xff &&
          (bytes[1] & 0xe0) == 0xe0 &&
          (bytes[1] & 0x06) != 0 &&
          (bytes[2] & 0xf0) != 0xf0)) {
    return 'mp3';
  }
  if (_hasAscii(bytes, 0, 'OggS')) return 'ogg';
  if (bytes.length >= 4 &&
      bytes[0] == 0x1a &&
      bytes[1] == 0x45 &&
      bytes[2] == 0xdf &&
      bytes[3] == 0xa3) {
    return 'webm';
  }
  return null;
}

AgentAudioAttachment prepareAgentAudioAttachment(
  Uint8List bytes, {
  required String? mimeType,
}) {
  if (bytes.isEmpty) throw const FormatException('Empty agent audio');
  final mime = mimeType?.trim().toLowerCase() ?? '';
  final mediaType = mime.split(';').first.trim();

  if (mediaType == 'audio/pcm' || mediaType == 'audio/l16') {
    if (bytes.length.isOdd || bytes.length > 32 * 1024 * 1024) {
      throw const FormatException('Invalid PCM16 voice response');
    }
    final rate = RegExp(
      r'(?:^|;)\s*rate=(\d+)',
      caseSensitive: false,
    ).firstMatch(mime);
    final requested = int.tryParse(rate?.group(1) ?? '') ?? 24000;
    final sampleRate = requested >= 8000 && requested <= 96000
        ? requested
        : 24000;

    final wav = Uint8List(44 + bytes.length);
    wav.setRange(0, 4, 'RIFF'.codeUnits);
    wav.setRange(8, 12, 'WAVE'.codeUnits);
    wav.setRange(12, 16, 'fmt '.codeUnits);
    wav.setRange(36, 40, 'data'.codeUnits);
    final header = ByteData.sublistView(wav);
    header.setUint32(4, 36 + bytes.length, Endian.little);
    header.setUint32(16, 16, Endian.little);
    header.setUint16(20, 1, Endian.little);
    header.setUint16(22, 1, Endian.little);
    header.setUint32(24, sampleRate, Endian.little);
    header.setUint32(28, sampleRate * 2, Endian.little);
    header.setUint16(32, 2, Endian.little);
    header.setUint16(34, 16, Endian.little);
    header.setUint32(40, bytes.length, Endian.little);
    wav.setRange(44, wav.length, bytes);
    return AgentAudioAttachment(bytes: wav, extension: 'wav', isWav: true);
  }

  final detected = _sniffEncoded(bytes);
  if (mediaType == 'audio/wav' || mediaType == 'audio/x-wav') {
    if (detected != 'wav') {
      throw const FormatException('Invalid WAV agent audio');
    }
    return AgentAudioAttachment(bytes: bytes, extension: 'wav', isWav: true);
  }
  final extension = switch (mediaType) {
    'audio/mpeg' || 'audio/mp3' => detected == 'mp3' ? 'mp3' : null,
    'audio/m4a' ||
    'audio/x-m4a' ||
    'audio/mp4' => detected == 'm4a' ? 'm4a' : null,
    // Some providers label ADTS AAC and MP4-wrapped AAC identically.
    'audio/aac' => detected == 'aac' || detected == 'm4a' ? detected : null,
    'audio/ogg' => detected == 'ogg' ? 'ogg' : null,
    'audio/webm' => detected == 'webm' ? 'webm' : null,
    '' || 'application/octet-stream' => detected,
    _ => null,
  };
  if (extension == null) {
    throw FormatException(
      'Unsupported or mismatched agent audio format: $mediaType',
    );
  }
  return AgentAudioAttachment(bytes: bytes, extension: extension, isWav: extension == 'wav');
}
