import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_custody_send.dart';

void main(){
 setUp(()=>FlutterSecureStorage.setMockInitialValues({}));
 testWidgets('recent transfer requires intentional repeat review, and Cancel never sends',(tester)async{
  const prior='12345678-1234-1234-1234-123456789abc';
  final sends=<Map<String,dynamic>>[];
  final dio=Dio()..interceptors.add(InterceptorsWrapper(onRequest:(o,h){
   if(o.path.endsWith('/preview')){h.resolve(Response(requestOptions:o,data:{'asset':'MSNW','recipientUserId':'b','recipientName':'Amina','amountMicro':'2000000','feeMicro':'0','recentTransfer':{'operationId':prior,'state':'completed','createdAt':'2026-10-21T00:00:00Z'}}));return;}
   if(o.path.endsWith('/lookup')){h.resolve(Response(requestOptions:o,data:{'found':true,'userId':'b','displayName':'Amina','handle':'amina'}));return;}
   sends.add(Map<String,dynamic>.from(o.data as Map));
   h.resolve(Response(requestOptions:o,data:{'asset':'MSNW','state':'completed','operationId':'new-operation','recipientUserId':'b','amountMicro':'2000000'}));
  }));
  await tester.pumpWidget(MaterialApp(home:Scaffold(body:MsnwCustodySendSheet(dio:dio,baseUrl:'https://test',expectedUserId:'a',currentUserId:()=>'a',accessToken:()=>'token',onCompleted:(){}))));
  await tester.enterText(find.byType(TextField).at(0),'amina@example.test');await tester.enterText(find.byType(TextField).at(1),'2');
  await tester.ensureVisible(find.text('Check recipient and available balance'));await tester.tap(find.text('Check recipient and available balance'));await tester.pumpAndSettle();
  expect(find.text('Matching transfer completed recently'),findsOneWidget);
  await tester.ensureVisible(find.text('Review and confirm'));await tester.tap(find.text('Review and confirm'));await tester.pumpAndSettle();
  expect(find.textContaining('separate payment'),findsOneWidget);
  await tester.tap(find.text('Cancel'));await tester.pumpAndSettle();expect(sends,isEmpty);
  await tester.ensureVisible(find.text('Review and confirm'));await tester.tap(find.text('Review and confirm'));await tester.pumpAndSettle();
  await tester.ensureVisible(find.text('Send again intentionally'));await tester.tap(find.text('Send again intentionally'));await tester.pumpAndSettle();
  expect(sends,singleElement);expect(sends.single['repeatOf'],prior);expect(find.text('Transfer completed'),findsOneWidget);
 });
}
