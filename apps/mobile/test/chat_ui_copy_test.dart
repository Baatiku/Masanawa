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
      delegates: const [AppLocalizations.delegate],
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
}
