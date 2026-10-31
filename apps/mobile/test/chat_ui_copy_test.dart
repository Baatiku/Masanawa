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
      'masana_report_screen.dart',
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
    for (final name in [
      'lib/src/chat/chat_emoji_panel.dart',
      'lib/src/chat/message_parts_view.dart',
      'lib/src/chat/shell_document_view.dart',
      'lib/src/ui/components/voice_note_composer.dart',
    ]) {
      final path = File(name).existsSync() ? name : 'apps/mobile/$name';
      final source = File(path).readAsStringSync();
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

  testWidgets('Dynamic Chats sentences respect Hausa and Arabic word order', (tester) async {
    Future<String> render(String language, String template,
        Map<String, Object> values) async {
      var result = '';
      await tester.pumpWidget(Localizations(
        locale: Locale(language),
        delegates: const [AppLocalizations.delegate, DefaultWidgetsLocalizations.delegate],
        child: Builder(builder: (context) {
          result = ChatUiCopy.format(context, template, values);
          return Directionality(
            textDirection: language == 'ar' ? TextDirection.rtl : TextDirection.ltr,
            child: Text(result),
          );
        }),
      ));
      await tester.pumpAndSettle();
      return result;
    }

    expect(await render('ha', 'Jump to {count} new messages', {'count': 3}),
      'Tsallaka zuwa sabbin saƙonni 3');
    expect(await render('ar', 'Open photo {index} of {total}',
      {'index': 2, 'total': 8}), 'فتح الصورة 2 من 8');
    expect(await render('ha', 'Hide {count} messages?', {'count': 2}),
      'A ɓoye saƙonni 2?');
    expect(await render('ar', 'This Masanawa service now requires app version {version} or newer.',
      {'version': '2.1'}), 'تتطلب خدمة ماساناوا هذه الإصدار 2.1 من التطبيق أو أحدث.');
    expect(await render('en', 'Open {name} AI profile', {'name': 'Yusuf'}),
      'Open Yusuf AI profile');
    expect(await render('ha', '{percent} percent', {'percent': 65}),
      'Kashi 65 cikin ɗari');
  });

  testWidgets('Message chronology follows the active Hausa and Arabic locale', (tester) async {
    Future<void> checkClock(String language, String expected) async {
      await tester.pumpWidget(Localizations(
        locale: Locale(language),
        delegates: const [AppLocalizations.delegate, DefaultWidgetsLocalizations.delegate],
        child: Builder(builder: (context) => Directionality(
          textDirection: language == 'ar' ? TextDirection.rtl : TextDirection.ltr,
          child: Text(ChatUiCopy.clock(context, DateTime(2026, 10, 31, 13, 5))),
        )),
      ));
      await tester.pumpAndSettle();
      expect(find.text(expected), findsOneWidget);
      expect(tester.takeException(), isNull);
    }
    await checkClock('ha', '1:05 na yamma');
    await checkClock('ar', '1:05 م');
  });

  test('Sensitive and dynamic copy is translated in Hausa and Arabic', () {
    const keys = [
      'Could not keep the selected files for sending. Choose the files again or retry.',
      'Microphone access is disabled. Enable it in your phone settings to make a call.',
      'Hide {count} messages?',
      'Jump to {count} new messages',
      'Open {name} AI profile',
      'Reserve up to {mb} MB for this call. Only server-confirmed connected seconds are charged at 1 MB per started second. Ringing and setup do not cost MB. Unused reserved MB is released.',
      'Call settlement is unconfirmed. Your original call is saved for safe readback before another call.',
      'This removes local messages and drafts from this device only. Server history and backups are not erased.',
      'This removes the conversation and its local drafts from this device. It does not erase server history or guarantee deletion from device backups.',
      'Photo {index}: exceeds 8 MB',
      'No matching Masana contacts for "{query}"',
      '{count} Masana · refreshing…',
      'Uploading {percent}%',
      'Unpin server conversation',
      'Draft: {text}',
      'Voice note',
      'Historic video attachment unavailable',
      'Photo no longer available on this device.',
      'Tap to retry',
      'Playback speed {speed}×',
      '{percent} percent',
      'Not enough MB for this conversation. Add MB to continue.',
      'Your MB balance could not be verified. Check your connection and retry.',
      'Please sign in again to continue.',
      'Check your connection and try again.',
      'The voice service is unavailable right now. Please retry shortly.',
      'I couldn’t respond just now. Please try again.',
      'Microphone access is needed to make a voice call.',
      'Return to keyboard',
      'Your recent emoji will appear here',
      'Search emoji',
      'Recording paused',
      'Recording voice note',
      'Voice note ready',
      'Starting recording…',
      'Stop & review',
      'Send voice note',
      'Record again',
      'The recording could not be played. You can record again.',
      'The account changed. Record a new voice note.',
      'Could not pause recording. Stop and review it.',
      'Microphone permission was denied. Allow microphone access in Android settings to record.',
      'The recording is empty or too large. Please record again.',
      'Choose an option',
      'Processing',
      'Please complete this field',
      'This option has expired. Ask for updated options.',
      'Could not confirm this action. Ask for its status before continuing.',
      'Secure file link unavailable',
    ];
    for (final key in keys) {
      expect(ChatUiCopy.hasTranslation('ha', key), isTrue,
          reason: 'Missing Hausa for $key');
      expect(ChatUiCopy.hasTranslation('ar', key), isTrue,
          reason: 'Missing Arabic for $key');
    }
  });

}
