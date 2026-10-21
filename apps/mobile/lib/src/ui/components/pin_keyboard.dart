import 'package:flutter/material.dart';

/// Accessible numeric input only; the server verifies the exact challenge.
/// This component stores no PIN and never interprets biometric success.
class PinKeyboard extends StatelessWidget {
  const PinKeyboard({super.key,required this.onDigit,required this.onDelete,required this.onCancel,this.enabled=true});
  final ValueChanged<String> onDigit;
  final VoidCallback onDelete,onCancel;
  final bool enabled;
  @override
  Widget build(BuildContext context)=>LayoutBuilder(builder:(context,box)=>Wrap(children:[
    for(final key in ['1','2','3','4','5','6','7','8','9','Cancel','0','Delete'])
      SizedBox(width:box.maxWidth/3,child:Semantics(button:true,label:key,child:TextButton(
        onPressed:!enabled?null:()=>key=='Cancel'?onCancel():key=='Delete'?onDelete():onDigit(key),
        style:TextButton.styleFrom(minimumSize:const Size(64,56)),
        child:key=='Delete'?const Icon(Icons.backspace_outlined):Text(key,textAlign:TextAlign.center),
      ))),
  ]));
}
