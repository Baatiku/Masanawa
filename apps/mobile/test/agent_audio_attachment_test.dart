import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/agent_audio_attachment.dart';

void main() {
  test('Gemini PCM16 24 kHz is wrapped in a valid little-endian mono WAV', () {
    final pcm = Uint8List.fromList([0, 0, 255, 127, 0, 128, 13, 0]);
    final playable = prepareAgentAudioAttachment(
      pcm,
      mimeType: 'audio/L16;rate=24000',
    );
    expect(playable.extension, 'wav');
    expect(playable.isWav, isTrue);
    expect(playable.bytes.length, 52);
    expect(String.fromCharCodes(playable.bytes.sublist(0, 4)), 'RIFF');
    expect(String.fromCharCodes(playable.bytes.sublist(8, 12)), 'WAVE');
    expect(String.fromCharCodes(playable.bytes.sublist(12, 16)), 'fmt ');
    expect(String.fromCharCodes(playable.bytes.sublist(36, 40)), 'data');
    final header = ByteData.sublistView(playable.bytes);
    expect(header.getUint32(4, Endian.little), 44);
    expect(header.getUint16(20, Endian.little), 1);
    expect(header.getUint16(22, Endian.little), 1);
    expect(header.getUint32(24, Endian.little), 24000);
    expect(header.getUint32(28, Endian.little), 48000);
    expect(header.getUint16(34, Endian.little), 16);
    expect(header.getUint32(40, Endian.little), pcm.length);
    expect(playable.bytes.sublist(44), orderedEquals(pcm));
  });

  test('sample rate in provider MIME controls WAV audio playback speed', () {
    final playable = prepareAgentAudioAttachment(
      Uint8List(1600),
      mimeType: 'audio/pcm;rate=16000',
    );
    final header = ByteData.sublistView(playable.bytes);
    expect(header.getUint32(24, Endian.little), 16000);
    expect(header.getUint32(28, Endian.little), 32000);
  });

  test('already-encoded audio keeps its true file extension', () {
    final mp3 = Uint8List.fromList([73, 68, 51, 0]);
    final result = prepareAgentAudioAttachment(mp3, mimeType: 'audio/mpeg');
    expect(result.extension, 'mp3');
    expect(result.isWav, false);
    expect(identical(result.bytes, mp3), true);
    expect(
      prepareAgentAudioAttachment(
        Uint8List.fromList([0, 0, 0, 20, 102, 116, 121, 112, 109, 112, 52, 50]),
        mimeType: 'audio/mp4',
      ).extension,
      'm4a',
    );
  });

  test('ADTS AAC uses AAC extension, not MP4 container extension', () {
    final adts = Uint8List.fromList([
      0xff,
      0xf1,
      0x50,
      0x80,
      0x01,
      0x1f,
      0xfc,
      0,
      0,
    ]);
    final reply = prepareAgentAudioAttachment(adts, mimeType: 'audio/aac');
    expect(reply.extension, 'aac');
    expect(reply.isWav, isFalse);
    expect(identical(reply.bytes, adts), isTrue);
    expect(
      () => prepareAgentAudioAttachment(adts, mimeType: 'audio/mp4'),
      throwsFormatException,
    );
  });

  test('high confidence encoded content is playable without optional MIME', () {
    final bytes = Uint8List.fromList([
      0,
      0,
      0,
      16,
      102,
      116,
      121,
      112,
      77,
      52,
      65,
      32,
    ]);
    expect(prepareAgentAudioAttachment(bytes, mimeType: null).extension, 'm4a');
    expect(
      prepareAgentAudioAttachment(
        bytes,
        mimeType: 'application/octet-stream',
      ).extension,
      'm4a',
    );
  });

  test('MP3 frames without an ID3 tag remain playable', () {
    final frame = Uint8List.fromList([0xff, 0xfb, 0x90, 0x64, 0, 0, 0, 0]);
    expect(
      prepareAgentAudioAttachment(frame, mimeType: 'audio/mpeg').extension,
      'mp3',
    );
  });

  test('signature-sniffed WAV retains waveform-capable WAV flag', () {
    final bytes = Uint8List(44);
    bytes.setRange(0, 4, 'RIFF'.codeUnits);
    bytes.setRange(8, 12, 'WAVE'.codeUnits);
    final result = prepareAgentAudioAttachment(bytes, mimeType: null);
    expect(result.extension, 'wav');
    expect(result.isWav, isTrue);
  });

  test('container mismatches never create bogus playback files', () {
    final invalid = Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8]);
    for (final mime in [
      'audio/aac',
      'audio/mp4',
      'audio/ogg',
      'audio/webm',
      'audio/mpeg',
      null,
    ]) {
      expect(
        () => prepareAgentAudioAttachment(invalid, mimeType: mime),
        throwsFormatException,
      );
    }
    // PCM without a MIME cannot be assigned an arbitrary sample rate.
    expect(
      () => prepareAgentAudioAttachment(Uint8List(480), mimeType: null),
      throwsFormatException,
    );
  });

  test('rejects incomplete PCM samples and falsely labelled WAV files', () {
    expect(
      () => prepareAgentAudioAttachment(
        Uint8List.fromList([0, 1, 2]),
        mimeType: 'audio/pcm;rate=24000',
      ),
      throwsFormatException,
    );
    expect(
      () => prepareAgentAudioAttachment(Uint8List(48), mimeType: 'audio/wav'),
      throwsFormatException,
    );
    expect(
      () =>
          prepareAgentAudioAttachment(Uint8List.fromList([1]), mimeType: null),
      throwsFormatException,
    );
  });
}
