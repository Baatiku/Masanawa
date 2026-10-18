import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// One-time code for an exact reviewed financial action. Its server-issued
/// grant is bound to the financial request and cannot be reused.
class WalletStepUpPage extends StatefulWidget {
  const WalletStepUpPage({super.key, this.bankDetails = false});
  final bool bankDetails;

  @override
  State<WalletStepUpPage> createState()=>_WalletStepUpPageState();
}

class _WalletStepUpPageState extends State<WalletStepUpPage> {
  final _code=TextEditingController();

  @override
  void dispose() {
    _code.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar:AppBar(title:Text(widget.bankDetails
      ? 'Verify bank details' : 'Verify withdrawal')),
    body:SafeArea(child:ListView(
      padding:const EdgeInsets.all(20),
      children:[
        const Icon(Icons.verified_user_outlined,size:44),
        const SizedBox(height:16),
        Text(widget.bankDetails?'Approve bank details':'Approve this withdrawal',
          style:Theme.of(context).textTheme.titleLarge),
        const SizedBox(height:8),
        Text(widget.bankDetails
          ? 'Enter the six-digit code sent to your linked email. '
            'This approval is only for the selected receiving bank and '
            'account number, expires after five minutes, and can be used once.'
          : 'Enter the six-digit code sent to your linked email. '
            'The approval is valid only for the reviewed withdrawal, '
            'expires after five minutes, and can be used once.'),
        const SizedBox(height:20),
        TextField(
          key:const Key('withdrawal-step-up-code'),
          controller:_code,
          keyboardType:TextInputType.number,
          obscureText:true,
          autofillHints:const [AutofillHints.oneTimeCode],
          inputFormatters:[FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(6)],
          decoration:const InputDecoration(
            labelText:'Six-digit email code',border:OutlineInputBorder()),
          onChanged:(_)=>setState((){}),
        ),
        const SizedBox(height:20),
        FilledButton(
          onPressed:_code.text.length!=6?null:
            ()=>Navigator.of(context).pop(_code.text),
          child:const Text('Verify and proceed'),
        ),
      ],
    )),
  );

}
