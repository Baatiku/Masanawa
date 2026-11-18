import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/screens/status/status_screen.dart';

void main() {
  testWidgets('Status no longer exposes a videos catalogue or human publisher',
      (tester) async {
    // Signed-out route remains private, without creating old video routes.
    await tester.pumpWidget(const ProviderScope(child: MaterialApp(
      home: Scaffold(body: StatusScreen()),
    )));
    expect(find.text('Videos'), findsNothing);
    expect(find.text('Create Status'), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
