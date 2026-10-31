import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/gb_data_catalogue.dart';
import 'package:masanawa/src/gb_wallet/gb_data_choice_controls.dart';

GbVerifiedBundle bundle(String network, int days) => GbVerifiedBundle(
  id: '$network-$days',
  version: 'v1',
  network: network,
  allowanceGb: 1,
  costMb: 1000,
  validityDays: days,
  providerAmount: '500.00',
  expiresAt: DateTime.utc(2099),
);

void main() {
  testWidgets(
    'all four packaged carrier marks retain labeled offline selection',
    (tester) async {
      for (final asset in [
        'mtn.jpeg',
        'airtel.jpeg',
        'glo.jpg',
        '9mobile.png',
      ]) {
        expect(
          (await rootBundle.load('assets/networks/$asset')).lengthInBytes,
          greaterThan(0),
        );
      }
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SizedBox(
              width: 320,
              child: GbDataNetworkChoices(network: 'MTN', onChanged: (_) {}),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      for (final label in ['MTN', 'Airtel', 'Glo', '9mobile'])
        expect(find.text(label), findsOneWidget);
      expect(find.byType(GbNetworkLogo), findsNWidgets(4));
      expect(find.text('All networks'), findsNothing);
      expect(tester.takeException(), isNull);
    },
  );

  test('verified validity never guesses weekly/monthly from unusual days', () {
    expect(gbDataValidityPeriod(1), GbDataValidityPeriod.daily);
    expect(gbDataValidityPeriod(2), GbDataValidityPeriod.daily);
    expect(gbDataValidityPeriod(7), GbDataValidityPeriod.weekly);
    for (final days in [28, 29, 30, 31]) {
      expect(gbDataValidityPeriod(days), GbDataValidityPeriod.monthly);
    }
    for (final days in [3, 6, 14, 21, 60, 365]) {
      expect(gbDataValidityPeriod(days), GbDataValidityPeriod.other);
    }
    final offers = [
      bundle('MTN', 1),
      bundle('MTN', 7),
      bundle('MTN', 30),
      bundle('MTN', 3),
      bundle('AIRTEL', 7),
    ];
    List<GbVerifiedBundle> selected(
      String? operator,
      GbDataValidityPeriod? period,
    ) => offers
        .where(
          (item) =>
              gbBundleMatchesSelection(item, network: operator, period: period),
        )
        .toList();
    expect(selected(null, null), isEmpty); // No unscoped All network list.
    expect(selected('MTN', null).length, 4);
    expect(selected('MTN', GbDataValidityPeriod.weekly).single.validityDays, 7);
    expect(selected('MTN', GbDataValidityPeriod.other).single.validityDays, 3);
    expect(selected('AIRTEL', GbDataValidityPeriod.weekly).length, 1);
    expect(selected('NOT_A_NETWORK', null), isEmpty);
  });

  testWidgets(
    'network and duration choices stay usable at 320dp, 200% and RTL',
    (tester) async {
      tester.view.physicalSize = const Size(320, 720);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      String? network;
      GbDataValidityPeriod? validity;
      await tester.pumpWidget(
        MaterialApp(
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(
              context,
            ).copyWith(textScaler: const TextScaler.linear(2)),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: child!,
            ),
          ),
          home: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  GbDataNetworkChoices(
                    network: null,
                    onChanged: (value) => network = value,
                  ),
                  GbDataValidityChoices(
                    period: null,
                    onChanged: (value) => validity = value,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('All'), findsNothing);
      expect(find.text('All durations'), findsNothing);
      expect(find.text('Other'), findsNothing);
      expect(find.byType(ChoiceChip), findsNWidgets(4));
      expect(
        find.byType(SegmentedButton<GbDataValidityPeriod>),
        findsOneWidget,
      );
      await tester.tap(find.text('Airtel'));
      await tester.tap(find.text('Weekly'));
      expect(network, 'AIRTEL');
      expect(validity, GbDataValidityPeriod.weekly);
      expect(tester.takeException(), isNull);
    },
  );
}
