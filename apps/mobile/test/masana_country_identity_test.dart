import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/state/agent_directory_state.dart';
import 'package:masanawa/src/screens/chat/masana_list_screen.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
const nigerian=AgentDirectoryEntry(characterId:'a',characterVersionId:'v',displayName:'Amina',roleLabel:'Medicine',about:'Education',presence:AgentPresence.available,countryCode:'NG',countryName:'Nigeria');
const indian=AgentDirectoryEntry(characterId:'b',characterVersionId:'v',displayName:'Asha',roleLabel:'Language',about:'Education',presence:AgentPresence.available,countryCode:'IN',countryName:'India');
class _Directory extends AgentDirectoryController {
 @override AgentDirectoryState build()=>const AgentDirectoryState(loading:false,agents:[nigerian,indian]);
 @override Future<void> refresh()async{}
}
void main(){
 test('country metadata survives cache and unverified-presence projection',(){
  final saved=AgentDirectoryEntry.fromJson(nigerian.toJson()).withUnverifiedPresence();
  expect(saved.countryCode,'NG');expect(saved.countryName,'Nigeria');expect(saved.countryFlag,'🇳🇬');
  expect(saved.countrySearchText,contains('najeriya'));expect(saved.presence,AgentPresence.unknown);
 });
 test('unknown country is never inferred from an agent name or profession',(){
  const unknown=AgentDirectoryEntry(characterId:'x',characterVersionId:'v',displayName:'Prof Mei Lin',roleLabel:'Mandarin',about:'Chinese education',presence:AgentPresence.unknown);
  expect(unknown.countryFlag,isNull);expect(unknown.countrySearchText.trim(),isEmpty);
 });
 testWidgets('contacts display country flags and search explicit country names',(tester)async{
  await tester.pumpWidget(ProviderScope(overrides:[agentDirectoryProvider.overrideWith(_Directory.new)],child:MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:const MasanaListScreen())));
  await tester.pumpAndSettle();expect(find.text('🇳🇬'),findsOneWidget);expect(find.text('🇮🇳'),findsOneWidget);expect(find.byIcon(Icons.chat_bubble_outline),findsNothing);
  await tester.enterText(find.byType(TextField).first,'India');await tester.pumpAndSettle();
  expect(find.text('Asha'),findsOneWidget);expect(find.text('Amina'),findsNothing);expect(tester.takeException(),isNull);
 });
}
