import 'package:flutter/material.dart';

import 'feed_api.dart';

/// Safe, restrained optional CTA to an already-authorized public publisher
/// profile. External advertiser destinations are deliberately unsupported
/// until an independent link-rights review flow exists. Taps are navigation,
/// never post-view or Share & Earn settlement events.
class StatusPostCta extends StatelessWidget {
  const StatusPostCta({super.key,required this.post,this.onHumanProfile});
  final FeedPost post;
  final ValueChanged<String>? onHumanProfile;

  @override Widget build(BuildContext context){
    if(!post.isHuman||!post.promotionActive||
      post.authorHandle==null||onHumanProfile==null)return const SizedBox.shrink();
    final ha=Localizations.localeOf(context).languageCode=='ha';
    return Align(alignment:AlignmentDirectional.centerEnd,
      child:Padding(padding:const EdgeInsetsDirectional.fromSTEB(12,0,12,4),
        child:OutlinedButton.icon(
          style:OutlinedButton.styleFrom(minimumSize:const Size(0,48)),
          onPressed:()=>onHumanProfile!(post.authorHandle!),
          icon:const Icon(Icons.person_outline,size:18),
          label:Text(ha?'Duba shafin mai saƙo':'View publisher profile'),
        )));
  }
}
