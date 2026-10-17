import 'dart:async';

import 'package:flutter/material.dart';

import 'feed_media_api.dart';

/// A lightweight, viewport-built Status preview of a currently approved original.
/// Each card obtains its own per-post media grant. Signed URLs are NEVER passed to
/// a disk caching package, logged, or stored outside this widget's memory.
class FeedInlineMediaCard extends StatefulWidget {
  const FeedInlineMediaCard({
    super.key,
    required this.api,
    required this.accountKey,
    required this.postId,
    required this.mediaId,
    required this.mediaCount,
    this.onOpen,
    this.renderer,
  });
  final FeedMediaApi api;
  final String accountKey,postId,mediaId;
  final int mediaCount;
  final VoidCallback? onOpen;
  final Widget Function(FeedMediaGrant)? renderer;
  @override State<FeedInlineMediaCard> createState()=>_FeedInlineMediaCardState();
}

class _FeedInlineMediaCardState extends State<FeedInlineMediaCard> {
  FeedMediaGrant? grant;
  bool loading=true;
  String? error;
  int generation=0;

  @override void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if(mounted) unawaited(load());
    });
  }
  @override void didUpdateWidget(covariant FeedInlineMediaCard old){
    super.didUpdateWidget(old);
    if(old.accountKey!=widget.accountKey||old.postId!=widget.postId||
       old.mediaId!=widget.mediaId||old.api!=widget.api){
      _discard();
      unawaited(load());
    }
  }
  void _discard(){
    generation++;
    final previous=grant;
    grant=null;
    // Signed network images are retained only while their authorizing card
    // is alive, including when the app switches accounts.
    if(previous!=null) unawaited(NetworkImage(previous.url.toString()).evict());
  }
  Future<void> load()async{
    if(!mounted||widget.accountKey.isEmpty)return;
    final ticket=++generation;
    setState(() {loading=true;error=null;grant=null;});
    try{
      final result=await widget.api.getGrant(widget.postId,widget.mediaId);
      if(!mounted||ticket!=generation)return;
      if(result.mediaId!=widget.mediaId||result.kind!='image'||
         !result.expiresAt.isAfter(DateTime.now())){
        throw const FormatException('Invalid inline media grant');
      }
      setState(() {grant=result;loading=false;});
    }catch(_){
      if(mounted&&ticket==generation)setState((){
        loading=false;error='Preview unavailable';
      });
    }
  }
  @override void dispose(){_discard();super.dispose();}
  @override Widget build(BuildContext context){
    final current=grant;
    if(loading)return const SizedBox(height:120,child:Center(
      child:Semantics(label:'Loading approved image preview',
        child:CircularProgressIndicator(strokeWidth:2))));
    if(current==null||error!=null||!current.expiresAt.isAfter(DateTime.now())){
      return Align(alignment:Alignment.centerLeft,child:TextButton.icon(
        onPressed:load,
        icon:const Icon(Icons.refresh),
        label:const Text('Image unavailable · retry preview')));
    }
    return Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
      InkWell(
        onTap:widget.onOpen,
        child:ClipRRect(
          borderRadius:BorderRadius.circular(10),
          child:widget.renderer?.call(current)??Image.network(
            current.url.toString(),height:220,width:double.infinity,
            cacheWidth:960,fit:BoxFit.cover,
            errorBuilder:(_,__,___)=>const SizedBox(height:120,
              child:Center(child:Text('Image failed to load · tap to retry'))),
          ),
        ),
      ),
      if(widget.mediaCount>1)
        Align(alignment:Alignment.centerRight,child:TextButton(
          onPressed:widget.onOpen,
          child:Text('View all ${widget.mediaCount} images'))),
    ]);
  }
}
