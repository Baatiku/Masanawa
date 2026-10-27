import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';
import 'gb_wallet_activity.dart';
import '../tokens/masanawa_tokens.dart';

// Exported documents use the canonical light palette on white paper.
ui.Color _receiptColor(String hex) => ui.Color(int.parse(hex.substring(1), radix:16) | 0xff000000);

class GbReceiptDocument {
  const GbReceiptDocument({required this.pngPages,required this.pdf});
  final List<Uint8List> pngPages;
  final Uint8List pdf;
}

/// Raster pages preserve the same Unicode amounts, logo and wrapping in PDF
/// and PNG. Customer text never becomes a PDF command or a file name.
Future<GbReceiptDocument> buildGbReceiptDocument(GbActivityItem item) async {
  if(!const {'completed','reversed'}.contains(item.status))
    throw StateError('Receipt is not a posted entry');
  const width=595.0,height=842.0,scale=2.0;
  final asset=await rootBundle.load('assets/brand/masanawa_splash_mark.png');
  final codec=await ui.instantiateImageCodec(asset.buffer.asUint8List(),targetWidth:128);
  final logo=(await codec.getNextFrame()).image;
  codec.dispose();
  final rows=<(String,String)>[
    ('Status',item.status=='reversed'?'Reversed posted entry':'Posted journal entry'),
    ('Purpose',item.title),('Amount',item.amountLabel),
    if(item.unit=='MB')('Data equivalent',item.gbLabel),
    ('Recorded (UTC)',item.createdAt.toUtc().toIso8601String()),
    ('Operation reference',item.operationId),('Entry reference',item.id),
    if(item.details?.counterpartyLabel!=null)('Counterparty',item.details!.counterpartyLabel!),
    if(item.details?.counterpartyId!=null)('Counterparty reference',item.details!.counterpartyId!),
    if(item.details?.sourceBucket!=null)('Source bucket',item.details!.sourceBucket!),
    if(item.details?.targetBucket!=null)('Target bucket',item.details!.targetBucket!),
    if(item.details?.exchangedMb!=null)('Purchased data','${groupActivityAmount(item.details!.exchangedMb!)} MB'),
    if(item.details?.exchangeKobo!=null)('NGN exchanged',
      'NGN ${groupActivityAmount(item.details!.exchangeKobo!~/100)}.${(item.details!.exchangeKobo!%100).toString().padLeft(2,'0')}'),
    if(item.details?.rateVersion!=null)('Rate version',item.details!.rateVersion!),
    if(item.details?.reversesOperationId!=null)('Reverses operation',item.details!.reversesOperationId!),
  ];
  ui.Paragraph paragraph(String text,double size,{bool bold=false,ui.Color? color}) {
    final builder=ui.ParagraphBuilder(ui.ParagraphStyle(textDirection:ui.TextDirection.ltr,
      fontSize:size,fontFamily:'Roboto',height:1.35))
      ..pushStyle(ui.TextStyle(fontSize:size,fontWeight:bold?ui.FontWeight.w700:ui.FontWeight.w400,
        color:color??_receiptColor(MasanawaTokens.light.textPrimary)))..addText(text);
    return builder.build()..layout(const ui.ParagraphConstraints(width:515));
  }
  final pngPages=<Uint8List>[],rgbPages=<Uint8List>[];
  ui.PictureRecorder? recorder;
  late ui.Canvas canvas;
  double y=0;
  void beginPage() {
    recorder=ui.PictureRecorder();canvas=ui.Canvas(recorder!)..scale(scale);
    canvas.drawRect(const ui.Rect.fromLTWH(0,0,width,height),ui.Paint()..color=_receiptColor(MasanawaTokens.light.surfaceCard));
    canvas.drawImageRect(logo,ui.Rect.fromLTWH(0,0,logo.width.toDouble(),logo.height.toDouble()),
      const ui.Rect.fromLTWH(40,28,64,64),ui.Paint());
    canvas.drawParagraph(paragraph('Masanawa',28,bold:true,color:_receiptColor(MasanawaTokens.light.brandStrong)),const ui.Offset(120,36));
    canvas.drawParagraph(paragraph('Wallet receipt',16),const ui.Offset(120,72));
    canvas.drawLine(const ui.Offset(40,114),const ui.Offset(555,114),ui.Paint()..color=_receiptColor(MasanawaTokens.light.structuralBorder));
    y=132;
  }
  Future<void> finishPage()async{
    canvas.drawParagraph(paragraph('Posted ledger entry. This does not establish external bank settlement or data delivery.',10),const ui.Offset(40,772));
    canvas.drawParagraph(paragraph('Page ${pngPages.length+1} · Entry ${item.id}',8),const ui.Offset(40,808));
    final picture=recorder!.endRecording();
    final image=await picture.toImage((width*scale).round(),(height*scale).round());
    try{
      final png=await image.toByteData(format:ui.ImageByteFormat.png);
      final rgba=await image.toByteData(format:ui.ImageByteFormat.rawRgba);
      if(png==null||rgba==null)throw StateError('Receipt rendering unavailable');
      pngPages.add(png.buffer.asUint8List());
      final raw=rgba.buffer.asUint8List(),rgb=Uint8List(image.width*image.height*3);
      for(int i=0,j=0;i<raw.length;i+=4){rgb[j++]=raw[i];rgb[j++]=raw[i+1];rgb[j++]=raw[i+2];}
      rgbPages.add(Uint8List.fromList(zlib.encode(rgb)));
    }finally{image.dispose();picture.dispose();}
  }
  try{
    beginPage();
    for(final row in rows){
      final label=paragraph(row.$1,11,color:_receiptColor(MasanawaTokens.light.textMuted));
      final value=paragraph(row.$2,16,bold:row.$1=='Amount');
      final needed=label.height+value.height+22;
      if(y+needed>750){await finishPage();beginPage();}
      canvas.drawParagraph(label,ui.Offset(40,y));y+=label.height+3;
      canvas.drawParagraph(value,ui.Offset(40,y));y+=value.height+19;
    }
    await finishPage();
    return GbReceiptDocument(pngPages:List.unmodifiable(pngPages),
      pdf:_imagePdf(rgbPages,(width*scale).round(),(height*scale).round()));
  }finally{logo.dispose();}
}

