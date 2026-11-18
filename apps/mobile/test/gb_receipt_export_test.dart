import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_activity.dart';
import 'package:masanawa/src/gb_wallet/gb_receipt_document.dart';
import 'package:masanawa/src/gb_wallet/gb_receipt_share.dart';

void main(){
  test('pending operations cannot be represented as posted receipts',()async{
    await expectLater(buildGbReceiptDocument(GbActivityItem(id:'mb:1',operationId:'pending_1',
      unit:'MB',amount:-500,kind:'redeem',status:'pending',createdAt:DateTime.utc(2026))),throwsStateError);
  });
  testWidgets('branded receipt renders complete PNG pages and a PDF with valid object offsets', (tester)async{
    final item=GbActivityItem(id:'mb:1',operationId:'op_${'a'*150}',unit:'MB',amount:1050,
      kind:'ngn_exchange',status:'reversed',createdAt:DateTime.utc(2026,10,27),
      details:GbActivityDetails(counterpartyKind:'human',counterpartyId:'user_${'b'*150}',
        sourceBucket:'issuance',targetBucket:'purchased',exchangedMb:1050,exchangeKobo:500050,
        rateVersion:'rate_${'c'*150}',reversesOperationId:'reverse_${'d'*150}'));
    final document=await tester.runAsync(()=>buildGbReceiptDocument(item));
    expect(document,isNotNull);
    expect(document!.pngPages.length,greaterThan(1));
    for(final png in document.pngPages)expect(png.take(8).toList(),[137,80,78,71,13,10,26,10]);
    final pdf=latin1.decode(document.pdf);
    expect(pdf.startsWith('%PDF-1.4\n'),isTrue);
    expect(pdf,contains('/Count ${document.pngPages.length}'));
    expect(RegExp(r'/Type /Page\b').allMatches(pdf).length,document.pngPages.length);
    final marker=pdf.lastIndexOf('startxref\n');
    final offset=int.parse(pdf.substring(marker+'startxref\n'.length).split('\n').first);
    expect(pdf.substring(offset).startsWith('xref\n'),isTrue);
    final lines=pdf.substring(offset).split('\n');
    final count=int.parse(lines[1].split(' ').last);
    for(int i=1;i<count;i++){
      final objectOffset=int.parse(lines[i+2].substring(0,10));
      expect(pdf.substring(objectOffset).startsWith('$i 0 obj\n'),isTrue);
    }
    expect(item.gbLabel,'+1.05 GB');
  });

  test('native share deletes private files after success, dismissal and failures',()async{
    final root=await Directory.systemTemp.createTemp('receipt-export-test-');
    try{
      for(final format in GbReceiptFormat.values){
        for(final fail in [false,true]){
          var handedOff=false;
          final exporter=NativeGbReceiptExporter(temporaryDirectory:()async=>root,
            shareFiles:(files,origin)async{
              handedOff=true;
              expect(files.length,format==GbReceiptFormat.pdf?1:2);
              for(final file in files)expect(await File(file.path).exists(),isTrue);
              if(fail)throw StateError('native share unavailable');
            });
          final document=GbReceiptDocument(pngPages:[Uint8List.fromList([1]),Uint8List.fromList([2])],pdf:Uint8List.fromList([3]));
          if(fail){await expectLater(exporter.share(document,format,isCurrent:()=>true),throwsStateError);}
          else{await exporter.share(document,format,isCurrent:()=>true);}
          expect(handedOff,isTrue);
          expect(await root.list().toList(),isEmpty);
        }
      }
    }finally{await root.delete(recursive:true);}
  });

  test('ownership loss before handoff stops sharing and removes preparation files',()async{
    final root=await Directory.systemTemp.createTemp('receipt-owner-test-');
    try{
      var checks=0,shared=false;
      final exporter=NativeGbReceiptExporter(temporaryDirectory:()async=>root,
        shareFiles:(files,origin)async{shared=true;});
      await expectLater(exporter.share(GbReceiptDocument(pngPages:[],pdf:Uint8List.fromList([1])),
        GbReceiptFormat.pdf,isCurrent:()=>++checks<4),throwsStateError);
      expect(shared,isFalse);expect(await root.list().toList(),isEmpty);
    }finally{await root.delete(recursive:true);}
  });
}
