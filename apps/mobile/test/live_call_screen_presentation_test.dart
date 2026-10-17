import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/core/live_voice_session.dart';
import 'package:masanawa/src/screens/chat/ai_chat_screen.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _Session extends Mock implements LiveVoiceSession {}
void main() {
  testWidgets('call fills the viewport and End closes the session and route', (tester) async {
    final session=_Session();
    when(()=>session.audioInterrupted).thenReturn(false);
    when(()=>session.errors).thenAnswer((_)=>const Stream<String>.empty());
    when(()=>session.states).thenAnswer((_)=>Stream.value(LiveVoiceState.listening));
    when(()=>session.ready).thenAnswer((_)=>Future<void>.value());
    when(()=>session.start()).thenAnswer((_)async{});
    when(()=>session.close()).thenAnswer((_)async{});
    const agent=AgentDirectoryEntry(characterId:'agent',characterVersionId:'v1',displayName:'Amina',roleLabel:'Medicine',about:'',presence:AgentPresence.available);
    await tester.pumpWidget(MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:Builder(builder:(context)=>Scaffold(body:TextButton(child:const Text('Open call'),onPressed:()=>Navigator.of(context).push(MaterialPageRoute<void>(builder:(_)=>MasanaLiveCallScreen(agent:agent,session:session))))))));
    await tester.tap(find.text('Open call'));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds:1));
    await tester.pumpAndSettle();
    final screen=find.byKey(const ValueKey('masanawa-live-call-screen'));
    expect(tester.getSize(screen),const Size(800,600));
    expect(find.byType(BottomSheet),findsNothing);
    expect(find.text('Mute'),findsOneWidget);expect(find.text('Speaker'),findsOneWidget);
    await tester.tap(find.byTooltip('End'));
    await tester.pumpAndSettle();
    expect(screen,findsNothing);expect(find.text('Open call'),findsOneWidget);
    verify(()=>session.start()).called(1);
    verify(()=>session.close()).called(greaterThanOrEqualTo(1));
    expect(tester.takeException(),isNull);
  });
}