Uint8List _imagePdf(List<Uint8List> pages,int imageWidth,int imageHeight) {
  final objects=<Uint8List>[];
  Uint8List text(String v)=>Uint8List.fromList(ascii.encode(v));
  objects.add(text('<< /Type /Catalog /Pages 2 0 R >>'));
  objects.add(text('<< /Type /Pages /Count ${pages.length} /Kids [${List.generate(pages.length,(i)=>'${5+i*3} 0 R').join(' ')}] >>'));
  for(int i=0;i<pages.length;i++){
    final image=BytesBuilder()..add(text('<< /Type /XObject /Subtype /Image /Width $imageWidth /Height $imageHeight /ColorSpace /DeviceRGB /BitsPerComponent 8 /Filter /FlateDecode /Length ${pages[i].length} >>\nstream\n'))
      ..add(pages[i])..add(text('\nendstream'));
    objects.add(image.takeBytes());
    final commands=text('q\n595 0 0 842 0 0 cm\n/Receipt Do\nQ\n');
    objects.add((BytesBuilder()..add(text('<< /Length ${commands.length} >>\nstream\n'))..add(commands)..add(text('endstream'))).takeBytes());
    objects.add(text('<< /Type /Page /Parent 2 0 R /MediaBox [0 0 595 842] /Resources << /XObject << /Receipt ${3+i*3} 0 R >> >> /Contents ${4+i*3} 0 R >>'));
  }
  final result=BytesBuilder()..add(text('%PDF-1.4\n'));
  final offsets=<int>[0];
  for(int i=0;i<objects.length;i++){
    offsets.add(result.length);result.add(text('${i+1} 0 obj\n'));result.add(objects[i]);result.add(text('\nendobj\n'));
  }
  final xref=result.length;
  result.add(text('xref\n0 ${objects.length+1}\n0000000000 65535 f \n'));
  for(final offset in offsets.skip(1)){result.add(text('${offset.toString().padLeft(10,'0')} 00000 n \n'));}
  result.add(text('trailer\n<< /Size ${objects.length+1} /Root 1 0 R >>\nstartxref\n$xref\n%%EOF\n'));
  return result.takeBytes();
}
