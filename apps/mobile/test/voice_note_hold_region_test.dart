import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/ui/components/voice_note_hold_region.dart';
void main(){
 Future<TestGesture> hold(WidgetTester tester)async{final gesture=await tester.startGesture(tester.getCenter(find.byKey(const ValueKey('hold'))));await tester.pump(const Duration(milliseconds:600));return gesture;}
 Widget region({required Future<void> Function() start,required Future<void> Function() preview,required Future<void> Function() cancel,required VoidCallback lock,Widget? child,bool enabled=true})=>MaterialApp(home:Center(child:VoiceNoteHoldRegion(key:const ValueKey('hold'),enabled:enabled,onStart:start,onPreview:preview,onCancel:cancel,onLock:lock,child:child??const SizedBox(width:48,height:48))));
 testWidgets('hold release previews once after asynchronous microphone start',(tester)async{
  final started=Completer<void>();final events=<String>[];
  await tester.pumpWidget(region(start:(){events.add('start');return started.future;},preview:()async{events.add('preview');},cancel:()async{events.add('cancel');},lock:(){}));
  final gesture=await hold(tester);await gesture.up();await tester.pump();expect(events,['start']);
  started.complete();await tester.pumpAndSettle();expect(events,['start','preview']);
 });
 testWidgets('slide left cancels exactly once and never previews',(tester)async{
  final events=<String>[];
  await tester.pumpWidget(region(start:()async{events.add('start');},preview:()async{events.add('preview');},cancel:()async{events.add('cancel');},lock:()=>events.add('lock')));
  final gesture=await hold(tester);await gesture.moveBy(const Offset(-90,0));await tester.pump();await gesture.up();await tester.pumpAndSettle();expect(events,['start','cancel']);
 });
 testWidgets('slide up locks and release does not stop the long recording',(tester)async{
  final events=<String>[];
  await tester.pumpWidget(region(start:()async{events.add('start');},preview:()async{events.add('preview');},cancel:()async{events.add('cancel');},lock:()=>events.add('lock')));
  final gesture=await hold(tester);await gesture.moveBy(const Offset(0,-90));await tester.pump();await gesture.up();await tester.pumpAndSettle();expect(events,['start','lock']);
 });
 testWidgets('changing microphone UI and disabling new holds preserves the active release',(tester)async{
  final events=<String>[];late StateSetter update;var enabled=true;
  await tester.pumpWidget(MaterialApp(home:StatefulBuilder(builder:(context,setState){update=setState;return Center(child:VoiceNoteHoldRegion(key:const ValueKey('hold'),enabled:enabled,onStart:()async{events.add('start');update(()=>enabled=false);},onPreview:()async{events.add('preview');},onCancel:()async{events.add('cancel');},onLock:()=>events.add('lock'),child:SizedBox(width:48,height:48,child:Text(enabled?'Mic':'Send'))));})));
  final gesture=await hold(tester);await tester.pump();expect(find.text('Send'),findsOneWidget);await gesture.up();await tester.pumpAndSettle();expect(events,['start','preview']);
 });
 testWidgets('short tap remains available without starting a hold',(tester)async{
  var starts=0,taps=0;
  await tester.pumpWidget(region(start:()async{starts++;},preview:()async{},cancel:()async{},lock:(){},child:TextButton(onPressed:()=>taps++,child:const Text('Mic'))));
  await tester.tap(find.text('Mic'));await tester.pumpAndSettle();expect(starts,0);expect(taps,1);
 });
}
