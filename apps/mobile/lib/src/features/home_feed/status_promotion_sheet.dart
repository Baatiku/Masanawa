import 'package:flutter/material.dart';
import 'status_promotion_api.dart';

/// One compact budget review for a new paid text post or an existing Boost.
/// The quote and eligible balance always come from the server, never the UI.
class StatusPromotionSheet extends StatefulWidget {
  const StatusPromotionSheet({super.key,required this.api,this.postId,
    this.onRecharge});
  final StatusPromotionApi api;
  final String? postId;
  final Future<void> Function()? onRecharge;
  @override State<StatusPromotionSheet> createState()=>_StatusPromotionSheetState();
}

class _StatusPromotionSheetState extends State<StatusPromotionSheet> {
  final body=TextEditingController(),custom=TextEditingController();
  int views=100;
  bool busy=false;
  String? error;
  StatusPromotionQuote? reviewed;
  bool get boost=>widget.postId!=null;
  String t(String en,String ha)=>Localizations.localeOf(context).languageCode=='ha'?ha:en;
  @override void dispose(){body.dispose();custom.dispose();super.dispose();}
  void changeViews(int n){if(n<1||n>1000000)return;
    setState((){views=n;reviewed=null;error=null;});}
  Future<void> review() async {
    if(busy)return;
    final text=body.text.trim();
    if(!boost&&(text.isEmpty||text.length>5000)){
      setState(()=>error=t('Write a short promotion first.','Rubuta sakon talla tukuna.'));
      return;
    }
    setState((){busy=true;error=null;reviewed=null;});
    try{
      final quote=await widget.api.quote(postId:widget.postId,
        body:boost?null:text,targetViews:views);
      if(!mounted)return;
      setState(()=>reviewed=quote);
    }catch(_){if(mounted)setState(()=>error=t(
      'Could not get a verified price. Try again.',
      'Ba a samu farashin da aka tabbatar ba. Sake gwadawa.'));}
    finally{if(mounted)setState(()=>busy=false);}
  }
  Future<void> confirm() async {
    final quote=reviewed;if(quote==null||quote.insufficient||busy)return;
    setState((){busy=true;error=null;});
    try{
      final receipt=await widget.api.confirm(quote);
      if(mounted)Navigator.of(context).pop(receipt);
    }catch(_){if(mounted)setState(()=>error=t(
      'Not confirmed. Check your original receipt before another payment.',
      'Ba a tabbatar ba. Duba takardar asali kafin wani biya.'));}
    finally{if(mounted)setState(()=>busy=false);}
  }
  Future<void> recharge() async {
    if(busy||widget.onRecharge==null)return;
    await widget.onRecharge!();
    if(!mounted)return;
    // Returning from Wallet requires a fresh authoritative quote and a
    // separate user confirmation. This cannot auto-submit a purchase.
    await review();
  }
  @override Widget build(BuildContext context){
    final theme=Theme.of(context),quote=reviewed;
    return SafeArea(child:Padding(
      padding:EdgeInsets.only(bottom:MediaQuery.viewInsetsOf(context).bottom),
      child:ConstrainedBox(constraints:const BoxConstraints(maxHeight:560),
        child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(18,12,18,18),
          child:Column(crossAxisAlignment:CrossAxisAlignment.stretch,
            mainAxisSize:MainAxisSize.min,children:[
            Align(alignment:Alignment.center,child:Container(width:36,height:4,
              decoration:BoxDecoration(color:theme.colorScheme.outlineVariant,
                borderRadius:BorderRadius.circular(6)))),
            const SizedBox(height:12),
            Text(boost?t('Boost this post','Kara yada wannan labari'):
              t('Promote a post','Yada sakonka'),
              style:theme.textTheme.titleLarge?.copyWith(fontWeight:FontWeight.w700)),
            const SizedBox(height:5),
            Text(t('Pay for up to the selected number of qualified views. '
              'Reach is not instant or guaranteed.',
              'Ka biya don adadin ganin sako da aka tabbatar. Ba lallai a samu su nan take ba.'),
              style:theme.textTheme.bodySmall),
            if(!boost)...[
              const SizedBox(height:12),
              TextField(controller:body,maxLines:3,minLines:2,maxLength:5000,
                onChanged:(_)=>setState(()=>reviewed=null),
                decoration:InputDecoration(isDense:true,
                  hintText:t('What would you like to promote?',
                    'Me kake son yadawa?'),border:const OutlineInputBorder())),
            ],
            const SizedBox(height:12),
            Text(t('Qualified views','Ganin sako da aka tabbatar'),
              style:theme.textTheme.labelLarge),
            Wrap(spacing:8,runSpacing:2,children:[
              for(final n in const [50,100,500,1000])
                ChoiceChip(label:Text('$n'),selected:views==n,
                  onSelected:busy?null:(_)=>changeViews(n)),
            ]),
            Row(children:[
              Expanded(child:TextField(controller:custom,
                keyboardType:TextInputType.number,
                decoration:InputDecoration(isDense:true,labelText:t('Custom views','Adadi na kanka')),
                onSubmitted:(value){final n=int.tryParse(value.trim());
                  if(n!=null)changeViews(n);},
              )),const SizedBox(width:8),
              TextButton(onPressed:busy?null:(){
                final n=int.tryParse(custom.text.trim());
                if(n==null||n<1||n>1000000){
                  setState(()=>error=t('Enter 1–1,000,000 views.','Shigar da adadi daga 1 zuwa 1,000,000.'));
                  return;
                }changeViews(n);
              },child:Text(t('Set','Saita'))),
            ]),
            const SizedBox(height:10),
            Container(padding:const EdgeInsets.all(12),
              decoration:BoxDecoration(color:theme.colorScheme.surfaceContainerLow,
                borderRadius:BorderRadius.circular(12)),
              child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
                Text('$views ${t('views','kallon sako')} × 1 MB = $views MB',
                  style:theme.textTheme.titleMedium),
                if(quote!=null)...[
                  const SizedBox(height:4),
                  Text('${t('Eligible purchased balance','MB da za a iya amfani da su')}: ${quote.eligibleMb} MB'),
                  if(quote.insufficient)Text(t('Not enough purchased MB. Add data to continue.',
                    'MB da aka saya ba su isa ba. Kara MB don ci gaba.'),
                    style:TextStyle(color:theme.colorScheme.error)),
                ],
              ])),
            if(error!=null)Padding(padding:const EdgeInsets.only(top:8),
              child:Text(error!,style:TextStyle(color:theme.colorScheme.error))),
            const SizedBox(height:12),
            if(quote==null)
              FilledButton(onPressed:busy?null:review,
                child:Text(busy?t('Checking…','Ana dubawa…'):
                  t('Review price','Duba farashi')))
            else if(quote.insufficient)
              FilledButton.icon(onPressed:busy?null:widget.onRecharge==null?null:recharge,
                icon:const Icon(Icons.add_circle_outline),
                label:Text(t('Add MB','Kara MB')))
            else
              FilledButton(onPressed:busy?null:confirm,
                child:Text(busy?t('Confirming…','Ana tabbatarwa…'):
                  t('Confirm ${quote.totalMb} MB','Tabbatar da ${quote.totalMb} MB'))),
            TextButton(onPressed:busy?null:()=>Navigator.pop(context),
              child:Text(t('Not now','Ba yanzu ba'))),
          ]))),
    ));
  }
}
