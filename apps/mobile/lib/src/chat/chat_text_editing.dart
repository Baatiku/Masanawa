import 'package:flutter/widgets.dart';

/// Platform selections use UTF-16 offsets. Edits must respect whole graphemes
/// (skin tones, flags, variation selectors and joined families), not code units.
TextEditingValue editChatText(
  TextEditingValue value, {
  String insert = '',
  bool backspace = false,
}) {
  final boundaries = <int>[0];
  for (final cluster in value.text.characters) {
    boundaries.add(boundaries.last + cluster.length);
  }
  int floor(int offset) => boundaries.lastWhere((n) => n <= offset);
  int ceil(int offset) => boundaries.firstWhere((n) => n >= offset);
  final selection = value.selection;
  final valid =
      selection.isValid &&
      selection.start <= value.text.length &&
      selection.end <= value.text.length;
  var start = valid ? floor(selection.start) : value.text.length;
  var end = valid ? ceil(selection.end) : value.text.length;
  if (valid && selection.isCollapsed) start = end;
  if (backspace && start == end && start > 0) start = floor(start - 1);
  final replacement = backspace ? '' : insert;
  return TextEditingValue(
    text: value.text.replaceRange(start, end, replacement),
    selection: TextSelection.collapsed(offset: start + replacement.length),
    composing: TextRange.empty,
  );
}

bool isEmojiOnlyChatText(String text) {
  final clusters = text.replaceAll(RegExp(r'\s'), '').characters.toList();
  if (clusters.isEmpty || clusters.length > 6) return false;
  bool base(int rune) =>
      (rune >= 0x1f000 && rune <= 0x1faff) ||
      (rune >= 0x2600 && rune <= 0x27ff) ||
      (rune >= 0x2190 && rune <= 0x21ff) ||
      const [
        0xa9,
        0xae,
        0x2122,
        0x20e3,
        0x3030,
        0x303d,
        0x3297,
        0x3299,
      ].contains(rune);
  return clusters.every(
    (cluster) =>
        cluster.runes.any(base) &&
        cluster.runes.every(
          (rune) =>
              base(rune) ||
              rune == 0x200d ||
              rune == 0xfe0f ||
              rune == 0xfe0e ||
              (cluster.contains('\u20e3') &&
                  (rune >= 0x30 && rune <= 0x39 ||
                      rune == 0x23 ||
                      rune == 0x2a)),
        ),
  );
}
