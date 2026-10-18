import 'package:flutter/material.dart';
import '../core/admin_masana_api.dart';

/// Creator policy uses the same signed admin session as professional Masana.
/// It only changes future server-side quotes, never prior ledger entries.
class AdminCreatorPolicyPage extends StatefulWidget {
  const AdminCreatorPolicyPage({super.key,required this.api});
  final AdminMasanaApi api;
  @override
  State<AdminCreatorPolicyPage> createState()=>_AdminCreatorPolicyPageState();
}

class _AdminCreatorPolicyPageState extends State<AdminCreatorPolicyPage>{
  final _form=GlobalKey<FormState>();
  final _creation=TextEditingController();
  final _freeCharacters=TextEditingController();
  final _freeEdits=TextEditingController();
  final _edit=TextEditingController();
  final _share=TextEditingController();
  final _posts=TextEditingController();
  final _reason=TextEditingController();
  bool _loading=true,_saving=false;
  String? _error;
  int? _revision;
  @override
  void initState(){super.initState();_load();}
  @override
  void dispose(){
    for(final c in [_creation,_freeCharacters,_freeEdits,_edit,_share,_posts,_reason]){c.dispose();}
    super.dispose();
  }
  Future<void> _load()async{
    if(mounted)setState((){_loading=true;_error=null;});
    try{
      final v=await widget.api.creatorPolicy();
      if(!mounted)return;
      setState((){
        _revision=(v['revision'] as num?)?.toInt();
        _creation.text=v['creationMsnw']?.toString()??'5000';
        _freeCharacters.text=v['firstFreeCount']?.toString()??'1';
        _freeEdits.text=v['freeSubstantiveEdits']?.toString()??'3';
        _edit.text=v['paidEditMsnw']?.toString()??'100';
        _share.text=v['revenueShareBps']?.toString()??'3000';
        _posts.text=v['maxPostsWeekly']?.toString()??'2';
        _loading=false;
      });
    }catch(_){
      if(mounted)setState((){
        _loading=false;_error='Unable to load creator policy.';
      });
    }
  }
  Future<void> _save()async{
    if(!_form.currentState!.validate()||_saving)return;
    setState((){_saving=true;_error=null;});
    try{
      final values=<String,dynamic>{
        'creationMsnw':_creation.text.trim(),
        'firstFreeCount':int.parse(_freeCharacters.text.trim()),
        'freeSubstantiveEdits':int.parse(_freeEdits.text.trim()),
        'paidEditMsnw':_edit.text.trim(),
        'revenueShareBps':int.parse(_share.text.trim()),
        'maxPostsWeekly':int.parse(_posts.text.trim()),
        'reason':_reason.text.trim(),
      };
      final updated=await widget.api.setCreatorPolicy(values);
      if(!mounted)return;
      setState(()=>_revision=(updated['revision'] as num?)?.toInt());
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content:Text('Creator policy saved for future quotes.')));
      Navigator.pop(context,true);
    }catch(_){
      if(mounted)setState(()=>_error='Could not save policy. Check authorization and retry.');
    }finally{if(mounted)setState(()=>_saving=false);}
  }
  String? _integer(String? raw,int limit) {
    if(raw==null||!RegExp(r'^(0|[1-9][0-9]*)$').hasMatch(raw.trim()))
      return 'Enter a whole number';
    final value=int.tryParse(raw.trim());
    if(value==null||value>limit)return 'Enter a value between 0 and '+limit.toString();
    return null;
  }
  Widget _field(String label,TextEditingController controller,int max){
    return Padding(padding:const EdgeInsets.only(bottom:14),
      child:TextFormField(
        controller:controller,
        keyboardType:TextInputType.number,
        decoration:InputDecoration(labelText:label,border:const OutlineInputBorder()),
        validator:(value)=>_integer(value,max),
      ),
    );
  }
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar:AppBar(title:const Text('Creator fees & earnings')),
    body:_loading
      ?const Center(child:CircularProgressIndicator())
      :Form(
        key:_form,
        child:ListView(padding:const EdgeInsets.all(18),children:[
          Text('Policy revision '+(_revision?.toString()??'—'),
            style:Theme.of(context).textTheme.titleMedium),
          const SizedBox(height:10),
          const Text('Applies to new quotes. Existing charges and creator earnings are not rewritten.'),
          const SizedBox(height:20),
          _field('Additional Masana creation fee (MSNW)',_creation,1000000000),
          _field('Free Masana per account',_freeCharacters,10),
          _field('Free substantive edits per Masana',_freeEdits,100),
          _field('Subsequent edit fee (MSNW)',_edit,1000000000),
          _field('Creator share in basis points (3000 = 30%)',_share,10000),
          _field('Maximum weekly Status posts',_posts,21),
          TextFormField(
            controller:_reason,
            maxLength:300,
            decoration:const InputDecoration(labelText:'Reason for change',
              hintText:'Why is this policy changing?',border:OutlineInputBorder()),
            validator:(value)=>(value?.trim().length??0)<8?'Explain the change':null,
          ),
          if(_error!=null)Padding(padding:const EdgeInsets.only(top:10),
            child:Text(_error!,style:TextStyle(color:Theme.of(context).colorScheme.error))),
          const SizedBox(height:20),
          FilledButton(onPressed:_saving?null:_save,
            child:_saving?const CircularProgressIndicator():
              const Text('Save creator policy')),
          TextButton(onPressed:_saving?null:_load,child:const Text('Reload')),
        ]),
      ),
  );
}
