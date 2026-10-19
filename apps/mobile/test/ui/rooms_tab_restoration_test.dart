import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/rooms_client.dart';
import 'package:masanawa/src/features/rooms/rooms_screen.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _RoomsClient implements RoomsClient {
  @override
  Future<List<RoomInfo>> list({required bool joined, String query = '', String language = ''}) async =>
    [RoomInfo('room-one', 'Teaching', 'Masana', 'en', 2, false, true)];
  @override
  Future<RoomInfo> room(String id) async => throw UnimplementedError();
  @override
  Future<void> join(String id) async => throw UnimplementedError();
  @override
  Future<void> leave(String id) async => throw UnimplementedError();
  @override
  Future<RoomQuestion> ask(String id, String text, String key) async => throw UnimplementedError();
  @override
  Future<List<RoomQuestion>> questions(String id) async => throw UnimplementedError();
  @override
  Future<List<RoomLesson>> lessons(String id) async => throw UnimplementedError();
}

void main() {
  testWidgets('Rooms restores tab and language without storing private search text', (tester) async {
    final api = _RoomsClient();
    Widget page(String account) => MaterialApp(
      restorationScopeId: 'rooms-tab-test',
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: RoomsScreen(key: ValueKey(account), client: api, savedLessonsAccountKey: account),
    );
    await tester.pumpWidget(page('owner-a'));
    await tester.pumpAndSettle();
    expect(tester.widget<TabBar>(find.byType(TabBar)).controller!.index, 0);
    await tester.tap(find.text('Discover'));
    await tester.pumpAndSettle();
    expect(tester.widget<TabBar>(find.byType(TabBar)).controller!.index, 1);
    await tester.enterText(find.byType(TextField).first, 'private search');
    await tester.pump(const Duration(milliseconds: 400));
    await tester.restartAndRestore();
    await tester.pumpAndSettle();
    expect(tester.widget<TabBar>(find.byType(TabBar)).controller!.index, 1);
    expect(find.text('private search'), findsNothing);
    await tester.pumpWidget(page('owner-b'));
    await tester.pumpAndSettle();
    expect(tester.widget<TabBar>(find.byType(TabBar)).controller!.index, 0);
  });
}
