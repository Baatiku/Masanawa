import 'dart:async';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class P2pEvidenceRejected implements Exception { const P2pEvidenceRejected(); }

class P2pEvidenceFile {
  const P2pEvidenceFile(this.bytes,this.contentType);
  final Uint8List bytes;
  final String contentType;
  Map<String,dynamic> get metadata=>{'version':1,'sha256':sha256.convert(bytes).toString(),'contentType':contentType,'bytes':bytes.length};
}
class P2pEvidenceUploadPage extends StatefulWidget {
  const P2pEvidenceUploadPage({super.key,required this.expectedUserId,required this.currentUserId,required this.pick,required this.restore,required this.persist,required this.original,required this.upload});
  final String expectedUserId;
  final String? Function() currentUserId;
  final Future<P2pEvidenceFile?> Function() pick;
  final Future<Map<String,dynamic>?> Function() restore;
  final Future<void> Function(Map<String,dynamic>?) persist;
  /// Null means an authenticated, authoritative original-not-found response.
  final Future<Map<String,dynamic>?> Function(String) original;
  final Future<void> Function(P2pEvidenceFile) upload;
  @override State<P2pEvidenceUploadPage> createState()=>_EvidenceState();
}
class _EvidenceState extends State<P2pEvidenceUploadPage> {
  Map<String,dynamic>? _pending,_receipt;
  P2pEvidenceFile? _file;
  bool _busy=true,_revoked=false,_ready=false;
  String? _message;
  Timer? _timer;
  bool get _owner=>mounted&&!_revoked&&widget.currentUserId()==widget.expectedUserId;
  @override void initState(){super.initState();_timer=Timer.periodic(const Duration(milliseconds:250),(_){if(!_owner&&mounted&&!_revoked)setState((){_revoked=true;_file=null;_pending=null;_receipt=null;});});_restore();}
  @override void dispose(){_timer?.cancel();_file=null;super.dispose();}
  bool _valid(Map<String,dynamic> p)=>p.length==4&&p['version']==1&&p['sha256'] is String&&RegExp(r'^[a-f0-9]{64}$').hasMatch(p['sha256'] as String)&&const {'image/png','image/jpeg','image/webp','application/pdf'}.contains(p['contentType'])&&p['bytes'] is int&&(p['bytes'] as int)>0&&(p['bytes'] as int)<=2*1024*1024;
  void _revoke(){if(!mounted)return;setState((){_revoked=true;_file=null;_pending=null;_receipt=null;_message=null;});}
  bool _accessLost(Object error)=>error is DioException&&[401,403].contains(error.response?.statusCode);
  Future<void> _restore()async{try{final p=await widget.restore();if(!_owner)return;if(p!=null&&!_valid(p))throw StateError('Invalid saved retry');_pending=p;_ready=true;if(p!=null)await _recover();}catch(error){if(_accessLost(error)){_revoke();}else if(_owner){_message='Retry details could not be read. Reopen this screen to recover.';}}finally{if(_owner)setState(()=>_busy=false);}}
  Future<bool> _recover()async{
    if(!_owner||_pending==null)return false;
    final result=await widget.original(_pending!['sha256'] as String);
    if(!_owner)return false;
    if(result==null){_message='No recorded attachment found. Choose the original file to retry.';return false;}
    if(result['sha256']!=_pending!['sha256']||result['evidenceId'] is! String)throw StateError('Invalid receipt');
    // Keep the identity until encrypted metadata deletion has completed.
    await widget.persist(null);if(!_owner)return false;
    _receipt=result;_pending=null;_file=null;_message=null;return true;
  }
  Future<void> _run(Future<void> Function() action)async{
    if(_busy||!_owner)return;setState(()=>_busy=true);
    try{await action();}catch(error){if(_accessLost(error)){_revoke();}else if(_owner){_message='Attachment outcome is uncertain. Check the original before retrying.';}}
    finally{if(_owner)setState(()=>_busy=false);}
  }
  Future<void> _choose()async{
    final file=await widget.pick();if(!_owner||file==null)return;
    final metadata=file.metadata;if(!_valid(metadata))throw StateError('Unsupported file');
    if(_pending!=null&&(_pending!['sha256']!=metadata['sha256']||_pending!['contentType']!=metadata['contentType']||_pending!['bytes']!=metadata['bytes'])){_file=null;_message='Choose the same original file. A different file cannot replace an uncertain upload.';return;}
    _file=file;_receipt=null;_message=null;
  }
  Future<void> _attach()async{
    final file=_file;if(file==null||!_owner)return;
    _pending??=file.metadata;
    // Failure to persist prevents a network upload; bytes remain memory-only.
    await widget.persist(_pending);if(!_owner)return;
    if(await _recover()||!_owner)return;
    try{await widget.upload(file);}on P2pEvidenceRejected{
      if(!_owner)return;await widget.persist(null);if(!_owner)return;
      _pending=null;_file=null;_message='File was rejected. Choose a valid PNG, JPG, WEBP or PDF.';return;
    }
    if(!_owner)return;
    if(!await _recover()&&_owner)_message='Waiting for the original receipt. Check again before retrying.';
  }
  @override Widget build(BuildContext context)=>Scaffold(appBar:AppBar(title:const Text('Attach evidence')),body:!_owner?const Center(child:Text('Account changed. Reopen this order.')):ListView(padding:const EdgeInsets.all(16),children:[
    const Text('PNG, JPG, WEBP or PDF · up to 2 MB'),const SizedBox(height:12),
    const Text('Attachments support review. They do not verify payment or release assets.'),
    if(_busy)const LinearProgressIndicator(),
    if(_message!=null)Padding(padding:const EdgeInsets.symmetric(vertical:12),child:Text(_message!)),
    if(_receipt!=null)...[const Text('Attachment recorded'),SelectableText('Receipt: ${_receipt!['evidenceId']}')],
    if(_pending!=null)OutlinedButton(onPressed:_busy?null:()=>_run(()async{await _recover();}),child:const Text('Check original attachment')),
    OutlinedButton(onPressed:_busy||!_ready?null:()=>_run(_choose),child:Text(_pending==null?'Choose file':'Choose original file')),
    if(_file!=null)Text('${_file!.bytes.length} bytes · ${_file!.contentType}'),
    FilledButton(onPressed:_busy||!_ready||_file==null?null:()=>_run(_attach),child:const Text('Attach selected file')),
  ]));
}
