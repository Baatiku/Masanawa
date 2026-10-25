import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/gb_request_screen.dart';
import 'package:masanawa/src/state/session_state.dart';

class _SignedOut extends SessionController {
  @override
  SessionState build() => const SessionSignedOut();
}

void main() {
  testWidgets('signed-out Request cannot construct payment or creation POST',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [sessionProvider.overrideWith(_SignedOut.new)],
      child: const MaterialApp(home: GbRequestScreen()),
    ));
    expect(find.text('Request MB'), findsOneWidget);
    expect(find.text('New request'), findsOneWidget);
    expect(find.text('Incoming'), findsOneWidget);
    expect(find.text('Sent'), findsOneWidget);
    final button = tester.widget<FilledButton>(
      find.widgetWithText(FilledButton, 'Send request'));
    expect(button.onPressed, isNull);
    expect(find.text('Confirm payment'), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
