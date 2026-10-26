import 'dart:async';

import 'package:dio/dio.dart';
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
    this.tile = false,
    this.imageIndex = 1,
    this.remainingCount = 0,
  });
  final FeedMediaApi api;
  final String accountKey,postId,mediaId;
  final int mediaCount;
  final VoidCallback? onOpen;
  final Widget Function(FeedMediaGrant)? renderer;
  final bool tile;
  final int imageIndex;
  final int remainingCount;
  @override State<FeedInlineMediaCard> createState()=>_FeedInlineMediaCardState();
}

class _FeedInlineMediaCardState extends State<FeedInlineMediaCard> {
  FeedMediaGrant? grant;
  bool loading=true;
  String? error;
  int generation=0;
  Timer? _expiryTimer;

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
    _expiryTimer?.cancel();
    _expiryTimer=null;
    final previous=grant;
    grant=null;
    // Signed network images are retained only while their authorizing card
    // is alive, including when the app switches accounts.
    if(previous!=null) unawaited(NetworkImage(previous.url.toString()).evict());
  }
  void _retryPreview(){
    // A failed network decode must request a new scoped grant rather than
    // invoking the parent post/media tap with the failed signed URL.
    _discard();
    unawaited(load());
  }
  Future<void> load()async{
    if(!mounted)return;
    if(widget.accountKey.isEmpty){
      setState((){loading=false;error='Preview unavailable';grant=null;});
      return;
    }
    final ticket=++generation;
    setState(() {loading=true;error=null;grant=null;});
    try{
      final result=await widget.api.getGrant(widget.postId,widget.mediaId);
      if(!mounted||ticket!=generation)return;
      if(result.mediaId!=widget.mediaId||result.kind!='image'||
         !result.expiresAt.isAfter(DateTime.now())){
        throw const FormatException('Invalid inline media grant');
      }
      // A short-lived signed URL must leave the widget AND memory at expiry,
      // even when the page has not otherwise rebuilt.
      _expiryTimer?.cancel();
      _expiryTimer=Timer(result.expiresAt.difference(DateTime.now()),(){
        if(!mounted||ticket!=generation)return;
        setState((){_discard();error='Preview expired';loading=false;});
      });
      setState(() {grant=result;loading=false;});
    }catch(e){
      if(mounted&&ticket==generation)setState((){
        loading=false;
        final status=e is DioException?e.response?.statusCode:null;
        error=status==403||status==401?'Image access denied':
          status==404||status==410?'Image no longer available':
          'Preview unavailable';
      });
    }
  }
  @override void dispose(){_discard();super.dispose();}
  @override Widget build(BuildContext context){
    final current=grant;
    Widget frame(Widget child)=>widget.tile?SizedBox.expand(child:child):
      SizedBox(height:224,child:child);
    Widget retry(String label)=>widget.tile
      ?IconButton(tooltip:label,onPressed:_retryPreview,
          icon:const Icon(Icons.refresh),iconSize:28)
      :TextButton.icon(onPressed:_retryPreview,
          icon:const Icon(Icons.refresh),label:Text(label));
    if(loading)return frame(Center(
      child:Semantics(label:'Loading approved image preview',
        child:const CircularProgressIndicator(strokeWidth:2))));
    if(current==null||error!=null||!current.expiresAt.isAfter(DateTime.now())){
      return frame(Center(child:retry(error==null||error=='Preview unavailable'
        ? 'Image unavailable · retry preview'
        : '$error · retry preview')));
    }
    final preview=widget.renderer?.call(current)??Image.network(
      current.url.toString(),
      height:widget.tile?double.infinity:220,
      width:double.infinity,
      cacheWidth:960,fit:BoxFit.cover,
      errorBuilder:(_,__,___)=>Center(child:retry(
        'Image failed to load · retry preview')),
    );
    if(widget.tile){
      return Semantics(
        label:'Image ${widget.imageIndex} of ${widget.mediaCount}. No approved description provided',
        child:ClipRRect(borderRadius:BorderRadius.circular(10),child:Stack(
          fit:StackFit.expand,children:[
            InkWell(onTap:widget.onOpen,child:preview),
            if(widget.remainingCount>0)
              IgnorePointer(child:ColoredBox(
                color:Colors.black54,
                child:Center(child:Text('+${widget.remainingCount}',
                  style:Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color:Colors.white,fontWeight:FontWeight.bold))),
              )),
          ],
        )),
      );
    }
    return Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
      Semantics(
        label:'Image 1 of ${widget.mediaCount}. No approved description provided',
        child:InkWell(
          onTap:widget.onOpen,
          child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:preview,
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
