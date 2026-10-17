import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/providers.dart';
import '../../state/session_state.dart';

/// Explicit verified email binding. No modal or unverified ownership claims.
/// First prove an authenticated session, then possession of the new mailbox.
class VerifyAccountEmailScreen extends ConsumerStatefulWidget {
  const VerifyAccountEmailScreen({super.key});

  @override
  ConsumerState<VerifyAccountEmailScreen> createState() => _VerifyAccountEmailScreenState();
}

class _VerifyAccountEmailScreenState extends ConsumerState<VerifyAccountEmailScreen> {
  final _email=TextEditingController();
  final _code=TextEditingController();
  bool _busy=false;
  bool _codeSent=false;
  bool _completed=false;
  String? _error;
  String? _verified;
  String? _owner;

  @override
  void initState() {
    super.initState();
    final state=ref.read(sessionProvider);
    if(state is SessionSignedIn) {
      _owner=state.user.id;
      _email.text=state.user.email ?? '';
    }
  }

  @override
  void dispose() {
    _email.dispose();
    _code.dispose();
    super.dispose();
  }

  bool get _sameAccount {
    final state=ref.read(sessionProvider);
    return state is SessionSignedIn && state.user.id==_owner;
  }

  Future<void> _send() async {
    if(_busy || !_sameAccount) return;
    final address=_email.text.trim().toLowerCase();
    if(!RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$').hasMatch(address)) {
      setState(()=>_error='Enter a valid email address.');
      return;
    }
    setState(() {_busy=true; _error=null;});
    try {
      await ref.read(apiClientProvider).startVerifiedEmailLink(address);
      if(!mounted || !_sameAccount) return;
      setState(() {_codeSent=true; _code.clear(); _error=null;});
    } catch(_) {
      if(mounted && _sameAccount) setState(() {
        _error='Could not send the verification code. Check your connection and try again.';
      });
    } finally {
      if(mounted) setState(()=>_busy=false);
    }
  }

  Future<void> _confirm() async {
    if(_busy || !_sameAccount) return;
    final code=_code.text.trim();
    if(!RegExp(r'^\d{6}$').hasMatch(code)) {
      setState(()=>_error='Enter the six-digit code sent to your email.');
      return;
    }
    setState(() {_busy=true; _error=null;});
    try {
      final verified=await ref.read(apiClientProvider).confirmVerifiedEmailLink(
        email:_email.text.trim().toLowerCase(),code:code,
      );
      if(!mounted || !_sameAccount) return;
      setState(() {_completed=true;_verified=verified;_error=null;});
      await ref.read(sessionProvider.notifier).refresh();
    } catch(_) {
      if(mounted && _sameAccount) setState(() {
        _error='Verification failed or the code expired. Check the code or request a new one.';
      });
    } finally {
      if(mounted) setState(()=>_busy=false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:const Text('Verify email address')),
      body:ListView(
        padding:const EdgeInsets.all(20),
        children:[
          const Icon(Icons.mark_email_read_outlined,size:40),
          const SizedBox(height:16),
          Text(_completed ? 'Email verified' : 'Connect your email securely',
            style:Theme.of(context).textTheme.titleLarge),
          const SizedBox(height:10),
          Text(_completed
            ? '${_verified ?? 'Your address'} is connected to your account.'
            : 'You can use a verified email to help protect your Masanawa account. '
              'We will send a one-time code to prove you control the address.'),
          const SizedBox(height:20),
          if(!_completed) ...[
            TextField(
              key:const Key('account-email-address'),
              controller:_email,
              enabled:!_busy && !_codeSent,
              keyboardType:TextInputType.emailAddress,
              autofillHints:const [AutofillHints.email],
              decoration:const InputDecoration(labelText:'Email address',border:OutlineInputBorder()),
            ),
            if(_codeSent) ...[
              const SizedBox(height:14),
              TextField(
                key:const Key('account-email-code'),
                controller:_code,
                enabled:!_busy,
                keyboardType:TextInputType.number,
                inputFormatters:[FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(6)],
                decoration:const InputDecoration(
                  labelText:'Six-digit email code',border:OutlineInputBorder()),
              ),
              const SizedBox(height:12),
              FilledButton(
                onPressed:_busy ? null : _confirm,
                child:Text(_busy ? 'Verifying…' : 'Verify and connect'),
              ),
              TextButton(
                onPressed:_busy ? null : () => setState(() {
                  _codeSent=false;_code.clear();_error=null;
                }),
                child:const Text('Change address or resend code'),
              ),
            ] else
              Padding(
                padding:const EdgeInsets.only(top:12),
                child:FilledButton(
                  onPressed:_busy ? null : _send,
                  child:Text(_busy ? 'Sending…' : 'Send verification code'),
                ),
              ),
          ],
          if(_error!=null) ...[
            const SizedBox(height:12),
            Text(_error!,style:TextStyle(color:Theme.of(context).colorScheme.error)),
          ],
          if(_completed)
            Padding(
              padding:const EdgeInsets.only(top:16),
              child:FilledButton(onPressed:()=>Navigator.of(context).pop(),
                child:const Text('Done')),
            ),
        ],
      ),
    );
  }
}
