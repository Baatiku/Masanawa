import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/ui/components/conversation_search_field.dart';

void main() {
  testWidgets('search field uses visible branded focus and clearing works',
      (tester) async {
    final controller = TextEditingController();
    addTearDown(controller.dispose);
    String latest = 'not cleared';
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: Scaffold(body: ConversationSearchField(
        controller: controller,
        hintText: 'Search Masana',
        clearTooltip: 'Clear search',
        onChanged: (value) => latest = value,
        onClear: () => latest = '',
      )),
    ));
    final field = tester.widget<TextField>(find.byType(TextField));
    final border = field.decoration!.focusedBorder! as OutlineInputBorder;
    expect(border.borderSide.color, MasanawaColors.light().brandStrong);
    expect(border.borderSide.width, greaterThanOrEqualTo(2));

    await tester.enterText(find.byType(TextField), 'Gwani');
    await tester.pump();
    expect(latest, 'Gwani');
    await tester.tap(find.byTooltip('Clear search'));
    await tester.pump();
    expect(controller.text, isEmpty);
    expect(latest, isEmpty);
  });
}
