import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/session_state.dart';
import 'gb_wallet_activity.dart';
import 'gb_wallet_summary.dart';
import 'gb_receipt_document.dart';
import 'gb_receipt_share.dart';

final gbReceiptDocumentBuilderProvider=Provider<Future<GbReceiptDocument> Function(GbActivityItem)>(
  (ref)=>buildGbReceiptDocument);

class GbReceiptActions extends ConsumerStatefulWidget {
  const GbReceiptActions({super.key,required this.owner,required this.entryId});
  final GbWalletOwner owner;final String entryId;
  @override ConsumerState<GbReceiptActions> createState()=>_GbReceiptActionsState();
}
class _GbReceiptActionsState extends ConsumerState<GbReceiptActions> {
  bool _busy=false;String? _error;CancelToken? _cancel;int _generation=0;
  bool get _current {
    if(!mounted)return false;
    final session=ref.read(sessionProvider);
    return session is SessionSignedIn&&session.user.id==widget.owner.accountId&&
      ref.read(sessionProvider.notifier).authorizationEpoch==widget.owner.authorizationEpoch;
  }
  @override void didUpdateWidget(covariant GbReceiptActions oldWidget){
    super.didUpdateWidget(oldWidget);
    if(oldWidget.owner!=widget.owner||oldWidget.entryId!=widget.entryId){
      _generation++;_cancel?.cancel();_busy=false;_error=null;
    }
  }
  @override void dispose(){_generation++;_cancel?.cancel();super.dispose();}
  Future<void> _preview()async{
    if(_busy||!_current)return;
    final generation=++_generation;
    setState((){_busy=true;_error=null;});
    _cancel=CancelToken();
    try{
      // The visible cached detail never authorizes an export by itself.
      final item=await ref.read(gbActivityTransportProvider).detail(entryId:widget.entryId,cancellation:_cancel);
      if(item.id!=widget.entryId||!const {'completed','reversed'}.contains(item.status))
        throw StateError('Receipt is not a posted entry');
      if(!_current||generation!=_generation)return;
      final document=await ref.read(gbReceiptDocumentBuilderProvider)(item);
      if(!_current||generation!=_generation)return;
      bool sharing=false;
      await showModalBottomSheet<void>(context:context,isScrollControlled:true,
        builder:(sheetContext)=>Consumer(builder:(context,watch,child){
          watch.watch(sessionProvider);
          if(!_current||generation!=_generation)
            return const SafeArea(child:Padding(padding:EdgeInsets.all(24),child:Text('Receipt unavailable after account change.')));
          return StatefulBuilder(builder:(context,setSheetState)=>SafeArea(
            child:SizedBox(height:MediaQuery.sizeOf(context).height*.9,
              child:Padding(padding:const EdgeInsets.all(16),child:Column(children:[
                Row(children:[const Expanded(child:Text('Wallet receipt')),
                  IconButton(tooltip:'Close receipt',onPressed:sharing?null:()=>Navigator.pop(sheetContext),icon:const Icon(Icons.close))]),
                Expanded(child:ListView(children:[for(final page in document.pngPages)
                  Padding(padding:const EdgeInsets.symmetric(vertical:8),child:Image.memory(page,
                    fit:BoxFit.contain,semanticLabel:'Masanawa receipt page'))])),
                if(sharing)const LinearProgressIndicator(),
                Wrap(spacing:12,runSpacing:8,children:[
                  for(final format in GbReceiptFormat.values)
                    FilledButton.icon(onPressed:sharing?null:()async{
                      if(!_current||generation!=_generation)return;
                      setSheetState(()=>sharing=true);
                      try{
                        final box=context.findRenderObject() as RenderBox?;
                        final origin=box==null?null:box.localToGlobal(Offset.zero)&box.size;
                        await ref.read(gbReceiptExporterProvider).share(document,format,
                          isCurrent:()=>_current&&generation==_generation,origin:origin);
                      }catch(_){
                        if(sheetContext.mounted&&_current)ScaffoldMessenger.of(sheetContext).showSnackBar(
                          const SnackBar(content:Text('Receipt sharing failed. Try again.')));
                      }finally{if(sheetContext.mounted&&_current)setSheetState(()=>sharing=false);}
                    },icon:Icon(format==GbReceiptFormat.pdf?Icons.picture_as_pdf_outlined:Icons.image_outlined),
                      label:Text(format==GbReceiptFormat.pdf?'Share PDF':'Share PNG')),
                ]),
              ]))),
          ));
        }));
    }catch(_){if(_current&&generation==_generation)setState(()=>_error='Receipt could not be verified. Retry when online.');}
    finally{if(mounted&&generation==_generation)setState(()=>_busy=false);}
  }
  @override Widget build(BuildContext context){
    ref.watch(sessionProvider);
    return Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
      FilledButton.icon(onPressed:_busy||!_current?null:_preview,
        icon:const Icon(Icons.receipt_long_outlined),label:Text(_busy?'Preparing receipt…':'Preview receipt')),
      if(_error!=null)Padding(padding:const EdgeInsets.only(top:8),child:Text(_error!)),
    ]);
  }
}
