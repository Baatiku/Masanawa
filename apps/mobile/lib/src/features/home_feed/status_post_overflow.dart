import 'package:flutter/material.dart';

import 'feed_api.dart';

/// Small, shared, accessible post-specific safety/management menu. It never
/// starts a view challenge, opens an unreviewed URL or creates a new feed tab.
class StatusPostOverflow extends StatelessWidget {
  const StatusPostOverflow({super.key,required this.post,required this.accountKey,
    this.onHide,this.onReport,this.onManage});

  final FeedPost post;
  final String accountKey;
  final Future<void> Function(FeedPost)? onHide;
  final Future<void> Function(FeedPost,String)? onReport;
  final VoidCallback? onManage;

  Future<void> _report(BuildContext context) async {
    if(onReport==null)return;
    final ha=Localizations.localeOf(context).languageCode=='ha';
    final reason=await showModalBottomSheet<String>(context:context,
      isScrollControlled:true,showDragHandle:true,builder:(sheetContext)=>
      SafeArea(child:ConstrainedBox(constraints:const BoxConstraints(maxHeight:460),
        child:ListView(shrinkWrap:true,children:[
          Padding(padding:const EdgeInsets.all(16),child:Text(
            ha?'Me ya sa kuke kai rahoton wannan saƙon?':'Why are you reporting this post?',
            style:Theme.of(sheetContext).textTheme.titleMedium)),
          for(final option in const [
            ('spam','Spam','Saƙon banza'),
            ('fraud','Fraud or scam','Zamba'),
            ('harassment','Harassment','Cin zarafi'),
            ('hate','Hate','Ƙiyayya'),
            ('sexual_content','Sexual content','Abin batsa'),
            ('violence','Violence','Tashin hankali'),
            ('impersonation','Impersonation','Kwaikwayon wani'),
            ('other','Other','Wani dalili'),
          ])ListTile(
            title:Text(ha?option.$3:option.$2),
            onTap:()=>Navigator.pop(sheetContext,option.$1),
          ),
        ]))));
    if(!context.mounted||reason==null)return;
    await onReport!(post,reason);
  }

  void _shareDetails(BuildContext context){
    final ha=Localizations.localeOf(context).languageCode=='ha';
    showModalBottomSheet<void>(context:context,showDragHandle:true,
      builder:(ctx)=>SafeArea(child:Padding(padding:const EdgeInsets.all(20),
        child:Column(mainAxisSize:MainAxisSize.min,
          crossAxisAlignment:CrossAxisAlignment.start,children:[
          Text(ha?'Bayani kan Raba ka samu MB':'Share & Earn details',
            style:Theme.of(ctx).textTheme.titleLarge),
          const SizedBox(height:8),
          Text(post.shareEarnEligible
            ?ha?'Ana iya samun MB 0.5 idan an tabbatar da kallo mai cancanta daga haɗin da kuka raba. Sai an tantance ladan kafin a saka shi a ma’auni.'
              :'Eligible tracked shares can earn a pending 0.5 MB per approved qualified view. Rewards are subject to fraud review and settlement.'
            :ha?'Wannan saƙon ba ya da ladan Raba ka samu MB a yanzu. Kuna iya raba shi ba tare da lada ba.'
              :'This post currently has no Share & Earn reward. You can still share it normally.'),
          const SizedBox(height:10),
          Align(alignment:AlignmentDirectional.centerEnd,child:TextButton(
            onPressed:()=>Navigator.pop(ctx),child:Text(ha?'Na gane':'Got it'))),
        ]))));
  }

  @override Widget build(BuildContext context){
    if(accountKey.isEmpty)return const SizedBox.shrink();
    final ha=Localizations.localeOf(context).languageCode=='ha';
    final own=post.isHuman&&post.authorId==accountKey&&onManage!=null;
    return PopupMenuButton<String>(
      tooltip:ha?'Ƙarin zaɓuɓɓukan saƙo':'More post options',
      icon:const Icon(Icons.more_horiz_rounded,size:22),
      constraints:const BoxConstraints(minWidth:210,maxWidth:285),
      onSelected:(value){
        if(value=='hide'&&onHide!=null){onHide!(post);}
        if(value=='report'&&onReport!=null){_report(context);}
        if(value=='share'){_shareDetails(context);}
        if(value=='manage'&&own){onManage!();}
      },
      itemBuilder:(_)=>[
        if(onHide!=null)PopupMenuItem(value:'hide',
          child:Text(ha?'Ɓoye wannan saƙon':'Hide this post')),
        if(onReport!=null)PopupMenuItem(value:'report',
          child:Text(ha?'Kai rahoton saƙo':'Report this post')),
        PopupMenuItem(value:'share',
          child:Text(ha?'Bayanan Raba ka samu MB':'Share & Earn details')),
        if(own)PopupMenuItem(value:'manage',
          child:Text(ha?'Gudanar da tallatawa':'Manage promotion')),
      ],
    );
  }
}
