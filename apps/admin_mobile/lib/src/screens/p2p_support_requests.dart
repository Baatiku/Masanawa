import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class P2pStaffSupportRequests extends StatefulWidget {
 const P2pStaffSupportRequests({super.key,required this.currentSession,required this.load,required this.request});
 final String? Function() currentSession;
 final Future<Map<String,dynamic>> Function() load;
 final Future<void> Function(String,String,int) request;
 @override State<P2pStaffSupportRequests> createState()=>_StaffState();
}
class _StaffState extends State<P2pStaffSupportRequests>{
 final _instruction=TextEditingController();String? _session,_error;String _recipient='buyer';int _hours=24;bool _busy=false,_gone=false,_uncertain=false;Map<String,dynamic>? _data;Timer? _timer;
 bool get _same=>mounted&&!_gone&&_session!=null&&widget.currentSession()==_session;
 @override void initState(){super.initState();_session=widget.currentSession();_refresh();_timer=Timer.periodic(const Duration(seconds:1),(_){if(!_same)_clear();});}
 @override void dispose(){_timer?.cancel();_instruction.dispose();super.dispose();}
 void _clear(){if(!mounted||_gone)return;_timer?.cancel();_instruction.clear();setState((){_gone=true;_data=null;_error=null;});}
 Future<Map<String,dynamic>> _read()async{
  final data=await widget.load().timeout(const Duration(seconds:20));if(!_same)throw StateError('Session changed');
  if(data['state'] is! String||data['items'] is! List||(data['items'] as List).length>20)throw const FormatException();
  for(final row in data['items'] as List){if(row is! Map||row['request_id'] is! String||row['instruction'] is! String||!const ['buyer','seller'].contains(row['recipient_role'])||DateTime.tryParse('${row['due_at']}')==null)throw const FormatException();}
  setState(()=>_data=data);return data;
 }
 bool _original(Map<String,dynamic> data)=>(data['items'] as List).any((r)=>(r as Map)['is_own']==true&&r['instruction']==_instruction.text.trim()&&r['recipient_role']==_recipient&&r['window_hours']==_hours);
 void _fail(Object e){if(!_same)return;if(e is DioException&&[401,403,404].contains(e.response?.statusCode)){_clear();}else{setState(()=>_error='Request outcome is unconfirmed. Refresh the original case before retrying.');}}
 Future<void> _refresh()async{if(_busy||!_same)return;setState((){_busy=true;_data=null;_error=null;});try{final data=await _read();if(_same&&_uncertain&&_original(data))setState((){_uncertain=false;_instruction.clear();});}catch(e){_fail(e);}finally{if(_same)setState(()=>_busy=false);}}
 bool get _valid=>_instruction.text.trim().runes.length>=10&&_instruction.text.trim().runes.length<=2000&&!RegExp(r'[\x00-\x08\x0b\x0c\x0e-\x1f\x7f\u202a-\u202e\u2066-\u2069]').hasMatch(_instruction.text);
 Future<void> _send()async{if(_busy||!_same||!_valid)return;setState((){_busy=true;_error=null;});try{final data=await _read();if(!_same)return;if(!_original(data)){if(data['state']!='disputed'){setState(()=>_error='New requests require an open dispute.');return;}await widget.request(_recipient,_instruction.text.trim(),_hours).timeout(const Duration(seconds:20));if(!_same)return;}final original=await _read();if(!_same)return;if(!_original(original))throw StateError('Original receipt missing');setState((){_uncertain=false;_instruction.clear();});}catch(e){if(_same){setState(()=>_uncertain=!(e is DioException&&[409,422,429].contains(e.response?.statusCode)));_fail(e);}}finally{if(_same)setState(()=>_busy=false);}}
 String _date(Object? raw){final at=DateTime.parse('$raw').toLocal(),l=MaterialLocalizations.of(context);return '${l.formatCompactDate(at)} ${l.formatTimeOfDay(TimeOfDay.fromDateTime(at))}';}
 @override Widget build(BuildContext context)=>Scaffold(appBar:AppBar(title:const Text('Request supporting evidence')),body:_gone?const Center(child:Text('Admin access changed. Reopen the case.')):ListView(padding:const EdgeInsets.all(16),children:[
  const Text('Instructions and responses are private to assigned participants and authorized support staff. A response window never authorizes release or refund.'),
  if(_busy)const LinearProgressIndicator(),if(_error!=null)Text(_error!),OutlinedButton(onPressed:_busy?null:_refresh,child:Text(_uncertain?'Check original request':'Refresh requests')),
  if(_data!=null)...[
   if((_data!['items'] as List).isEmpty)const Text('No support evidence requests.'),
   for(final r in _data!['items'] as List)Card(child:Padding(padding:const EdgeInsets.all(12),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('Assigned to ${r['recipient_role']}'),SelectableText('${r['instruction']}'),Text('Receipt: ${r['request_id']}'),Text('Response requested by ${_date(r['due_at'])}'),if(r['response_id']!=null)...[const Text('Original participant response'),SelectableText('${r['response_details']}')]else Text(r['overdue']==true?'Response window passed; review remains manual.':'Awaiting response')]))),
   if(_data!['state']=='disputed'||_uncertain)...[
    DropdownButtonFormField<String>(initialValue:_recipient,isExpanded:true,decoration:const InputDecoration(labelText:'Request from'),items:const [DropdownMenuItem(value:'buyer',child:Text('Buyer')),DropdownMenuItem(value:'seller',child:Text('Seller'))],onChanged:_busy||_uncertain?null:(v)=>setState(()=>_recipient=v!)),
    DropdownButtonFormField<int>(initialValue:_hours,isExpanded:true,decoration:const InputDecoration(labelText:'Response window'),items:[for(final h in [24,48,72])DropdownMenuItem(value:h,child:Text('$h hours'))],onChanged:_busy||_uncertain?null:(v)=>setState(()=>_hours=v!)),
    TextField(controller:_instruction,enabled:!_busy&&!_uncertain,minLines:3,maxLines:6,maxLength:2000,onChanged:(_)=>setState((){}),decoration:const InputDecoration(labelText:'Evidence requested',helperText:'Be specific. Never ask for passwords or codes.')),
    FilledButton(onPressed:_busy||!_valid?null:_send,child:Text(_uncertain?'Retry original request':'Send evidence request')),
   ],
  ],
 ]));
}
