/// A user-started, finite snapshot of eligible notes. Restoring or refreshing
/// history cannot start a sequence or append new notes to one already playing.
class VoiceNoteSequence {
  int _generation = 0;
  List<String> _notes = const [];
  int _index = -1;

  String? get current => _index < 0 ? null : _notes[_index];

  int? start(String note, Iterable<String> orderedEligible, {required bool enabled}) {
    stop();
    if (!enabled) return null;
    _notes = List.unmodifiable(orderedEligible.toSet());
    _index = _notes.indexOf(note);
    if (_index < 0) {
      _notes = const [];
      return null;
    }
    return _generation;
  }

  bool isCurrent(String note, int? generation) =>
      generation != null && generation == _generation && current == note;

  String? complete(String note, int? generation, {required bool allowed}) {
    if (!isCurrent(note, generation)) return null;
    if (!allowed || _index + 1 >= _notes.length) {
      stop();
      return null;
    }
    return _notes[++_index];
  }

  void stop() {
    _generation++;
    _index = -1;
    _notes = const [];
  }
}
