import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/p2p_history_filters.dart';

class Fixture {
  String? user = 'buyer';
  P2pHistoryFilters? result;
  final bool ads, large;
  final P2pHistoryFilters initial;
  Fixture({
    this.ads = false,
    this.large = false,
    this.initial = const P2pHistoryFilters(),
  });
  Widget app() => MaterialApp(
    builder: (c, child) => MediaQuery(
      data: MediaQuery.of(
        c,
      ).copyWith(textScaler: TextScaler.linear(large ? 2 : 1)),
      child: Directionality(
        textDirection: large ? TextDirection.rtl : TextDirection.ltr,
        child: child!,
      ),
    ),
    home: Builder(
      builder: (ctx) => Scaffold(
        body: FilledButton(
          onPressed: () async {
            result = await Navigator.of(ctx).push<P2pHistoryFilters>(
              MaterialPageRoute(
                builder: (_) => P2pHistoryFilterPage(
                  ads: ads,
                  initial: initial,
                  expectedUserId: 'buyer',
                  currentUserId: () => user,
                ),
              ),
            );
          },
          child: const Text('Open'),
        ),
      ),
    ),
  );
  Future<void> open(WidgetTester t) async {
    await t.pumpWidget(app());
    await t.tap(find.text('Open'));
    await t.pumpAndSettle();
  }
}

Future<void> press(WidgetTester t, String text) async {
  await t.scrollUntilVisible(
    find.text(text).hitTestable(),
    150,
    scrollable: find.byType(Scrollable).first,
  );
  await t.pumpAndSettle();
  await t.tap(find.text(text));
  await t.pumpAndSettle();
}

void main() {
  testWidgets(
    'applies exact direction/status and inclusive date filter values',
    (t) async {
      final f = Fixture(
        initial: const P2pHistoryFilters(status: 'completed', direction: 'buy'),
      );
      await f.open(t);
      await t.enterText(
        find.widgetWithText(TextFormField, 'From date'),
        '2026-10-01',
      );
      await t.enterText(
        find.widgetWithText(TextFormField, 'To date'),
        '2026-10-24',
      );
      t.testTextInput.hide();
      await press(t, 'Apply filters');
      expect(f.result!.query, {
        'status': 'completed',
        'direction': 'buy',
        'fromDate': '2026-10-01',
        'toDate': '2026-10-24',
      });
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'rejects impossible calendar dates and inverted ranges before Apply',
    (t) async {
      final f = Fixture();
      await f.open(t);
      await t.enterText(
        find.widgetWithText(TextFormField, 'From date'),
        '2026-02-30',
      );
      t.testTextInput.hide();
      await press(t, 'Apply filters');
      expect(find.text('Use a valid YYYY-MM-DD date.'), findsOneWidget);
      expect(f.result, isNull);
      await t.enterText(
        find.widgetWithText(TextFormField, 'From date'),
        '2026-10-24',
      );
      await t.enterText(
        find.widgetWithText(TextFormField, 'To date'),
        '2026-10-01',
      );
      t.testTextInput.hide();
      await press(t, 'Apply filters');
      expect(
        find.text('End date must be on or after start date.'),
        findsOneWidget,
      );
      expect(f.result, isNull);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'reset clears all advanced filters while Back cancels draft edits',
    (t) async {
      final f = Fixture(
        initial: const P2pHistoryFilters(
          status: 'disputed',
          fromDate: '2026-10-01',
        ),
      );
      await f.open(t);
      await press(t, 'Reset filters');
      expect(f.result!.active, isFalse);
      f.result = null;
      await t.tap(find.text('Open'));
      await t.pumpAndSettle();
      await t.enterText(
        find.widgetWithText(TextFormField, 'From date'),
        '2026-10-20',
      );
      await t.pageBack();
      await t.pumpAndSettle();
      expect(f.result, isNull);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'account replacement clears protected date drafts and prevents Apply',
    (t) async {
      final f = Fixture(
        initial: const P2pHistoryFilters(fromDate: '2026-10-01'),
      );
      await f.open(t);
      f.user = 'replacement';
      await t.pump(const Duration(seconds: 1));
      await t.pumpAndSettle();
      expect(find.text('Access changed. Reopen P2P.'), findsOneWidget);
      expect(find.byType(TextFormField), findsNothing);
      expect(f.result, isNull);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'own-ad filters expose ad availability rather than order settlement states',
    (t) async {
      final f = Fixture(
        ads: true,
        initial: const P2pHistoryFilters(status: 'paused', direction: 'sell'),
      );
      await f.open(t);
      expect(find.text('Filter my ads'), findsOneWidget);
      expect(find.text('Paused'), findsOneWidget);
      await press(t, 'Apply filters');
      expect(f.result!.query, {'status': 'paused', 'direction': 'sell'});
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets('320dp 200percent RTL keeps filter choices and Apply reachable', (
    t,
  ) async {
    t.view.physicalSize = const Size(320, 850);
    t.view.devicePixelRatio = 1;
    addTearDown(t.view.resetPhysicalSize);
    addTearDown(t.view.resetDevicePixelRatio);
    final f = Fixture(large: true);
    await f.open(t);
    await t.tap(find.text('All statuses'));
    await t.pumpAndSettle();
    await t.scrollUntilVisible(
      find.text('Completed').last.hitTestable(),
      150,
      scrollable: find.byType(Scrollable).last,
    );
    await t.pumpAndSettle();
    await t.tap(find.text('Completed').last);
    await t.pumpAndSettle();
    await press(t, 'Apply filters');
    expect(f.result!.status, 'completed');
    expect(t.takeException(), isNull);
    await t.pumpWidget(const SizedBox());
  });
}
