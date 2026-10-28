import 'dart:async';

import 'package:flutter/material.dart';
import 'status_promotion_api.dart';

/// One compact budget review for a new paid text post or an existing Boost.
/// The quote and eligible balance always come from the server, never the UI.
class StatusPromotionSheet extends StatefulWidget {
  const StatusPromotionSheet({super.key,required this.api,this.postId,
    this.onRecharge,this.draftStore,this.initialPhotoRequested=false});
  final StatusPromotionApi api;
  final String? postId;
  final Future<void> Function()? onRecharge;
  final StatusPromotionDraftStore? draftStore;
  /// An honest media entry cue until an approved upload/rights pipeline exists.
  /// Never attaches a fake image or permits a text quote to imply an upload.
  final bool initialPhotoRequested;
  @override State<StatusPromotionSheet> createState()=>_StatusPromotionSheetState();
}

class _StatusPromotionSheetState extends State<StatusPromotionSheet> {
  final body=TextEditingController(),custom=TextEditingController();
  int views=100;
  bool busy=false,recharging=false;
  String? error;
  StatusPromotionQuote? reviewed;
  late final StatusPromotionDraftStore _draftStore;
  Timer? _draftTimer;
  Future<void> _draftWrites=Future<void>.value();
  int _draftRevision=0;
  bool _confirmed=false;
  bool get boost=>widget.postId!=null;
  String t(String en,String ha)=>Localizations.localeOf(context).languageCode=='ha'?ha:en;
  @override void initState(){super.initState();
    _draftStore=widget.draftStore??SecureStatusPromotionDraftStore(widget.api.ownerAccount);
    unawaited(_restoreDraft());
  }
  Future<void> _restoreDraft() async {
    final revision=_draftRevision;
    try{
      final draft=await _draftStore.read(widget.postId);
      if(!mounted||revision!=_draftRevision||draft==null||
        widget.api.currentAccount()!=widget.api.ownerAccount)return;
      setState((){body.text=draft.body;views=draft.targetViews;reviewed=null;});
    }catch(_){/* Draft storage failure must never authorize a quote or charge. */}
  }
  void _persistDraft(){
    _draftRevision++;
    _draftTimer?.cancel();
    final snapshot=StatusPromotionDraft(body:boost?'':body.text,targetViews:views);
    _draftTimer=Timer(const Duration(milliseconds:250),(){
      _draftWrites=_draftWrites.then((_)async{
        if(widget.api.currentAccount()!=widget.api.ownerAccount||_confirmed)return;
        await _draftStore.write(widget.postId,snapshot);
      }).catchError((Object _){/* Confirmation does not depend on draft persistence. */});
    });
  }
  @override void dispose(){
    _draftTimer?.cancel();
    if(!_confirmed&&widget.api.currentAccount()==widget.api.ownerAccount){
      final snapshot=StatusPromotionDraft(body:boost?'':body.text,targetViews:views);
      unawaited(_draftWrites.then((_)=>_draftStore.write(widget.postId,snapshot))
        .catchError((Object _){}));
    }
    body.dispose();custom.dispose();super.dispose();
  }
  void changeViews(int n){if(n<1||n>1000000)return;
    setState((){views=n;reviewed=null;error=null;});_persistDraft();}
  Future<void> review() async {
    if(busy||recharging)return;
    if(widget.api.currentAccount()!=widget.api.ownerAccount){
      setState(()=>error=t('Account changed. Reopen this promotion to continue.',
        'An canza asusu. Sake buɗe tallar don ci gaba.'));
      return;
    }
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
    final quote=reviewed;
    if(quote==null||quote.insufficient||busy||recharging)return;
    setState((){busy=true;error=null;});
    try{
      final receipt=await widget.api.confirm(quote);
      if(mounted){
        _confirmed=true;
        _draftTimer?.cancel();
        // Financial confirmation must not wait on optional secure draft IO.
        unawaited(_draftWrites.then((_)=>_draftStore.clear(widget.postId))
          .catchError((Object _){}));
        Navigator.of(context).pop(receipt);
      }
    }catch(_){if(mounted)setState(()=>error=t(
      'Not confirmed. Check your original receipt before another payment.',
      'Ba a tabbatar ba. Duba takardar asali kafin wani biya.'));}
    finally{if(mounted)setState(()=>busy=false);}
  }
  Future<void> recharge() async {
    if(busy||recharging||widget.onRecharge==null)return;
    if(widget.api.currentAccount()!=widget.api.ownerAccount){
      setState(()=>error=t('Account changed. Reopen this promotion to continue.',
        'An canza asusu. Sake buɗe tallar don ci gaba.'));
      return;
    }
    setState((){recharging=true;error=null;reviewed=null;});
    // Flush the exact owner/post-bound draft before leaving this route. The
    // return journey must not rely on a pending debounce or a signed URL.
    _draftTimer?.cancel();
    final snapshot=StatusPromotionDraft(body:boost?'':body.text,targetViews:views);
    var draftSaved=false;
    try{
      await _draftWrites;
      await _draftStore.write(widget.postId,snapshot);
      draftSaved=true;
      if(!mounted||widget.api.currentAccount()!=widget.api.ownerAccount)return;
      await widget.onRecharge!();
      if(!mounted||widget.api.currentAccount()!=widget.api.ownerAccount)return;
    }catch(_){
      if(mounted)setState(()=>error=t(
        draftSaved?'Could not return from Add MB. Your promotion draft is saved.'
          :'Could not securely save this draft. Stay here and try again.',
        draftSaved?'Ba a samu komawa daga ƙara MB ba. An ajiye daftarin tallarku.'
          :'Ba a iya ajiye daftarin nan cikin aminci ba. Ku dakata ku sake gwadawa.'));
      return;
    }finally{
      if(mounted)setState(()=>recharging=false);
    }
    // Always fetch a NEW authoritative balance and price after returning.
    // The earlier quote is cleared, and confirming remains a separate tap.
    await review();
  }
  @override Widget build(BuildContext context){
    if(widget.api.currentAccount()!=widget.api.ownerAccount){
      return SafeArea(child:Padding(padding:const EdgeInsets.all(20),
        child:Column(mainAxisSize:MainAxisSize.min,children:[
          const Icon(Icons.lock_outline,size:28),
          const SizedBox(height:10),
          Text(t('Account changed. Reopen this promotion to continue.',
            'An canza asusu. Sake buɗe tallar don ci gaba.'),
            textAlign:TextAlign.center),
          if(Navigator.canPop(context))TextButton(
            onPressed:()=>Navigator.pop(context),
            child:Text(t('Close','Rufe'))),
        ])));
    }
    final theme=Theme.of(context),quote=reviewed;
    // Keep the review sheet compact on tall handsets and scrollable when the
    // keyboard, enlarged text or a short display reduces usable height.
    final availableHeight=MediaQuery.sizeOf(context).height*0.68;
    final sheetHeight=availableHeight<480?availableHeight:480.0;
    return SafeArea(child:Padding(
      padding:EdgeInsets.only(bottom:MediaQuery.viewInsetsOf(context).bottom),
      child:ConstrainedBox(constraints:BoxConstraints(maxHeight:sheetHeight),
        child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(18,12,18,18),
          child:Column(crossAxisAlignment:CrossAxisAlignment.stretch,
            mainAxisSize:MainAxisSize.min,children:[
            Align(alignment:Alignment.center,child:Container(width:36,height:4,
              decoration:BoxDecoration(color:theme.colorScheme.outlineVariant,
                borderRadius:BorderRadius.circular(6)))),
            const SizedBox(height:12),
            Text(boost?t('Boost this post','Ƙara yaɗa wannan labari'):
              t('Promote a post','Yaɗa saƙonka'),
              style:theme.textTheme.titleLarge?.copyWith(fontWeight:FontWeight.w700)),
            const SizedBox(height:5),
            Text(t('Pay for up to the selected number of qualified views. '
              'Reach is not instant or guaranteed.',
              'Ka biya don adadin ganin sako da aka tabbatar. Ba lallai a samu su nan take ba.'),
              style:theme.textTheme.bodySmall),
            if(!boost)...[
              if(widget.initialPhotoRequested)
                Padding(padding:const EdgeInsets.only(top:12),child:
                  DecoratedBox(decoration:BoxDecoration(
                    color:theme.colorScheme.surfaceContainerLow,
                    borderRadius:BorderRadius.circular(12)),
                    child:Padding(padding:const EdgeInsets.all(12),
                      child:Row(crossAxisAlignment:CrossAxisAlignment.start,
                        children:[
                          const Icon(Icons.image_not_supported_outlined,size:22),
                          const SizedBox(width:10),
                          Expanded(child:Text(t(
                            'Photo promotions are not available until reviewed image uploads are enabled. You can promote text now.',
                            'Ba a fara karɓar hotunan talla da aka tantance ba tukuna. Za ku iya yaɗa rubutu yanzu.'),
                            style:theme.textTheme.bodySmall)),
                        ]))),
                ),
              const SizedBox(height:12),
              TextField(controller:body,maxLines:3,minLines:2,maxLength:5000,
                onChanged:(_){setState(()=>reviewed=null);_persistDraft();},
                decoration:InputDecoration(isDense:true,
                  hintText:t('What would you like to promote?',
                    'Me kuke son yaɗawa?'),border:const OutlineInputBorder())),
            ],
            const SizedBox(height:12),
            Text(t('Qualified views','Ganin sako da aka tabbatar'),
              style:theme.textTheme.labelLarge),
            Wrap(spacing:8,runSpacing:2,children:[
              for(final n in const [50,100,500,1000])
                ChoiceChip(label:Text('$n'),selected:views==n,
                  onSelected:busy||recharging?null:(_)=>changeViews(n)),
            ]),
            Row(children:[
              Expanded(child:TextField(controller:custom,
                keyboardType:TextInputType.number,
                decoration:InputDecoration(isDense:true,labelText:t('Custom views','Adadi na kanka')),
                onSubmitted:(value){final n=int.tryParse(value.trim());
                  if(n!=null)changeViews(n);},
              )),const SizedBox(width:8),
              TextButton(onPressed:busy||recharging?null:(){
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
                const SizedBox(height:3),
                Text(t('Budget for up to $views qualified views, not guaranteed views.',
                  'Wannan kasafin zai iya samar da har kallo $views da aka tabbatar, amma ba a yi alƙawarin samun su ba.'),
                  style:theme.textTheme.bodySmall),
                if(quote!=null)...[
                  const SizedBox(height:4),
                  Text('${t('Eligible purchased balance','MB da za a iya amfani da su')}: ${quote.eligibleMb} MB'),
                  if(quote.insufficient)Text(t('Not enough purchased MB. Add data to continue.',
                    'MB da aka saya ba su isa ba. Ƙara MB don ci gaba.'),
                    style:TextStyle(color:theme.colorScheme.error)),
                ],
              ])),
            if(error!=null)Padding(padding:const EdgeInsets.only(top:8),
              child:Text(error!,style:TextStyle(color:theme.colorScheme.error))),
            const SizedBox(height:12),
            if(quote==null)
              FilledButton(onPressed:busy||recharging?null:review,
                child:Text(busy?t('Checking…','Ana dubawa…'):
                  t('Review price','Duba farashi')))
            else if(quote.insufficient)
              FilledButton.icon(onPressed:busy||recharging?null:widget.onRecharge==null?null:recharge,
                icon:const Icon(Icons.add_circle_outline),
                label:Text(recharging?t('Opening Add MB…','Ana buɗe ƙara MB…'):
                  t('Add MB','Ƙara MB')))
            else
              FilledButton(onPressed:busy||recharging?null:confirm,
                child:Text(busy?t('Confirming…','Ana tabbatarwa…'):
                  t('Confirm ${quote.totalMb} MB','Tabbatar da ${quote.totalMb} MB'))),
            TextButton(onPressed:busy?null:()=>Navigator.pop(context),
              child:Text(t('Not now','Ba yanzu ba'))),
          ]))),
    ));
  }
}
