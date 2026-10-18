import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_p2p_screen.dart';

void main() {
  final offer = <String, dynamic>{
    'offer_id': 'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa',
    'rate_kobo_per_msnw': '150000',
    'min_micro': '1000000',
    'max_micro': '3000000',
    'remaining_micro': '2500000',
    'bank_name': 'Verified Bank',
  };

  testWidgets('exact input bounds and six-decimal precision block review', (tester) async {
    tester.view.physicalSize = const Size(360, 780);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(body: MsnwP2pBuyAmountForm(offer: offer)),
    ));
    await tester.pumpAndSettle();
    final field = find.byKey(const ValueKey('p2p-buy-amount'));
    final button = find.widgetWithText(FilledButton, 'Review price and fees');

    expect(tester.widget<FilledButton>(button).onPressed, isNull);
    expect(find.textContaining('Verified Bank'), findsOneWidget);
    await tester.enterText(field, '0.999999');
    await tester.pump();
    expect(find.textContaining('Below the seller'), findsOneWidget);
    expect(tester.widget<FilledButton>(button).onPressed, isNull);

    await tester.enterText(field, '1.0000001');
    await tester.pump();
    expect(find.textContaining('up to six decimals'), findsOneWidget);
    expect(tester.widget<FilledButton>(button).onPressed, isNull);

    await tester.enterText(field, '2.500001');
    await tester.pump();
    expect(find.textContaining('available offer limit'), findsOneWidget);
    expect(tester.widget<FilledButton>(button).onPressed, isNull);

    await tester.enterText(field, '2.5');
    await tester.pump();
    expect(tester.widget<FilledButton>(button).onPressed, isNotNull);
    expect(tester.takeException(), isNull);
  });

  testWidgets('buy form remains readable with 200 percent text at 320px', (tester) async {
    tester.view.physicalSize = const Size(320, 740);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(MaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(2)),
        child: child!,
      ),
      home: Scaffold(body: MsnwP2pBuyAmountForm(offer: offer)),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Amount in MSNW'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
