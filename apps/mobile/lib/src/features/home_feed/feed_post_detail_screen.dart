import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../../agents/agent_directory.dart';
import '../../agents/masana_portrait_avatar.dart';
import 'feed_api.dart';
import 'feed_media_api.dart';
import 'status_post_author_header.dart';
import 'status_post_body.dart';
import 'status_post_boost_action.dart';
import 'status_post_social_proof.dart';
import 'status_post_media.dart';
import 'status_post_action_row.dart';
import 'status_reaction_picker.dart';

/// C22 uses the canonical published-post projection and moderated comment journal.
/// AF00 owns root/deep-link registration. This screen never exposes fan publishing.
class FeedPostDetailScreen extends StatefulWidget {
  const FeedPostDetailScreen({super.key,required this.initialPost,
    required this.accountKey,required this.loadPost,required this.loadThread,
    this.loadMoreThread,
    required this.sendComment,this.onMasanaProfile,this.onHumanProfile,this.onMedia,
    this.mediaApi,this.inlineMediaRenderer,this.audioPlaybackAvailable=false,
    this.authorDirectory = const {},this.onBoostPost,
    this.engagementApi,this.onSharePost,this.shareEarnEnabled=false,
    this.enabled=true,this.canReply=true});
  final FeedPost initialPost;
  final String accountKey;
  final Future<FeedPost> Function(String) loadPost;
  final Future<List<FeedComment>> Function(String,String) loadThread;
  /// Optional server-backed continuation; omitted for offline/test-only feeds.
  final Future<List<FeedComment>> Function(String,String,String) ? loadMoreThread;
  final Future<void> Function(String,String,String,String?) sendComment;
  final ValueChanged<String>? onMasanaProfile,onHumanProfile,onMedia;
  final FeedMediaApi? mediaApi;
  final Widget Function(FeedMediaGrant)? inlineMediaRenderer;
  final bool audioPlaybackAvailable;
  final Map<String, AgentDirectoryEntry> authorDirectory;
  final ValueChanged<String>? onBoostPost;
  final FeedApi? engagementApi;
  final Future<void> Function(FeedPost)? onSharePost;
  final bool shareEarnEnabled;
  final bool enabled,canReply;
  @override State<FeedPostDetailScreen> createState()=>_FeedPostDetailState();
}
class _FeedPostDetailState extends State<FeedPostDetailScreen> {
  final input=TextEditingController();
  FeedPost? post;
  List<FeedComment> comments=[];
  String? error,replyTo,pendingBody,pendingKey,pendingParent;
  String sort='newest';
  bool loading=true,sending=false,offline=false,denied=false;
  bool reacting=false;
  final _commentFocus=FocusNode();
  bool loadingMore=false,hasMore=false;
  String? pageError,commentCursor;
  int generation=0;
  String t(String en,String ha)=>Localizations.localeOf(context).languageCode=='ha'?ha:en;
  @override void initState(){super.initState();post=widget.initialPost;
    WidgetsBinding.instance.addPostFrameCallback((_){if(mounted)refresh();});}
  @override void didUpdateWidget(covariant FeedPostDetailScreen old){
    super.didUpdateWidget(old);
    if(old.accountKey!=widget.accountKey||old.initialPost.id!=widget.initialPost.id){
      generation++;post=null;comments=[];error=null;replyTo=null;
      pendingBody=null;pendingKey=null;pendingParent=null;sending=false;input.clear();
      reacting=false;
      loadingMore=false;hasMore=false;commentCursor=null;pageError=null;refresh();
    }else if(!old.enabled&&widget.enabled){refresh();}
  }
  @override void dispose(){generation++;input.dispose();_commentFocus.dispose();super.dispose();}

