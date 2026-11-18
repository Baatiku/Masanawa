import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/providers.dart';
import '../../state/session_state.dart';

/// Both current AND new contact must receive independent single-use OTPs.
class ChangeAccountContactScreen extends ConsumerStatefulWidget {
  const ChangeAccountContactScreen({super.key,required this.channel});
  final String channel;

  @override
  ConsumerState<ChangeAccountContactScreen> createState()=>_ChangeAccountContactScreenState();
}

class _ChangeAccountContactScreenState extends ConsumerState<ChangeAccountContactScreen> {
  final _contact=TextEditingController(),_old=TextEditingController(),_new=TextEditingController();
  bool _sending=false,_sent=false,_done=false;
  String? _error,_owner;

  bool get _active {
    final session=ref.read(sessionProvider);
    return session is SessionSignedIn && session.user.id==_owner;
  }

  @override
  void initState(){
    super.initState();
    final session=ref.read(sessionProvider);
    if(session is SessionSignedIn)_owner=session.user.id;
  }

  @override
  void dispose(){
    _contact.dispose();_old.dispose();_new.dispose();
    super.dispose();
  }

  Future<void> _start() async {
    if(_sending||!_active)return;
    final contact=_contact.text.trim();
    if(contact.isEmpty){setState(()=>_error='Enter the new contact information.');return;}
    setState(() {_sending=true;_error=null;});
    try {
      await ref.read(apiClientProvider).startContactChange(
        channel:widget.channel,nextIdentifier:contact);
      if(mounted&&_active)setState(() {_sent=true;_old.clear();_new.clear();});
    }catch(_) {
      if(mounted&&_active)setState(()=>_error=
        'Could not send codes to both contacts. Verify they are available and try again.');
    }finally {
      if(mounted)setState(()=>_sending=false);
    }
  }

  Future<void> _confirm() async {
    if(_sending||!_active)return;
    if(_old.text.length!=6||_new.text.length!=6) {
      setState(()=>_error='Enter both six-digit verification codes.');
      return;
    }
    setState(() {_sending=true;_error=null;});
    try {
      await ref.read(apiClientProvider).confirmContactChange(
        channel:widget.channel,nextIdentifier:_contact.text.trim(),
        oldCode:_old.text,newCode:_new.text);
      if(!mounted||!_active)return;
      setState(()=>_done=true);
      // The server already revoked every session in the same transaction
      // that retired the old identity. Complete the local sign-out.
      await ref.read(sessionProvider.notifier).logout();
      if(mounted)context.go('/phone-login');
    }catch(_) {
      if(mounted&&_active)setState(()=>_error=
        'Change not confirmed. Codes may be incorrect, expired, or the new contact belongs to another account.');
    }finally {
      if(mounted)setState(()=>_sending=false);
    }
  }

  Widget _code(TextEditingController controller,String label)=>Padding(
    padding:const EdgeInsets.only(top:12),
    child:TextField(
      controller:controller,
      keyboardType:TextInputType.number,
      inputFormatters:[FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(6)],
      decoration:InputDecoration(labelText:label,border:const OutlineInputBorder()),
    ));

  @override
  Widget build(BuildContext context){
    final email=widget.channel=='email';
    final session=ref.watch(sessionProvider);
    final current=session is SessionSignedIn?
      (email?session.user.email:session.user.phone):null;
    return Scaffold(
      appBar:AppBar(title:Text(email?'Change email':'Change phone number')),
      body:ListView(padding:const EdgeInsets.all(20),children:[
        Text('Protect your account',style:Theme.of(context).textTheme.titleLarge),
        const SizedBox(height:8),
        Text('Existing ${email?'email':'phone'}: ${current??'Not linked'}'),
        const Text('We will send separate verification codes to both your existing '
          'and new contact. Once verified, old sign-in methods and active sessions '
          'will be revoked. You must sign in again.'),
        const SizedBox(height:16),
        TextField(
          key:const Key('change-contact-target'),
          controller:_contact,
          enabled:!_sent&&!_sending,
          keyboardType:email?TextInputType.emailAddress:TextInputType.phone,
          decoration:InputDecoration(
            labelText:email?'New email address':'New phone (+country code)',
            border:const OutlineInputBorder()),
        ),
        if(_sent&&!_done) ...[
          _code(_old,'Code sent to current contact'),
          _code(_new,'Code sent to new contact'),
          const SizedBox(height:16),
          FilledButton(
            onPressed:_sending?null:_confirm,
            child:Text(_sending?'Updating…':'Verify both and change contact'),
          ),
          TextButton(
            onPressed:_sending?null:()=>setState(() {
              _sent=false;_error=null;_old.clear();_new.clear();
            }),
            child:const Text('Change target or resend codes'),
          ),
        ] else if(!_done)
          Padding(
            padding:const EdgeInsets.only(top:18),
            child:FilledButton(onPressed:_sending?null:_start,
              child:Text(_sending?'Sending…':'Send two verification codes')),
          ),
        if(_error!=null) ...[
          const SizedBox(height:12),
          Text(_error!,style:TextStyle(color:Theme.of(context).colorScheme.error)),
        ],
        if(_done)const Text('Your contact was updated. Please sign in again.'),
      ]),
    );
  }
}
