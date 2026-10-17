import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_p2p_screen.dart';

void main() {
  testWidgets('bank verification keeps input after uncertain outcome', (tester) async {
    var requests = 0;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(body: MsnwP2pBankVerificationForm(
        banks: const [
          {'code': '123', 'name': 'Verified bank'},
        ],
        onSubmit: (bankCode, number) async {
          requests++;
          expect(bankCode, '123');
          expect(number, '0123456789');
          throw StateError('offline');
        },
      )),
    ));
    await tester.tap(find.byKey(const ValueKey('p2p-bank-identity')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Verified bank').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('p2p-bank-number')),
        '0123456789');
    await tester.ensureVisible(find.byKey(const ValueKey('p2p-bank-consent')));
    await tester.tap(find.byKey(const ValueKey('p2p-bank-consent')));
    await tester.ensureVisible(find.byKey(const ValueKey('p2p-bank-verify')));
    await tester.tap(find.byKey(const ValueKey('p2p-bank-verify')));
    await tester.pumpAndSettle();
    expect(requests, 1);
    expect(find.textContaining('could not be confirmed'), findsOneWidget);
    expect(tester.widget<TextFormField>(find.byKey(
      const ValueKey('p2p-bank-number'))).controller!.text, '0123456789');
    expect(find.text('Return to payment methods'), findsOneWidget);
  });
}
