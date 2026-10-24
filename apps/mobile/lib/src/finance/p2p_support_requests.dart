import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class P2pSupportRequestsPage extends StatefulWidget {
 const P2pSupportRequestsPage({super.key,required this.expectedUserId,required this.currentUserId,required this.load,required this.respond});
 final String expectedUserId;final String? Function() currentUserId;
 final Future<Map<String,dynamic>> Function() load;
 final Future<void> Function(String,String) respond;
 @override State<P2pSupportRequestsPage> createState()=>_RequestsState();
}
class _RequestsState extends State<P2pSupportRequestsPage>{
 final _details=TextEditingController();Map<String,dynamic>? _data;String? _selected,_error;bool _busy=false,_gone=false,_uncertain=false;Timer? _timer;
 bool get _same=>mounted&&!_gone&&widget.currentUserId()==widget.expectedUserId;
 @override void initState(){super.initState();_refresh();_timer=Timer.periodic(const Duration(seconds:1),(_){if(!_same)_clear();});}
 @override void dispose(){_timer?.cancel();_details.dispose();super.dispose();}
 void _clear(){if(!mounted||_gone)return;_timer?.cancel();_details.clear();setState((){_gone=true;_data=null;_selected=null;_error=null;});}
 Future<Map<String,dynamic>> _read()async{
  final data=await widget.load().timeout(const Duration(seconds:20));if(!_same)throw StateError('Access changed');
  if(data['state'] is! String||data['items'] is! List||(data['items'] as List).length>20)throw const FormatException();
  for(final row in data['items'] as List){if(row is! Map||row['request_id'] is! String||row['instruction'] is! String||DateTime.tryParse('${row['due_at']}')==null||(row['response_id']!=null&&row['response_details'] is! String))throw const FormatException();}
  setState(()=>_data=data);return data;
 }
 void _fail(Object error){if(!_same)return;if(error is DioException&&[401,403,404].contains(error.response?.statusCode)){_clear();}else{setState(()=>_error='Support requests unavailable. Check the original before retrying.');}}
 Future<void> _refresh()async{
  if(_busy||!_same)return;setState((){_busy=true;_data=null;_error=null;});
  try{final data=await _read();if(!_same)return;final accepted=(data['items'] as List).any((r)=>(r as Map)['request_id']==_selected&&r['response_id']!=null);if(accepted)setState((){_uncertain=false;_selected=null;_details.clear();});}catch(e){_fail(e);}finally{if(_same)setState(()=>_busy=false);}
 }
 bool get _valid=>_details.text.trim().runes.length>=10&&_details.text.trim().runes.length<=2000&&!RegExp(r'[\x00-\x08\x0b\x0c\x0e-\x1f\x7f\u202a-\u202e\u2066-\u2069]').hasMatch(_details.text);
 Future<void> _send()async{
  final id=_selected,text=_details.text.trim();if(_busy||!_same||id==null||!_valid)return;
  setState((){_busy=true;_error=null;});
  try{
   final data=await _read();if(!_same)return;final rows=(data['items'] as List).where((r)=>(r as Map)['request_id']==id).toList();
   if(rows.isEmpty){setState(()=>_error='This request is no longer available. Refresh the original case.');return;}
   if((rows.single as Map)['response_id']!=null){setState((){_uncertain=false;_selected=null;_details.clear();});return;}
   if(data['state']!='disputed'){setState((){_error='This request cannot receive a new response in the current order state.';_uncertain=false;_selected=null;_details.clear();});return;}
   if((rows.single as Map)['response_id']==null){await widget.respond(id,text).timeout(const Duration(seconds:20));if(!_same)return;}
   final original=await _read();if(!_same)return;
   if(!(original['items'] as List).any((r)=>(r as Map)['request_id']==id&&r['response_id']!=null))throw StateError('Receipt not confirmed');
   setState((){_uncertain=false;_selected=null;_details.clear();});
  }catch(e){if(_same){setState(()=>_uncertain=!(e is DioException&&[409,422,429].contains(e.response?.statusCode)));_fail(e);}}finally{if(_same)setState(()=>_busy=false);}
 }
 String _date(Object? raw){final at=DateTime.parse('$raw').toLocal(),l=MaterialLocalizations.of(context);return '${l.formatCompactDate(at)} ${l.formatTimeOfDay(TimeOfDay.fromDateTime(at))}';}
 @override Widget build(BuildContext context)=>Scaffold(appBar:AppBar(title:const Text('Support requests')),body:_gone?const Center(child:Text('Access changed. Reopen P2P.')):ListView(padding:const EdgeInsets.all(16),children:[
  const Text('Only requests assigned to you appear here. Response windows guide support review; they do not release or refund assets. Attach documents from the original order’s Attach evidence action.'),
  if(_busy)const LinearProgressIndicator(),if(_error!=null)Semantics(liveRegion:true,child:Text(_error!)),
  OutlinedButton(onPressed:_busy?null:_refresh,child:Text(_uncertain?'Check original response':'Refresh requests')),
  if(_data!=null&&( _data!['items'] as List).isEmpty)const Text('No support requests assigned to you.'),
  for(final row in _data?['items'] as List? ?? const [])Card(child:Padding(padding:const EdgeInsets.all(12),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
   SelectableText('${row['instruction']}'),Text('Response requested by ${_date(row['due_at'])}'),
   if(row['overdue']==true)const Text('Response window passed. You can still respond while the dispute is open.'),
   if(row['response_id']!=null)...[const Text('Your original response'),SelectableText('${row['response_details']}'),Text('Receipt: ${row['response_id']}')]
   else if(_data!['state']=='disputed')TextButton(onPressed:_busy||_uncertain?null:()=>setState(()=>_selected='${row['request_id']}'),child:const Text('Respond')),
  ]))),
  if(_selected!=null)...[
   TextField(controller:_details,enabled:!_busy&&!_uncertain,maxLength:2000,minLines:3,maxLines:6,onChanged:(_)=>setState((){}),decoration:const InputDecoration(labelText:'Response',helperText:'Use 10–2000 characters. Never include passwords or codes.')),
   FilledButton(onPressed:_busy||!_valid?null:_send,child:Text(_uncertain?'Retry original response':'Send response')),
  ],
 ]));
}
