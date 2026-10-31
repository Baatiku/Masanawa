import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:record/record.dart';
import 'package:masanawa/l10n/app_localizations.dart';
import 'package:masanawa/src/chat/chat_emoji_panel.dart';
import 'package:masanawa/src/chat/message_parts.dart';
import 'package:masanawa/src/chat/message_parts_view.dart';
import 'package:masanawa/src/chat/shell_document.dart';
import 'package:masanawa/src/chat/shell_document_view.dart';
import 'package:masanawa/src/core/voice_note_recorder.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/ui/components/voice_note_composer.dart';

class _MaterialFallback extends LocalizationsDelegate<MaterialLocalizations> {
  const _MaterialFallback();
  @override bool isSupported(Locale locale) => true;
  @override Future<MaterialLocalizations> load(Locale locale) async =>
      const DefaultMaterialLocalizations();
  @override bool shouldReload(covariant _MaterialFallback old) => false;
}

Widget _host(String language, Widget content) => MaterialApp(
  theme: buildMasanawaTheme(brightness: Brightness.light),
  builder: (context, child) => Localizations.override(
    context: context,
    locale: Locale(language),
    delegates: const [AppLocalizations.delegate, _MaterialFallback()],
    child: Directionality(
      textDirection: language == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      child: child ?? const SizedBox.shrink(),
    ),
  ),
  home: Scaffold(body: content),
);

class _NativeRecorder extends Mock implements AudioRecorder {}
class _PreviewPlayer extends Mock implements AudioPlayer {}
class _Recorder extends VoiceNoteRecorder {
  _Recorder() : super(recorder: _NativeRecorder());
  @override Future<void> start({bool Function()? isOwnerCurrent}) async {
    state = VoiceNoteState.recording;
    notifyListeners();
  }
  @override Future<ChatAttachment?> stop() async {
    state = VoiceNoteState.ready;
    note = const ChatAttachment(kind: 'voice', path: '/private/voice.m4a');
    notifyListeners();
    return note;
  }
}

void main() {
  testWidgets('Hausa voice recording and preview controls are translated', (tester) async {
    final recorder = _Recorder();
    final player = _PreviewPlayer();
    when(() => player.dispose()).thenAnswer((_) async {});
    await tester.pumpWidget(_host('ha', VoiceNoteComposer(
      recorder: recorder, previewPlayer: player,
      isOwnerCurrent: () => true, onSend: (_) async => true,
    )));
    await tester.pumpAndSettle();
    expect(find.text('Ana rikodin saƙon murya'), findsOneWidget);
    await tester.tap(find.text('Tsayar da duba rikodin'));
    await tester.pumpAndSettle();
    expect(find.text('An shirya saƙon murya'), findsOneWidget);
    expect(find.text('Kunna saƙon murya'), findsOneWidget);
    expect(find.text('Aika saƙon murya'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Arabic large-text voice controls remain usable at 320dp', (tester) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(320, 800);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);
    final recorder = _Recorder();
    final player = _PreviewPlayer();
    when(() => player.dispose()).thenAnswer((_) async {});
    await tester.pumpWidget(_host('ar', MediaQuery(
      data: const MediaQueryData(textScaler: TextScaler.linear(2)),
      child: VoiceNoteComposer(recorder: recorder, previewPlayer: player,
        isOwnerCurrent: () => true, onSend: (_) async => true),
    )));
    await tester.pumpAndSettle();
    expect(find.text('جارٍ تسجيل رسالة صوتية'), findsOneWidget);
    expect(find.text('إيقاف التسجيل ومراجعته'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('emoji header and return action use Arabic, not English', (tester) async {
    var returned = false;
    await tester.pumpWidget(_host('ar', ChatEmojiPanelHeader(
      onClose: () => returned = true,
    )));
    await tester.pump();
    expect(find.text('الرموز التعبيرية'), findsOneWidget);
    expect(find.byTooltip('العودة إلى لوحة المفاتيح'), findsOneWidget);
    await tester.tap(find.byTooltip('العودة إلى لوحة المفاتيح'));
    expect(returned, isTrue);
    expect(tester.takeException(), isNull);
  });

  testWidgets('rich message card does not open unsafe remote schemes', (tester) async {
    await tester.pumpWidget(_host('ar', MessagePartsView(parts: const [
      AgentMessagePart(kind: AgentMessagePartKind.file,
        file: AgentFileRef(fileId: 'file-1', name: 'report.pdf',
          previewUrl: 'file:///private/token', downloadUrl: 'javascript:alert(1)')),
    ])));
    await tester.pumpAndSettle();
    expect(find.text('رابط الملف الآمن غير متاح'), findsOneWidget);
    expect(find.byType(TextButton), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('authorized HTTPS file action and part fallback are localized', (tester) async {
    await tester.pumpWidget(_host('ha', MessagePartsView(parts: const [
      AgentMessagePart(kind: AgentMessagePartKind.work),
      AgentMessagePart(kind: AgentMessagePartKind.file,
        file: AgentFileRef(fileId: 'file-2', name: 'summary.pdf',
          downloadUrl: 'https://files.example.test/summary.pdf')),
    ])));
    await tester.pumpAndSettle();
    expect(find.text('Sabon bayanin aiki'), findsOneWidget);
    expect(find.text('Buɗe'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('server-authored document content stays exact; Arabic form errors translate', (tester) async {
    final doc = ShellDocument.fromJson({
      'version': 1, 'id': 'choice', 'revision': 1,
      'fallback': 'Original server fallback',
      'expiresAt': '2099-01-01T00:00:00Z',
      'nodes': [
        {'type': 'heading', 'text': 'Provider-controlled title'},
        {'type': 'input', 'id': 'response', 'required': true},
        {'type': 'button', 'id': 'submit', 'action': 'choose', 'token': 'opaque'},
      ],
    });
    await tester.pumpWidget(_host('ar', ShellDocumentView(
      document: doc, onAction: (_) async {},
    )));
    await tester.pumpAndSettle();
    expect(find.text('Provider-controlled title'), findsOneWidget);
    await tester.tap(find.text('اختيار'));
    await tester.pumpAndSettle();
    expect(find.text('يرجى إكمال هذا الحقل'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
