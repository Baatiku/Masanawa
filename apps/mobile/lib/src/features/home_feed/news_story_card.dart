import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'feed_api.dart';

/// Publisher branding is editorial attribution, not a social profile.
/// A logo is displayed only when the server explicitly records brand rights.
class NewsPublisherHeader extends StatelessWidget {
 const NewsPublisherHeader({super.key,required this.story,required this.publishedAt});
 final NewsPublisher story;
 final DateTime publishedAt;
 @override Widget build(BuildContext context){
  final label=story.name.trim();
  final acronym=label.split(RegExp(r'\s+')).where((x)=>x.isNotEmpty)
    .take(2).map((x)=>String.fromCharCode(x.runes.first).toUpperCase()).join();
  final logo=story.logoUrl;
  final time=MaterialLocalizations.of(context).formatMediumDate(publishedAt.toLocal());
  return Row(children:[
   Container(width:44,height:44,
    clipBehavior:Clip.antiAlias,
    decoration:BoxDecoration(color:Theme.of(context).colorScheme.primaryContainer,
      borderRadius:BorderRadius.circular(12)),
    child:logo!=null?Image.network(logo.toString(),fit:BoxFit.contain,
      errorBuilder:(_,__,___)=>Center(child:Text(acronym,style:const TextStyle(fontWeight:FontWeight.w800))))
      :Center(child:Text(acronym,style:const TextStyle(fontWeight:FontWeight.w800)))),
   const SizedBox(width:10),
   Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
    Row(children:[
     Flexible(child:Text(label,maxLines:1,overflow:TextOverflow.ellipsis,
      style:Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight:FontWeight.w700))),
     if(story.verified)...[
      const SizedBox(width:4),
      Tooltip(message:'Publisher source verified by Masanawa, not an endorsement',
       child:Icon(Icons.verified_rounded,size:18,color:Theme.of(context).colorScheme.tertiary)),
     ],
    ]),
    Text(time,style:Theme.of(context).textTheme.labelSmall),
   ])),
  ]);
 }
}
class NewsStoryBody extends StatelessWidget {
 const NewsStoryBody({super.key,required this.story});
 final NewsPublisher story;
 @override Widget build(BuildContext context){
  final ha=Localizations.localeOf(context).languageCode=='ha';
  return Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
   Text(story.title,style:Theme.of(context).textTheme.titleMedium?.copyWith(
    fontWeight:FontWeight.w800,height:1.25)),
   const SizedBox(height:8),
   Text(story.summary,style:Theme.of(context).textTheme.bodyMedium?.copyWith(height:1.4)),
   Align(alignment:AlignmentDirectional.centerStart,child:TextButton.icon(
    onPressed:()async{
     try{
      if(!await launchUrl(story.original,mode:LaunchMode.externalApplication)&&context.mounted)
       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Could not open the original article.')));
     }catch(_){if(context.mounted)ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content:Text('Could not open the original article.')));}
    },
    icon:const Icon(Icons.open_in_new_rounded,size:17),
    label:Text(ha?'Karanta asalin labarin':'Read original'),
   )),
  ]);
 }
}
