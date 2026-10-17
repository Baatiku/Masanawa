import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/wallet_step_up_page.dart';

void main(){
  testWidgets('bank verification explains the exact approved payment details',(
    tester,
  )async{
    await tester.pumpWidget(const MaterialApp(
      home:WalletStepUpPage(bankDetails:true),
    ));
    expect(find.text('Verify bank details'),findsOneWidget);
    expect(find.text('Approve bank details'),findsOneWidget);
    expect(find.textContaining('receiving bank'),findsOneWidget);
    expect(find.text('Approve this withdrawal'),findsNothing);
    final submit=find.widgetWithText(FilledButton,'Verify and proceed');
    expect(tester.widget<FilledButton>(submit).onPressed,isNull);
    await tester.enterText(
      find.byKey(const Key('withdrawal-step-up-code')),'123456');
    await tester.pump();
    expect(tester.widget<FilledButton>(submit).onPressed,isNotNull);
  });

  testWidgets('withdrawal screen retains its own distinct purpose',(
    tester,
  )async{
    await tester.pumpWidget(const MaterialApp(home:WalletStepUpPage()));
    expect(find.text('Verify withdrawal'),findsOneWidget);
    expect(find.text('Approve this withdrawal'),findsOneWidget);
    expect(find.textContaining('reviewed withdrawal'),findsOneWidget);
  });
}