  Future<void> _changeReaction(String? kind) async {
    final before=post,api=widget.engagementApi;
    if(before==null||api==null||reacting||loading||!widget.enabled)return;
    final version=generation;
    setState((){reacting=true;post=before.withReaction(kind);});
    try {
      if(api is ReactionFeedApi){
        await api.react(before.id,kind);
      } else {
        await api.like(before.id,kind=='like');
      }
      if(!mounted||version!=generation)return;
      // A successful write is authoritative even when an immediately
      // following replica GET has not caught up. Never invite a duplicate
      // toggle by rolling an accepted reaction back on stale readback.
      try {
        final fresh=await widget.loadPost(before.id);
        if(!mounted||version!=generation)return;
        if(fresh.currentReaction==kind){
          setState(()=>post=fresh);
        }else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(t(
            'Reaction saved; counts may be delayed. Pull to refresh.',
            'An ajiye martani. Adadin na iya jinkiri. Ja ƙasa don sabuntawa.'))));
        }
      }on DioException catch(e){
        if(!mounted||version!=generation)return;
        if(const [401,403,404,410].contains(e.response?.statusCode)){
          setState((){post=null;denied=true;comments=[];});
        }else{
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content:Text('Reaction saved; counts may be delayed.')));
        }
      }catch(_){
        if(mounted&&version==generation)ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content:Text('Reaction saved; refresh counts later.')));
      }
    }catch(e){
      if(mounted&&version==generation){
        final revoked=e is DioException&&
          const [401,403,404,410].contains(e.response?.statusCode) ||
          e is StateError&&e.message=='account_changed';
        if(revoked){
          setState((){post=null;comments=[];denied=true;});
        }else{
          setState(()=>post=before);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(t(
            'Reaction not confirmed. Retry.', 'Ba a tabbatar da martani ba. Sake gwadawa.'))));
        }
      }
    }finally{
      if(mounted&&version==generation)setState(()=>reacting=false);
    }
  }

  Future<void> _chooseReaction(BuildContext anchor) async {
    if(reacting||loading||widget.engagementApi is! ReactionFeedApi)return;
    final choice=await showStatusReactionPicker(context,anchor);
    final current=post;
    if(!mounted||current==null||choice==null)return;
    await _changeReaction(choice==current.currentReaction?null:choice);
  }
  Future<void> refresh() async {
    if(!widget.enabled)return;
    final ticket=++generation;
    setState((){loading=true;error=null;denied=false;pageError=null;
      loadingMore=false;hasMore=false;commentCursor=null;});
    try {
      final p=await widget.loadPost(widget.initialPost.id);
      final thread=await widget.loadThread(p.id,sort);
      if(!mounted||ticket!=generation)return;
      setState((){post=p;comments=thread;loading=false;offline=false;
        hasMore=widget.loadMoreThread!=null&&thread.length>=30;
        commentCursor=thread.isEmpty?null:thread.last.id;});
    }on DioException catch(e){
      if(!mounted||ticket!=generation)return;
      setState((){loading=false;denied=e.response?.statusCode==401||
        e.response?.statusCode==403||e.response?.statusCode==404;
        offline=e.type==DioExceptionType.connectionTimeout||
          e.type==DioExceptionType.connectionError;
        error=denied?t('Not permitted or post unavailable','Ba a da izini ko babu labarin'):
          t('Unable to load post','An kasa dauko labarin');});
    }catch(e){
      if(mounted&&ticket==generation)setState((){
        loading=false;
        if(e is StateError&&e.message=='account_changed') {
          denied=true;post=null;comments=[];hasMore=false;commentCursor=null;
        }
        error=t('Unable to load post','An kasa dauko labarin');});
    }
  }
  Future<void> loadOlderComments() async {
    final p=post,cursor=commentCursor;
    if(!widget.enabled||loading||loadingMore||!hasMore||p==null||
        cursor==null||widget.loadMoreThread==null)return;
    final ticket=generation,expectedSort=sort;
    setState((){loadingMore=true;pageError=null;});
    try {
      final page=await widget.loadMoreThread!(p.id,expectedSort,cursor);
      if(!mounted||ticket!=generation||sort!=expectedSort)return;
      setState(() {
        final seen=comments.map((c)=>c.id).toSet();
        comments=[...comments,...page.where((c)=>seen.add(c.id))];
        // Move by the actual last returned row even if concurrent pages overlap.
        // A non-advancing cursor must terminate to avoid an infinite Load more.
        final next=page.isEmpty?null:page.last.id;
        hasMore=page.length>=30&&next!=cursor;
        commentCursor=next;
        loadingMore=false;
      });
    }on DioException catch(e) {
      if(!mounted||ticket!=generation||sort!=expectedSort)return;
      setState(() {
        loadingMore=false;
        if(e.response?.statusCode==401||e.response?.statusCode==403||
           e.response?.statusCode==404||e.response?.statusCode==410) {
          denied=true;post=null;comments=[];hasMore=false;commentCursor=null;
        }
        pageError=t('Could not load older comments. Retry.',
          'An kasa dauko tsofaffin sharhi. Sake gwadawa.');
      });
    }catch (e) {
      if(!mounted||ticket!=generation||sort!=expectedSort)return;
      setState((){
        loadingMore=false;
        if(e is StateError&&e.message=='account_changed') {
          denied=true;post=null;comments=[];hasMore=false;commentCursor=null;
        }
        pageError=t('Could not load older comments. Retry.',
          'An kasa dauko tsofaffin sharhi. Sake gwadawa.');
      });
    }
  }
  Future<void> submit() async {
    if(sending||post==null||!widget.enabled)return;
    final body=input.text.trim();
    if(body.isEmpty||body.length>1000)return;
    final key=pendingBody==body&&pendingParent==replyTo&&pendingKey!=null?pendingKey!:
      'c22-'+DateTime.now().microsecondsSinceEpoch.toString();
    final ticket=generation,parent=replyTo,account=widget.accountKey;
    setState((){sending=true;pendingBody=body;pendingParent=parent;pendingKey=key;error=null;});
    try{
      await widget.sendComment(post!.id,body,key,parent);
      if(!mounted||ticket!=generation)return;
      input.clear();pendingBody=null;pendingParent=null;pendingKey=null;replyTo=null;
      setState(()=>sending=false);
      await refresh();
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
        Text(t('Sent. Review may be required.','An aika. Ana iya duba sharhin.'))));
    }on DioException catch(e){
      if(!mounted||ticket!=generation)return;
      setState(()=>error=e.response?.statusCode==401||e.response?.statusCode==403?
        t('Sign in to comment','Shiga domin yin sharhi'):
        t('Could not send. Retry keeps the same request.','An kasa aikawa. Sake gwadawa ba zai maimaita ba.'));
    }catch(_){
      if(mounted&&ticket==generation)setState(()=>error=
        t('Could not send. Retry keeps the same request.','An kasa aikawa. Sake gwadawa ba zai maimaita ba.'));
    }finally{if(mounted&&account==widget.accountKey)setState(()=>sending=false);}
  }
  Widget commentRow(FeedComment c){
    final reply=c.parentId!=null;
    final name=c.authorName?.trim().isNotEmpty==true?c.authorName!.trim():
      t('Member','Memba');
    final openProfile=c.authorType=='human'&&c.authorHandle!=null&&widget.onHumanProfile!=null
      ? ()=>widget.onHumanProfile!(c.authorHandle!)
      : c.authorType=='masana'&&c.authorId!=null&&widget.onMasanaProfile!=null
        ? ()=>widget.onMasanaProfile!(c.authorId!) : null;
    final agent=c.authorId==null?null:widget.authorDirectory[c.authorId];
    return Padding(
      padding:EdgeInsetsDirectional.fromSTEB(reply?28:0,8,0,8),
      child:Row(crossAxisAlignment:CrossAxisAlignment.start,children:[
        InkWell(onTap:openProfile,child:c.authorType=='masana'&&c.authorId!=null
          ? MasanaPortraitAvatar(characterId:c.authorId!,agent:agent,
              displayName:name,size:36)
          : const CircleAvatar(radius:18,child:Icon(Icons.person_outline,size:20))),
        const SizedBox(width:8),
        Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
          Container(
            width:double.infinity,
            padding:const EdgeInsets.symmetric(horizontal:12,vertical:9),
            decoration:BoxDecoration(color:Theme.of(context).colorScheme.surfaceContainerLow,
              borderRadius:BorderRadius.circular(15)),
            child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
              InkWell(onTap:openProfile,child:Text(name,
                style:Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight:FontWeight.w700))),
              const SizedBox(height:3),
              Text(c.body),
            ]),
          ),
          Padding(padding:const EdgeInsetsDirectional.only(start:10,top:3),child:
            Wrap(spacing:14,crossAxisAlignment:WrapCrossAlignment.center,children:[
              Text(MaterialLocalizations.of(context).formatTimeOfDay(
                TimeOfDay.fromDateTime(c.createdAt.toLocal())),
                style:Theme.of(context).textTheme.bodySmall),
              if(c.state=='pending')Text(t('Awaiting review','Ana jiran dubawa'),
                style:Theme.of(context).textTheme.bodySmall),
              if(!reply&&c.state=='visible'&&widget.canReply)
                InkWell(onTap:()=>setState(()=>replyTo=c.id),
                  child:Text(t('Reply','Amsa'),
                    style:Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight:FontWeight.w700))),
            ])),
        ])),
      ]),
    );
  }
  @override Widget build(BuildContext context){
    if(!widget.enabled)return Scaffold(appBar:AppBar(title:Text(t('Post','Labari'))),
      body:Center(child:Text(t('This feature is unavailable','Ba a samun wannan aikin'))));
    final p=post;
    return Scaffold(appBar:AppBar(title:Text(t('Post','Labari'))),
      body:SafeArea(child:Column(children:[
        if(loading)const LinearProgressIndicator(),
        if(offline)MaterialBanner(content:Text(t('Offline — showing last loaded content','Babu intanet — ana nuna abin da aka samu')),
          actions:[TextButton(onPressed:refresh,child:Text(t('Retry','Sake gwadawa')))]),
        if(error!=null)MaterialBanner(content:Text(error!),
          actions:[TextButton(onPressed:refresh,child:Text(t('Retry','Sake gwadawa')))]),
        if(denied||p==null)
          Expanded(child:Center(child:Text(t('Post not available','Babu labarin'))))
        else Expanded(child:RefreshIndicator(onRefresh:refresh,child:ListView(children:[
          Padding(padding:const EdgeInsets.all(12),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
            StatusPostAuthorHeader(
              post:p,
              agent:widget.authorDirectory[p.authorMasanaId],
              onProfile:p.isHuman
                ? (p.authorHandle==null||widget.onHumanProfile==null?null:
                    ()=>widget.onHumanProfile!(p.authorHandle!))
                : (widget.onMasanaProfile==null?null:
                    ()=>widget.onMasanaProfile!(p.authorMasanaId)),
            ),
            const SizedBox(height:12),
            StatusPostBody(accountKey:widget.accountKey,postId:p.id,
              body:p.body,mode:StatusPostBodyMode.detail),
            StatusPostMedia(post:p,accountKey:widget.accountKey,
              mediaApi:widget.mediaApi,renderer:widget.inlineMediaRenderer,
              onOpen:widget.onMedia,
              audioPlaybackAvailable:widget.audioPlaybackAvailable),
            Padding(padding:const EdgeInsets.symmetric(vertical:8),
              child:StatusPostSocialProof(post:p)),
            StatusPostBoostAction(post:p,enabled:widget.onBoostPost!=null,
              onBoost:widget.onBoostPost),
            const Divider(height:12),
            StatusPostActionRow(post:p,pending:reacting||loading,
              shareEarnEnabled:widget.shareEarnEnabled,
              onLike:widget.engagementApi==null?null:
                ()=>unawaited(_changeReaction(p.currentReaction=='like'?null:'like')),
              onComment:widget.canReply?()=>_commentFocus.requestFocus():null,
              onShare:widget.onSharePost==null?null:
                ()=>unawaited(widget.onSharePost!(p)),
              onLongLike:widget.engagementApi is ReactionFeedApi?
                (anchor)=>unawaited(_chooseReaction(anchor)):null),
            Text(t('Comments','Sharhi')+' ('+p.commentCount.toString()+')'),
            Row(children:[
              ChoiceChip(label:Text(t('Newest','Sabbi')),selected:sort=='newest',
                onSelected:(_){setState(()=>sort='newest');refresh();}),
              const SizedBox(width:8),
              ChoiceChip(label:Text(t('Oldest','Tsofaffi')),selected:sort=='oldest',
                onSelected:(_){setState(()=>sort='oldest');refresh();}),
            ]),
            if(comments.isEmpty&&!loading)Text(t('No comments yet','Babu sharhi tukuna')),
            for(final c in comments)commentRow(c),
            if(pageError!=null)Text(pageError!),
            if(hasMore)Center(child:TextButton.icon(
              onPressed:loadingMore?null:loadOlderComments,
              icon:loadingMore?const SizedBox(width:16,height:16,
                child:CircularProgressIndicator(strokeWidth:2)):
                const Icon(Icons.expand_more),
              label:Text(loadingMore?t('Loading comments…','Ana dauko sharhi…'):
                t('Load older comments','Dauko tsofaffin sharhi')))),
          ]))
        ]))),
        if(!denied&&p!=null)Padding(padding:const EdgeInsets.all(8),child:Column(children:[
          if(replyTo!=null)Row(children:[Expanded(child:Text(t('Replying to comment','Amsa ga sharhi'))),
            IconButton(tooltip:t('Cancel reply','Soke amsa'),
              onPressed:()=>setState(()=>replyTo=null),icon:const Icon(Icons.close))]),
          Row(children:[
            Expanded(child:TextField(controller:input,focusNode:_commentFocus,maxLength:1000,minLines:1,maxLines:3,
              enabled:!sending,decoration:InputDecoration(
                hintText:t('Write a comment','Rubuta sharhi')))),
            IconButton(tooltip:t('Send','Aika'),onPressed:sending?null:submit,
              icon:sending?const SizedBox(width:18,height:18,child:CircularProgressIndicator(strokeWidth:2)):
                const Icon(Icons.send)),
          ])
        ])),
      ])));
  }
}
