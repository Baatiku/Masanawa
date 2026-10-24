import 'package:flutter/material.dart';

/// Renders only authorized server-returned message text. Never searches
/// cached/deleted messages from other accounts or another conversation.
class HumanSearchHighlight extends StatelessWidget {
  const HumanSearchHighlight({
    super.key,
    required this.text,
    required this.query,
  });
  final String text;
  final String query;

  @override
  Widget build(BuildContext context) {
    final needle = query.trim().toLowerCase();
    if (needle.isEmpty || text.isEmpty) return Text(text);
    final lower = text.toLowerCase();
    final spans = <TextSpan>[];
    var offset = 0;
    while (offset < text.length) {
      final index = lower.indexOf(needle, offset);
      if (index < 0 || index + needle.length > text.length) {
        spans.add(TextSpan(text: text.substring(offset)));
        break;
      }
      if (index > offset) {
        spans.add(TextSpan(text: text.substring(offset, index)));
      }
      spans.add(TextSpan(
        text: text.substring(index, index + needle.length),
        style: TextStyle(
          color: Theme.of(context).colorScheme.onTertiaryContainer,
          backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
          fontWeight: FontWeight.w600,
        ),
      ));
      offset = index + needle.length;
    }
    return Text.rich(TextSpan(children: spans));
  }
}
