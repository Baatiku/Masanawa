import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/screens/settings/account_deletion_dialog.dart';
import 'package:masanawa/src/state/session_state.dart';

class _SignedOutSession extends SessionController {
  @override
  SessionState build() => const SessionSignedOut();
}

void main() {
  testWidgets('account deletion page never shows prior private state after logout',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [sessionProvider.overrideWith(_SignedOutSession.new)],
      child: const MaterialApp(home: AccountDeletionDialog()),
    ));
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.text('Delete account'), findsOneWidget);
    expect(find.textContaining('This session changed'), findsOneWidget);
    expect(find.text('Request deletion'), findsNothing);
    expect(find.text('Verify request'), findsNothing);
  });
}
