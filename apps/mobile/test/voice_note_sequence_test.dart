import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/voice/voice_note_sequence.dart';

void main() {
  test('three chronological notes advance once from a user-started snapshot', () {
    final sequence = VoiceNoteSequence();
    expect(sequence.complete('one', null, allowed: true), isNull);
    final token = sequence.start('one', ['one', 'two', 'three'], enabled: true);
    expect(sequence.complete('one', token, allowed: true), 'two');
    expect(sequence.complete('one', token, allowed: true), isNull);
    expect(sequence.current, 'two');
    expect(sequence.complete('two', token, allowed: true), 'three');
    expect(sequence.complete('three', token, allowed: true), isNull);
    expect(sequence.current, isNull);
  });
  test('starting in the middle never replays earlier notes or later additions', () {
    final notes = ['one', 'two', 'three'];
    final sequence = VoiceNoteSequence();
    final token = sequence.start('two', notes, enabled: true);
    notes.add('newly restored');
    expect(sequence.complete('two', token, allowed: true), 'three');
    expect(sequence.complete('three', token, allowed: true), isNull);
  });
  test('manual interruption invalidates a completion already in flight', () {
    final sequence = VoiceNoteSequence();
    final old = sequence.start('one', ['one', 'two'], enabled: true);
    sequence.stop();
    final next = sequence.start('one', ['one', 'three'], enabled: true);
    expect(sequence.complete('one', old, allowed: true), isNull);
    expect(sequence.complete('one', next, allowed: true), 'three');
  });
  test('opt-out and lost call, route or account eligibility stop the sequence', () {
    final sequence = VoiceNoteSequence();
    expect(sequence.start('one', ['one', 'two'], enabled: false), isNull);
    final token = sequence.start('one', ['one', 'two'], enabled: true);
    expect(sequence.complete('one', token, allowed: false), isNull);
    expect(sequence.complete('one', token, allowed: true), isNull);
    expect(sequence.current, isNull);
  });
  test('missing and duplicate note identifiers cannot cause looping', () {
    final sequence = VoiceNoteSequence();
    expect(sequence.start('missing', ['one'], enabled: true), isNull);
    final token = sequence.start('one', ['one', 'one', 'two'], enabled: true);
    expect(sequence.complete('one', token, allowed: true), 'two');
    expect(sequence.complete('two', token, allowed: true), isNull);
  });
}
