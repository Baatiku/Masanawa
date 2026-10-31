import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/l10n/app_localizations.dart';
import 'package:masanawa/src/screens/chat/chat_ui_copy.dart';

void main() {
  Future<void> check(WidgetTester tester, String language,
      String expected, String expectedArchive) async {
    // The app's own Hausa catalog is supported; Flutter's built-in Material
    // translations do not cover every language. Test the Chats copy directly
    // without claiming a framework Material locale that is unavailable.
    await tester.pumpWidget(Localizations(
      locale: Locale(language),
      delegates: const [
        AppLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      child: Builder(builder: (context) => Directionality(
        textDirection: language == 'ar' ? TextDirection.rtl : TextDirection.ltr,
        child: DefaultTextStyle(style: const TextStyle(), child: Column(children: [
          Text(ChatUiCopy.of(context, 'Search conversations')),
          Text(ChatUiCopy.of(context, 'Archived chats')),
        ])),
      )),
    ));
    await tester.pumpAndSettle();
    expect(find.text(expected), findsOneWidget);
    expect(find.text(expectedArchive), findsOneWidget);
    expect(tester.takeException(), isNull);
  }

  testWidgets('Chats English fallback stays stable', (tester) => check(
      tester, 'en', 'Search conversations', 'Archived chats'));

  testWidgets('Chats Hausa navigation and search copy', (tester) => check(
      tester, 'ha', 'Nemo hirarraki', 'Hirarrakin da aka adana'));

  testWidgets('Chats Arabic navigation and search copy in RTL', (tester) => check(
      tester, 'ar', 'البحث في المحادثات', 'الدردشات المؤرشفة'));

  test('Core Chats localization call sites have Hausa and Arabic keys', () {
    final prefix = Directory('lib/src/screens/chat').existsSync()
        ? 'lib/src/screens/chat'
        : 'apps/mobile/lib/src/screens/chat';
    final expression = RegExp(
      r"ChatUiCopy\.of\(\s*(?:context|sheetContext|dialogContext),\s*'([^']+)'",
    );
    var checked = 0;
    for (final name in [
      'ai_chat_screen.dart',
      'chat_list_screen.dart',
      'masana_list_screen.dart',
      'unified_chat_inbox.dart',
    ]) {
      final source = File('$prefix/$name').readAsStringSync();
      for (final match in expression.allMatches(source)) {
        final key = match.group(1)!;
        expect(ChatUiCopy.hasTranslation('ha', key), isTrue,
            reason: '$name lacks Hausa for $key');
        expect(ChatUiCopy.hasTranslation('ar', key), isTrue,
            reason: '$name lacks Arabic for $key');
        checked++;
      }
    }
    expect(checked, greaterThan(100));
  });

}
