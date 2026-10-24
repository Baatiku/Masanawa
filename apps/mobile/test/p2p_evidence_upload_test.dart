import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/p2p_evidence_upload.dart';

void main(){
  final file=P2pEvidenceFile(Uint8List.fromList([37,80,68,70,45]),'application/pdf');
  testWidgets('recovers accepted original after lost response without uploading again',(tester)async{
    Map<String,dynamic>? saved;bool accepted=false;int uploads=0;
    Widget page()=>MaterialApp(home:P2pEvidenceUploadPage(expectedUserId:'owner',currentUserId:()=>'owner',pick:()async=>file,restore:()async=>saved,persist:(v)async{saved=v;},original:(hash)async=>accepted?{'evidenceId':'original-receipt','sha256':hash}:null,upload:(_)async{uploads++;accepted=true;throw StateError('Response lost');}));
    await tester.pumpWidget(page());await tester.pumpAndSettle();
    await tester.tap(find.text('Choose file'));await tester.pumpAndSettle();await tester.tap(find.text('Attach selected file'));await tester.pumpAndSettle();
    expect(uploads,1);expect(saved,file.metadata);expect(saved!.keys.toSet(),{'version','sha256','contentType','bytes'});
    await tester.pumpWidget(const SizedBox());await tester.pumpWidget(page());await tester.pumpAndSettle();
    expect(find.text('Attachment recorded'),findsOneWidget);expect(uploads,1);expect(saved,isNull);
    await tester.pumpWidget(const SizedBox());
  });
  testWidgets('rejects another file while original outcome is uncertain',(tester)async{
    int uploads=0;final wrong=P2pEvidenceFile(Uint8List.fromList([1,2,3]),'application/pdf');
    await tester.pumpWidget(MaterialApp(home:P2pEvidenceUploadPage(expectedUserId:'owner',currentUserId:()=>'owner',pick:()async=>wrong,restore:()async=>file.metadata,persist:(_)async{},original:(_)async=>null,upload:(_)async{uploads++;})));
    await tester.pumpAndSettle();await tester.tap(find.text('Choose original file'));await tester.pumpAndSettle();
    expect(find.textContaining('different file cannot replace'),findsOneWidget);expect(uploads,0);
    expect(tester.widget<FilledButton>(find.widgetWithText(FilledButton,'Attach selected file')).onPressed,isNull);
    await tester.pumpWidget(const SizedBox());
  });
  testWidgets('secure metadata failure prevents upload',(tester)async{
    int uploads=0;
    await tester.pumpWidget(MaterialApp(home:P2pEvidenceUploadPage(expectedUserId:'owner',currentUserId:()=>'owner',pick:()async=>file,restore:()async=>null,persist:(_)async{throw StateError('Storage unavailable');},original:(_)async=>null,upload:(_)async{uploads++;})));
    await tester.pumpAndSettle();await tester.tap(find.text('Choose file'));await tester.pumpAndSettle();await tester.tap(find.text('Attach selected file'));await tester.pumpAndSettle();expect(uploads,0);
    await tester.pumpWidget(const SizedBox());
  });
  testWidgets('account change drops file and receipt context',(tester)async{
    String? user='owner';
    await tester.pumpWidget(MaterialApp(home:P2pEvidenceUploadPage(expectedUserId:'owner',currentUserId:()=>user,pick:()async=>file,restore:()async=>null,persist:(_)async{},original:(_)async=>null,upload:(_)async{})));
    await tester.pumpAndSettle();await tester.tap(find.text('Choose file'));await tester.pumpAndSettle();user='other';await tester.pump(const Duration(milliseconds:300));
    expect(find.text('Account changed. Reopen this order.'),findsOneWidget);expect(find.text('Attach selected file'),findsNothing);await tester.pumpWidget(const SizedBox());
  });
  testWidgets('authoritative file rejection allows a replacement file',(tester)async{
    Map<String,dynamic>? saved;int uploads=0;
    await tester.pumpWidget(MaterialApp(home:P2pEvidenceUploadPage(expectedUserId:'owner',currentUserId:()=>'owner',pick:()async=>file,restore:()async=>null,persist:(v)async{saved=v;},original:(_)async=>null,upload:(_)async{uploads++;throw const P2pEvidenceRejected();})));
    await tester.pumpAndSettle();await tester.tap(find.text('Choose file'));await tester.pumpAndSettle();await tester.tap(find.text('Attach selected file'));await tester.pumpAndSettle();
    expect(uploads,1);expect(saved,isNull);expect(find.text('Choose file'),findsOneWidget);expect(find.textContaining('File was rejected'),findsOneWidget);await tester.pumpWidget(const SizedBox());
  });

  testWidgets('late missing-original response cannot upload after account change',(tester)async{
    String? user='owner';final response=Completer<Map<String,dynamic>?>();int uploads=0;
    await tester.pumpWidget(MaterialApp(home:P2pEvidenceUploadPage(expectedUserId:'owner',currentUserId:()=>user,pick:()async=>file,restore:()async=>null,persist:(_)async{},original:(_)=>response.future,upload:(_)async{uploads++;})));
    await tester.pumpAndSettle();await tester.tap(find.text('Choose file'));await tester.pumpAndSettle();await tester.tap(find.text('Attach selected file'));await tester.pump();
    user='other';response.complete(null);await tester.pump(const Duration(milliseconds:300));expect(uploads,0);expect(find.text('Account changed. Reopen this order.'),findsOneWidget);await tester.pumpWidget(const SizedBox());
  });
  testWidgets('attachment recovery remains usable at 320dp RTL and enlarged text',(tester)async{
    tester.view.physicalSize=const Size(320,900);tester.view.devicePixelRatio=1;addTearDown(tester.view.resetPhysicalSize);addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(MaterialApp(builder:(context,child)=>MediaQuery(data:MediaQuery.of(context).copyWith(textScaler:const TextScaler.linear(2)),child:Directionality(textDirection:TextDirection.rtl,child:child!)),home:P2pEvidenceUploadPage(expectedUserId:'owner',currentUserId:()=>'owner',pick:()async=>file,restore:()async=>file.metadata,persist:(_)async{},original:(_)async=>null,upload:(_)async{})));
    await tester.pumpAndSettle();await tester.scrollUntilVisible(find.text('Choose original file'),150,scrollable:find.byType(Scrollable).first);await tester.tap(find.text('Choose original file'));await tester.pumpAndSettle();expect(tester.takeException(),isNull);await tester.pumpWidget(const SizedBox());
  });

}
