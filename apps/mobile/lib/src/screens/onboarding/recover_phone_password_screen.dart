import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/providers.dart';

/// No password reset from just a phone number or remembered device ID.
/// Recovery requires an existing account and a delivered, single-use SMS code.
class RecoverPhonePasswordScreen extends ConsumerStatefulWidget {
  const RecoverPhonePasswordScreen({super.key,required this.phone});
  final String phone;

  @override
  ConsumerState<RecoverPhonePasswordScreen> createState() => _RecoverPhonePasswordScreenState();
}

class _RecoverPhonePasswordScreenState extends ConsumerState<RecoverPhonePasswordScreen> {
  final _code=TextEditingController();
  final _password=TextEditingController();
  final _confirm=TextEditingController();
  bool _busy=false;
  bool _sent=false;
  bool _done=false;
  String? _error;

  @override
  void dispose() {
    _code.dispose();
    _password.dispose();
    _confirm.dispose();
    super.dispose();
  }

  Future<void> _send() async {
    if(_busy)return;
    setState(() {_busy=true;_error=null;});
    try {
      await ref.read(apiClientProvider).sendRecoveryCode(widget.phone);
      if(mounted)setState(() {_sent=true;_code.clear();});
    } catch(_) {
      if(mounted)setState(()=>_error='Could not send a recovery code. '
        'SMS recovery may be unavailable for this account. Try again later or contact support.');
    } finally {
      if(mounted)setState(()=>_busy=false);
    }
  }

  Future<void> _complete() async {
    if(_busy)return;
    final code=_code.text.trim();
    final password=_password.text.trim();
    if(!RegExp(r'^\d{6}$').hasMatch(code) ||
       !RegExp(r'^\d{6}$').hasMatch(password)) {
      setState(()=>_error='The recovery code and new password must each contain six digits.');
      return;
    }
    if(password!=_confirm.text.trim()) {
      setState(()=>_error='The passwords do not match.');
      return;
    }
    setState(() {_busy=true;_error=null;});
    try {
      await ref.read(apiClientProvider).confirmRecoveryCode(widget.phone,code,password);
      if(mounted)setState(() {_done=true;_code.clear();_password.clear();_confirm.clear();});
    } catch(_) {
      if(mounted)setState(()=>_error='Recovery could not be completed. '
        'The code may have expired, or your new password was used recently. Request another code.');
    } finally {
      if(mounted)setState(()=>_busy=false);
    }
  }

  Widget _pin(TextEditingController controller,String name) => Padding(
    padding:const EdgeInsets.only(top:12),
    child:TextField(
      controller:controller,
      obscureText:true,
      keyboardType:TextInputType.number,
      inputFormatters:[FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(6)],
      decoration:InputDecoration(labelText:name,border:const OutlineInputBorder()),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:const Text('Recover password')),
      body:ListView(
        padding:const EdgeInsets.all(20),
        children:[
          Text(_done ? 'Password updated' : 'Recover your six-digit password',
            style:Theme.of(context).textTheme.titleLarge),
          const SizedBox(height:10),
          Text(_done
            ? 'All previous sessions were signed out. Return to sign-in and enter your new password.'
            : 'For ${widget.phone}, request a one-time SMS code. '
              'This is required to protect your account and wallet.'),
          const SizedBox(height:20),
          if(_sent && !_done) ...[
            _pin(_code,'SMS recovery code'),
            _pin(_password,'New six-digit password'),
            _pin(_confirm,'Confirm new password'),
            const SizedBox(height:16),
            FilledButton(onPressed:_busy?null:_complete,
              child:Text(_busy?'Updating…':'Update password')),
            TextButton(onPressed:_busy?null:_send,
              child:const Text('Request another code')),
          ] else if(!_done)
            FilledButton(onPressed:_busy?null:_send,
              child:Text(_busy?'Sending…':'Send recovery code')),
          if(_done)
            FilledButton(onPressed:()=>Navigator.of(context).pop(),
              child:const Text('Return to sign-in')),
          if(_error!=null) ...[
            const SizedBox(height:12),
            Text(_error!,style:TextStyle(color:Theme.of(context).colorScheme.error)),
          ],
        ],
      ),
    );
  }
}
