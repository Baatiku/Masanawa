import 'dart:io';
import 'dart:ui' show Rect;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'gb_receipt_document.dart';

enum GbReceiptFormat { pdf, png }
abstract interface class GbReceiptExporter {
  Future<void> share(GbReceiptDocument document,GbReceiptFormat format,
    {required bool Function() isCurrent,Rect? origin});
}

class NativeGbReceiptExporter implements GbReceiptExporter {
  NativeGbReceiptExporter({Future<Directory> Function()? temporaryDirectory,
    Future<void> Function(List<XFile>,Rect?)? shareFiles})
    :_temporaryDirectory=temporaryDirectory??getTemporaryDirectory,
     _shareFiles=shareFiles??_platformShare;
  final Future<Directory> Function() _temporaryDirectory;
  final Future<void> Function(List<XFile>,Rect?) _shareFiles;
  static Future<void> _platformShare(List<XFile> files,Rect? origin)async{
    await SharePlus.instance.share(ShareParams(files:files,
      subject:'Masanawa wallet receipt',sharePositionOrigin:origin));
  }
  @override
  Future<void> share(GbReceiptDocument document,GbReceiptFormat format,
      {required bool Function() isCurrent,Rect? origin})async{
    Directory? directory;
    void check(){if(!isCurrent())throw StateError('account_changed');}
    try{
      check();final root=await _temporaryDirectory();check();
      directory=await root.createTemp('masanawa-receipt-');check();
      final files=<XFile>[];
      final bytes=format==GbReceiptFormat.pdf?[document.pdf]:document.pngPages;
      if(bytes.isEmpty)throw StateError('Receipt unavailable');
      for(int i=0;i<bytes.length;i++){
        check();final extension=format==GbReceiptFormat.pdf?'pdf':'png';
        final file=File('${directory.path}/masanawa-receipt-${i+1}.$extension');
        await file.writeAsBytes(bytes[i],flush:true);check();
        files.add(XFile(file.path,mimeType:format==GbReceiptFormat.pdf?'application/pdf':'image/png'));
      }
      check();await _shareFiles(files,origin);
    }finally{
      try{if(directory!=null&&await directory.exists())await directory.delete(recursive:true);}catch(_){}
    }
  }
}
final gbReceiptExporterProvider=Provider<GbReceiptExporter>((ref)=>NativeGbReceiptExporter());
