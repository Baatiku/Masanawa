import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class P2pCaseNotesPage extends StatefulWidget {
 const P2pCaseNotesPage({super.key,required this.currentSession,required this.load,required this.add});
 final String? Function() currentSession;
 final Future<Map<String,dynamic>> Function() load;
 final Future<void> Function(String) add;
 @override State<P2pCaseNotesPage> createState()=>_NotesState();
}
class _NotesState extends State<P2pCaseNotesPage>{
 final _details=TextEditingController();String? _session,_error;Map<String,dynamic>? _data;bool _busy=false,_gone=false,_uncertain=false;Timer? _timer;
 bool get _same=>mounted&&!_gone&&_session!=null&&widget.currentSession()==_session;
 @override void initState(){super.initState();_session=widget.currentSession();_refresh();_timer=Timer.periodic(const Duration(seconds:1),(_){if(!_same)_clear();});}
 @override void dispose(){_timer?.cancel();_details.dispose();super.dispose();}
 void _clear(){if(!mounted||_gone)return;_timer?.cancel();_details.clear();setState((){_gone=true;_data=null;_error=null;});}
 Future<Map<String,dynamic>> _read()async{
  final data=await widget.load().timeout(const Duration(seconds:20));if(!_same)throw StateError('Session changed');
  if(data['items'] is! List||(data['items'] as List).length>50||data['canAdd'] is! bool||data['staffOnly']!=true)throw const FormatException();
  for(final item in data['items'] as List){if(item is! Map||item['note_id'] is! String||item['details'] is! String||item['is_own'] is! bool||DateTime.tryParse('${item['created_at']}')==null)throw const FormatException();}
  setState(()=>_data=data);return data;
 }
 bool _original(Map<String,dynamic> data)=>(data['items'] as List).any((r)=>(r as Map)['is_own']==true&&r['details']==_details.text.trim());
 void _fail(Object error){if(!_same)return;if(error is DioException&&[401,403,404].contains(error.response?.statusCode)){_clear();}else{setState(()=>_error='Case note is not confirmed. Refresh the original before retrying.');}}
 Future<void> _refresh()async{if(_busy||!_same)return;setState((){_busy=true;_data=null;_error=null;});try{final data=await _read();if(_same&&_uncertain&&_original(data))setState((){_uncertain=false;_details.clear();});}catch(e){_fail(e);}finally{if(_same)setState(()=>_busy=false);}}
 bool get _valid=>_details.text.trim().runes.length>=10&&_details.text.trim().runes.length<=2000&&!RegExp(r'[\x00-\x08\x0b\x0c\x0e-\x1f\x7f\u202a-\u202e\u2066-\u2069]').hasMatch(_details.text);
 Future<void> _add()async{
  if(_busy||!_same||!_valid)return;setState((){_busy=true;_error=null;});
  try{final data=await _read();if(!_same)return;
   if(!_original(data)){if(data['canAdd']!=true){setState(()=>_error='This case has reached its note limit. Existing records remain available.');return;}await widget.add(_details.text.trim()).timeout(const Duration(seconds:20));if(!_same)return;}
   final original=await _read();if(!_same)return;if(!_original(original))throw StateError('Original note not found');setState((){_uncertain=false;_details.clear();});
  }catch(e){if(_same){setState(()=>_uncertain=!(e is DioException&&[409,422,429].contains(e.response?.statusCode)));_fail(e);}}finally{if(_same)setState(()=>_busy=false);}
 }
 String _time(Object? value){final date=DateTime.parse('$value').toLocal(),l=MaterialLocalizations.of(context);return '${l.formatCompactDate(date)} ${l.formatTimeOfDay(TimeOfDay.fromDateTime(date))}';}
 @override Widget build(BuildContext context)=>Scaffold(appBar:AppBar(title:const Text('Private case notes')),body:_gone?const Center(child:Text('Admin access changed. Reopen the case.')):ListView(padding:const EdgeInsets.all(16),children:[
  const Text('For authorized support staff only. Notes cannot be edited or removed here. A note is not payment proof or permission to release or refund assets.'),
  if(_busy)const LinearProgressIndicator(),if(_error!=null)Semantics(liveRegion:true,child:Text(_error!)),
  OutlinedButton(onPressed:_busy?null:_refresh,child:Text(_uncertain?'Check original note':'Refresh case notes')),
  if(_data!=null)...[
   if((_data!['items'] as List).isEmpty)const Text('No private case notes.'),
   for(final item in _data!['items'] as List)Card(child:Padding(padding:const EdgeInsets.all(12),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('${item['is_own']==true?'You':'Support staff'} · ${_time(item['created_at'])}'),SelectableText('${item['details']}'),Text('Receipt: ${item['note_id']}')]))),
   if(_data!['canAdd']==true||_uncertain)...[
    TextField(controller:_details,enabled:!_busy&&!_uncertain,maxLength:2000,minLines:3,maxLines:6,onChanged:(_)=>setState((){}),decoration:const InputDecoration(labelText:'Case note',helperText:'Use 10–2000 characters. Never include passwords or codes.')),
    FilledButton(onPressed:_busy||!_valid?null:_add,child:Text(_uncertain?'Retry original note':'Save private note')),
   ]else const Text('Note limit reached. Existing investigation records remain available.'),
  ],
 ]));
}
