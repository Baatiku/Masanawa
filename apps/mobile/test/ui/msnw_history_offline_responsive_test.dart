import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_transaction_history.dart';
import 'package:masanawa/src/finance/msnw_wallet_home.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

void main() {
  testWidgets('same-account history remains visible and clearly stale when offline', (tester) async {
    var offline=false;
    var requests=0;
    final dio=Dio()..interceptors.add(InterceptorsWrapper(
      onRequest:(request,handler){
        requests++;
        if(offline){
          handler.reject(DioException(
            requestOptions:request,type:DioExceptionType.connectionError,
            error:'simulated offline'));
          return;
        }
        handler.resolve(Response<dynamic>(
          requestOptions:request,statusCode:200,
          data:<String,dynamic>{
            'items':[{
              'id':'Transfers:record-1','reference':'record-1',
              'category':'Transfers','title':'Received MSNW',
              'asset':'MSNW','status':'completed','incoming':true,
              'amountAtomic':'2500000','decimals':6,
              'createdAt':'2026-10-18T09:00:00.000Z',
              'details':<String,String>{},
            }],
            'nextCursor':null,
            'assets':['MSNW'],
          },
        ));
      },
    ));
    var user='account-a';
    Widget page(int refresh)=>MaterialApp(
      theme:buildMasanawaTheme(brightness:Brightness.light),
      home:Scaffold(body:MsnwTransactionHistory(
        dio:dio,baseUrl:'https://example.invalid',
        expectedUserId:'account-a',currentUserId:()=>user,
        accessToken:()=>user=='account-a'?'credential-a':null,
        refreshKey:refresh,
      )),
    );
    await tester.pumpWidget(page(0));
    await tester.pumpAndSettle();
    expect(find.text('Received MSNW'),findsOneWidget);
    offline=true;
    await tester.pumpWidget(page(1));
    await tester.pumpAndSettle();
    expect(find.text('Received MSNW'),findsOneWidget);
    expect(find.textContaining('previously loaded transactions'),findsOneWidget);
    expect(find.textContaining('These are not live'),findsOneWidget);
    expect(requests,greaterThanOrEqualTo(2));
    user='account-b';
    await tester.pumpWidget(page(2));
    await tester.pumpAndSettle();
    expect(find.text('Received MSNW'),findsNothing);
    expect(find.text('Sign in to view transactions'),findsOneWidget);
    dio.close();
  });

  for(final width in [320.0,360.0,430.0]) {
    for(final scale in [1.0,2.0]){
      testWidgets('wallet shortcuts work on $width dp with $scale text scale',
        (tester)async{
        tester.view.physicalSize=Size(width,780);
        tester.view.devicePixelRatio=1;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);
        final chosen=<String>[];
        await tester.pumpWidget(MaterialApp(
          theme:buildMasanawaTheme(brightness:Brightness.light),
          home:Scaffold(body:MediaQuery(
            data:MediaQueryData(size:Size(width,780),
              textScaler:TextScaler.linear(scale)),
            child:WalletActionRow(
              onSend:()=>chosen.add('Send'),
              onConvert:()=>chosen.add('Convert'),
              onReceive:()=>chosen.add('Receive'),
              onP2p:()=>chosen.add('P2P'),
            ),
          )),
        ));
        await tester.pumpAndSettle();
        for(final label in ['Send','Convert','Receive','P2P']){
          expect(find.text(label),findsOneWidget);
          await tester.ensureVisible(find.text(label));
          await tester.tap(find.text(label));
        }
        expect(chosen,['Send','Convert','Receive','P2P']);
        expect(tester.takeException(),isNull);
      });
    }
  }
}
