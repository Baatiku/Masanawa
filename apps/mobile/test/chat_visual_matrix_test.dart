import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/ui/components/masanawa_conversation_tile.dart';

/// Opt-in first-party baseline capture, not a claim of pixel parity with a
/// third-party application. Normal CI verifies the same responsive matrix;
/// the capture workflow publishes PNGs for reviewer/reference comparison.
const captureChatGoldens = bool.fromEnvironment('CHAT_CAPTURE_GOLDENS');

class _FallbackMaterialDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  const _FallbackMaterialDelegate();
  @override bool isSupported(Locale locale) => true;
  @override Future<MaterialLocalizations> load(Locale locale) async =>
      const DefaultMaterialLocalizations();
  @override bool shouldReload(covariant _FallbackMaterialDelegate old) => false;
}


class _ChatVisualCase {
  const _ChatVisualCase(this.id, this.width, this.brightness,
      this.textScale, this.direction, {this.height = 740, this.locale = 'en'});
  final String id;
  final double width;
  final double height;
  final String locale;
  final Brightness brightness;
  final double textScale;
  final TextDirection direction;
}

void main() {
  const cases = <_ChatVisualCase>[
    _ChatVisualCase('phone_320_light', 320, Brightness.light, 1, TextDirection.ltr),
    _ChatVisualCase('phone_390_light', 390, Brightness.light, 1, TextDirection.ltr),
    _ChatVisualCase('phone_390_dark', 390, Brightness.dark, 1, TextDirection.ltr),
    _ChatVisualCase('phone_320_large_type', 320, Brightness.light, 2, TextDirection.ltr),
    _ChatVisualCase('phone_390_large_type', 390, Brightness.dark, 2, TextDirection.ltr),
    _ChatVisualCase('phone_360_rtl', 360, Brightness.light, 1, TextDirection.rtl),
    _ChatVisualCase('phone_320_rtl_large_type', 320, Brightness.dark, 2, TextDirection.rtl),
    _ChatVisualCase('phone_430_light', 430, Brightness.light, 1, TextDirection.ltr),
    _ChatVisualCase('phone_430_dark', 430, Brightness.dark, 1, TextDirection.ltr),
    _ChatVisualCase('phone_360_hausa', 360, Brightness.light, 1, TextDirection.ltr, locale: 'ha'),
    _ChatVisualCase('phone_360_arabic', 360, Brightness.light, 1, TextDirection.rtl, locale: 'ar'),
    _ChatVisualCase('landscape_640', 640, Brightness.light, 1, TextDirection.ltr, height: 360),
  ];

  for (final sample in cases) {
    testWidgets('Chats visual matrix ${sample.id} has no layout error',
        (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = Size(sample.width, sample.height);
      addTearDown(() {
        tester.view.resetDevicePixelRatio();
        tester.view.resetPhysicalSize();
      });

      await tester.pumpWidget(MaterialApp(
        theme: buildMasanawaTheme(brightness: sample.brightness),
        builder: (context, child) => Localizations.override(
          context: context,
          locale: Locale(sample.locale),
          delegates: const [_FallbackMaterialDelegate()],
          child: child ?? const SizedBox.shrink(),
        ),
        home: MediaQuery(
          data: MediaQueryData(
            size: Size(sample.width, sample.height),
            textScaler: TextScaler.linear(sample.textScale),
          ),
          child: Directionality(
            textDirection: sample.direction,
            child: Scaffold(
              body: RepaintBoundary(
                key: const ValueKey('chats-visual-surface'),
                child: ListView(children: [
                  MasanawaConversationTile(
                    avatar: const CircleAvatar(radius: 24, child: Text('M')),
                    name: 'Masana · Very long conversation display name',
                    preview: const Text(
                      'A useful response with a long preview that wraps at narrow widths',
                      maxLines: 2, overflow: TextOverflow.ellipsis),
                    time: 'Sat 10:45 PM',
                    unread: 125,
                    pinned: true,
                    actionIcon: Icons.more_horiz_rounded,
                    actionTooltip: 'Conversation options',
                    onAction: () {},
                    onTap: () {},
                  ),
                  MasanawaConversationTile(
                    avatar: const CircleAvatar(radius: 24, child: Text('A')),
                    name: 'AI conversation',
                    preview: const Text('Draft: a short message'),
                    time: 'Yesterday',
                    unread: 0,
                    pinned: false,
                    onTap: () {},
                  ),
                ]),
              ),
            ),
          ),
        ),
      ));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      expect(find.text('AI conversation'), findsOneWidget);
      expect(find.text('125').evaluate().isEmpty, isTrue);
      expect(find.text('99+'), findsOneWidget);
      if (captureChatGoldens) {
        await expectLater(
          find.byKey(const ValueKey('chats-visual-surface')),
          matchesGoldenFile('goldens/chat_matrix/${sample.id}.png'),
        );
      }
    });
  }
}
