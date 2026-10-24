import 'package:flutter/material.dart';

/// The dialog owns its input for its entire route lifecycle. The route may
/// still animate/build after Navigator.pop completes its result future.
class HumanMessageEditDialog extends StatefulWidget {
  const HumanMessageEditDialog({super.key,required this.original});
  final String original;

  @override
  State<HumanMessageEditDialog> createState()=>_HumanMessageEditDialogState();
}

class _HumanMessageEditDialogState extends State<HumanMessageEditDialog> {
  late final TextEditingController input;
  @override
  void initState(){
    super.initState();
    input=TextEditingController(text:widget.original);
  }
  @override
  void dispose(){
    input.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)=>AlertDialog(
    title:const Text('Edit message'),
    content:TextField(
      key:const Key('human-edit-message-input'),
      controller:input,
      minLines:1,maxLines:6,maxLength:10000,
      decoration:const InputDecoration(hintText:'Edit your text'),
    ),
    actions:[
      TextButton(onPressed:()=>Navigator.pop(context),child:const Text('Cancel')),
      FilledButton(
        key:const Key('human-edit-message-save'),
        onPressed:(){
          final text=input.text.trim();
          if(text.isNotEmpty)Navigator.pop(context,text);
        },
        child:const Text('Save edit'),
      ),
    ],
  );
}
