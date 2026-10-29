import 'dart:io';
import 'package:flutter/services.dart';

/// Pinned Apache-licensed test fonts: real glyphs/pixels, not Ahem rectangles.
/// These fixtures are outside application assets and never increase APK size.
Future<void> loadVisualTestFonts() async {
  for (final entry in {
    'Roboto': 'Roboto-Regular.ttf',
    'MaterialIcons': 'MaterialIcons-Regular.otf',
  }.entries) {
    final bytes = await File(
      'test/fixtures/visual_fonts/${entry.value}',
    ).readAsBytes();
    final loader = FontLoader(entry.key)
      ..addFont(Future.value(ByteData.sublistView(bytes)));
    await loader.load();
  }
}
