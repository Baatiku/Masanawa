import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/ui/components/masanawa_main_header.dart';

void main() {
  testWidgets('header wallet and Masana actions are dark and wordmark has no Agents subtitle', (tester) async {
    final theme = buildMasanawaTheme(brightness: Brightness.light);
    await tester.pumpWidget(MaterialApp(theme: theme, home: Builder(builder: (context) => Scaffold(
      appBar: masanawaMainHeader(context, actions: [
        IconButton(tooltip: 'Wallet', onPressed: () {}, icon: const Icon(Icons.account_balance_wallet_outlined)),
        IconButton(tooltip: 'Masana', onPressed: () {}, icon: const Icon(Icons.people_outline)),
      ]),
    ))));
    expect(find.text('Masanawa'), findsOneWidget);
    expect(find.text('Agents'), findsNothing);
    final colors = theme.extension<MasanawaColors>()!;
    for (final icon in [Icons.account_balance_wallet_outlined, Icons.people_outline]) {
      expect(IconTheme.of(tester.element(find.byIcon(icon))).color, colors.textPrimary);
    }
  });

  testWidgets('selected navigation pill persists after selection animation', (tester) async {
    var selected = 0;
    final theme = buildMasanawaTheme(brightness: Brightness.light);
    await tester.pumpWidget(MaterialApp(theme: theme, home: StatefulBuilder(builder: (context, setState) => Scaffold(
      bottomNavigationBar: NavigationBar(selectedIndex: selected, onDestinationSelected: (index) => setState(() => selected = index),
        destinations: const [NavigationDestination(icon: Icon(Icons.chat), label: 'Chats'), NavigationDestination(icon: Icon(Icons.wallet), label: 'Wallet')]),
    ))));
    await tester.tap(find.text('Wallet'));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 2));
    expect(tester.widget<NavigationBar>(find.byType(NavigationBar)).selectedIndex, 1);
    final indicators = tester.widgetList<NavigationIndicator>(find.byType(NavigationIndicator));
    expect(indicators.any((indicator) => indicator.color == theme.navigationBarTheme.indicatorColor), isTrue);
    expect(theme.navigationBarTheme.indicatorColor!.a, greaterThan(0));
    expect(theme.navigationBarTheme.iconTheme!.resolve({WidgetState.selected})!.color, theme.extension<MasanawaColors>()!.brandStrong);
  });
}
