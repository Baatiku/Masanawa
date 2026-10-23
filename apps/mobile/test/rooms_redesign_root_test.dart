import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/rooms_screen.dart';
import 'room_community_screen_test.dart' show FakeCommunityApi;

void main(){
 testWidgets('Rooms root uses only the new community timeline and creation', (tester) async {
  final api=FakeCommunityApi();
  await tester.pumpWidget(MaterialApp(home:RoomsScreen(api:api)));
  await tester.pumpAndSettle();
  expect(find.text('Garden'),findsOneWidget);
  expect(find.text('Lessons'),findsNothing);
  expect(find.text('Saved lessons'),findsNothing);
  await tester.tap(find.text('Garden'));
  await tester.pumpAndSettle();
  expect(find.text('Welcome gardeners'),findsOneWidget);
  expect(find.text('Ask your teacher'),findsNothing);
 });
 testWidgets('Rooms root discovery and search retain new product vocabulary',(tester)async{
  await tester.pumpWidget(MaterialApp(home:RoomsScreen(api:FakeCommunityApi())));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Discover'));
  await tester.pumpAndSettle();
  await tester.enterText(find.byType(TextField),'does not exist');
  await tester.pump(const Duration(milliseconds:300));
  await tester.pumpAndSettle();
  expect(find.text('No Rooms match this search'),findsOneWidget);
  expect(find.byTooltip('Create Room'),findsOneWidget);
 });
}
