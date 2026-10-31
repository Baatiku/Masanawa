import 'status_post_safety_menu.dart';
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
import 'status_feed_metrics.dart';

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
    this.enabled=true,this.canReply=true,this.commentsOnly=false});
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
  final bool enabled,canReply,commentsOnly;
  @override State<FeedPostDetailScreen> createState()=>_FeedPostDetailState();
}
class _FeedPostDetailState extends State<FeedPostDetailScreen> {
  final input=TextEditingController();
  FeedPost? post;
  List<FeedComment> comments=[];
  final Map<String,List<FeedComment>> replies={};
  final Set<String> expandedReplies={};
  final Set<String> loadingReplies={};
  final Set<String> writingComments={};
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
    input.addListener((){if(mounted)setState((){});});
    WidgetsBinding.instance.addPostFrameCallback((_){if(mounted)refresh();});}
  @override void didUpdateWidget(covariant FeedPostDetailScreen old){
    super.didUpdateWidget(old);
    if(old.accountKey!=widget.accountKey||old.initialPost.id!=widget.initialPost.id){
      generation++;post=null;comments=[];replies.clear();expandedReplies.clear();
      loadingReplies.clear();writingComments.clear();error=null;replyTo=null;
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
        await (api as ReactionFeedApi).react(before.id,kind);
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
    final timing=Stopwatch()..start();
    final ticket=++generation;
    setState((){loading=true;error=null;denied=false;pageError=null;writingComments.clear();
      loadingMore=false;hasMore=false;commentCursor=null;});
    try {
      final p=await widget.loadPost(widget.initialPost.id);
      final api=widget.engagementApi;
      final thread=api is CommentConversationApi
        ? await (api as CommentConversationApi).threadPage(p.id,sort,scope:'roots')
        : await widget.loadThread(p.id,sort);
      if(!mounted||ticket!=generation)return;
      setState((){post=p;comments=thread;replies.clear();expandedReplies.clear();
        loading=false;offline=false;
        hasMore=(widget.loadMoreThread!=null||widget.engagementApi is CommentConversationApi)&&thread.length>=30;
        commentCursor=thread.isEmpty?null:thread.last.id;});
      StatusFeedMetrics.observe('comments-page',timing.elapsed,succeeded:true);
    }on DioException catch(e){
      StatusFeedMetrics.observe('comments-page',timing.elapsed,succeeded:false);
      if(!mounted||ticket!=generation)return;
      setState((){loading=false;denied=e.response?.statusCode==401||
        e.response?.statusCode==403||e.response?.statusCode==404;
        offline=e.type==DioExceptionType.connectionTimeout||
          e.type==DioExceptionType.connectionError;
        error=denied?t('Not permitted or post unavailable','Ba a da izini ko babu labarin'):
          t('Unable to load post','An kasa dauko labarin');});
    }catch(e){
      StatusFeedMetrics.observe('comments-page',timing.elapsed,succeeded:false);
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
        cursor==null||(widget.loadMoreThread==null&&widget.engagementApi is! CommentConversationApi))return;
    final ticket=generation,expectedSort=sort;
    setState((){loadingMore=true;pageError=null;});
    try {
      final api=widget.engagementApi;
      final page=api is CommentConversationApi
        ? await (api as CommentConversationApi).threadPage(p.id,expectedSort,before:cursor,scope:'roots')
        : await widget.loadMoreThread!(p.id,expectedSort,cursor);
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
  Future<void> reloadCommentsOnly({String? revealParent}) async {
    final p=post;
    if(p==null||!widget.enabled)return;
    final ticket=generation;
    try{
      final api=widget.engagementApi;
      final page=api is CommentConversationApi
        ? await (api as CommentConversationApi).threadPage(p.id,sort,scope:'roots')
        : await widget.loadThread(p.id,sort);
      if(!mounted||ticket!=generation)return;
      setState((){
        comments=page;pageError=null;
        hasMore=(widget.loadMoreThread!=null||api is CommentConversationApi)&&page.length>=30;
        commentCursor=page.isEmpty?null:page.last.id;
      });
      if(revealParent!=null&&api is CommentConversationApi){
        for(final root in page){
          if(root.id==revealParent){
            setState((){expandedReplies.remove(revealParent);replies.remove(revealParent);});
            await expandReplies(root);
            break;
          }
        }
      }
    }on DioException catch(e){
      if(!mounted||ticket!=generation)return;
      if(const [401,403,404,410].contains(e.response?.statusCode)){
        setState((){denied=true;post=null;comments=[];replies.clear();});
      }else{setState(()=>pageError=t('Could not refresh comments. Retry.','An kasa sabunta sharhi.'));}
    }catch(_){if(mounted&&ticket==generation)setState(()=>
      pageError=t('Could not refresh comments. Retry.','An kasa sabunta sharhi.'));}
  }
  Future<void> changeSort(String next)async{
    final p=post;
    if(p==null||loading||next==sort)return;
    final ticket=++generation;
    setState((){sort=next;loading=true;pageError=null;});
    try{
      final api=widget.engagementApi;
      final page=api is CommentConversationApi
        ? await (api as CommentConversationApi).threadPage(p.id,next,scope:'roots')
        : await widget.loadThread(p.id,next);
      if(!mounted||ticket!=generation)return;
      setState((){comments=page;loading=false;replies.clear();expandedReplies.clear();
        hasMore=(widget.loadMoreThread!=null||api is CommentConversationApi)&&page.length>=30;
        commentCursor=page.isEmpty?null:page.last.id;});
    }catch(_){if(mounted&&ticket==generation)setState((){
      loading=false;pageError=t('Could not sort comments. Retry.','An kasa jera sharhi.');});}
  }
  Future<void> submit() async {
    if(sending||post==null||!widget.enabled)return;
    final body=input.text.trim();
    if(body.isEmpty||body.length>1000)return;
    final timing=Stopwatch()..start();
    final key=pendingBody==body&&pendingParent==replyTo&&pendingKey!=null?pendingKey!:
      'c22-'+DateTime.now().microsecondsSinceEpoch.toString();
    final ticket=generation,parent=replyTo,account=widget.accountKey;
    setState((){sending=true;pendingBody=body;pendingParent=parent;pendingKey=key;error=null;});
    try{
      await widget.sendComment(post!.id,body,key,parent);
      StatusFeedMetrics.observe('comment-send',timing.elapsed,succeeded:true);
      if(!mounted||ticket!=generation)return;
      input.clear();pendingBody=null;pendingParent=null;pendingKey=null;replyTo=null;
      setState(()=>sending=false);
      await reloadCommentsOnly(revealParent:parent);
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
        Text(t('Sent. Review may be required.','An aika. Ana iya duba sharhin.'))));
    }on DioException catch(e){
      StatusFeedMetrics.observe('comment-send',timing.elapsed,succeeded:false);
      if(!mounted||ticket!=generation)return;
      setState(()=>error=e.response?.statusCode==401||e.response?.statusCode==403?
        t('Sign in to comment','Shiga domin yin sharhi'):
        t('Could not send. Retry keeps the same request.','An kasa aikawa. Sake gwadawa ba zai maimaita ba.'));
    }catch(_){
      StatusFeedMetrics.observe('comment-send',timing.elapsed,succeeded:false);
      if(mounted&&ticket==generation)setState(()=>error=
        t('Could not send. Retry keeps the same request.','An kasa aikawa. Sake gwadawa ba zai maimaita ba.'));
    }finally{if(mounted&&account==widget.accountKey)setState(()=>sending=false);}
  }
  Future<void> expandReplies(FeedComment parent,{bool more=false}) async {
    final api=widget.engagementApi;
    if(api is! CommentConversationApi||loadingReplies.contains(parent.id)||post==null)return;
    if(!more&&expandedReplies.contains(parent.id)){
      setState(()=>expandedReplies.remove(parent.id));return;
    }
    final ticket=generation,existing=replies[parent.id]??const <FeedComment>[];
    setState((){expandedReplies.add(parent.id);loadingReplies.add(parent.id);});
    try{
      final page=await (api as CommentConversationApi).threadPage(post!.id,'oldest',scope:'replies',
        parentId:parent.id,before:more&&existing.isNotEmpty?existing.last.id:null);
      if(!mounted||ticket!=generation)return;
      setState((){
        final seen=existing.map((c)=>c.id).toSet();
        replies[parent.id]=[...existing,...page.where((c)=>seen.add(c.id))];
      });
    }catch(_){if(mounted&&ticket==generation)ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(t('Could not load replies. Retry.','An kasa dauko amsoshi.'))));}
    finally{if(mounted&&ticket==generation)setState(()=>loadingReplies.remove(parent.id));}
  }

  Future<void> commentAction(FeedComment c,String action) async {
    final api=widget.engagementApi;
    if(api is! CommentConversationApi||writingComments.contains(c.id))return;
    final ticket=generation;
    String? body;
    if(action=='edit'){
      final editor=TextEditingController(text:c.body);
      try{
        body=await showDialog<String>(context:context,builder:(ctx)=>AlertDialog(
          title:Text(t('Edit comment','Gyara sharhi')),
          content:TextField(controller:editor,maxLength:1000,maxLines:3,autofocus:true),
          actions:[TextButton(onPressed:()=>Navigator.pop(ctx),child:const Text('Cancel')),
            FilledButton(onPressed:()=>Navigator.pop(ctx,editor.text.trim()),child:const Text('Save'))]));
      }finally{editor.dispose();}
      if(body==null||body.isEmpty||body==c.body)return;
    }
    if(action=='delete'){
      final confirmed=await showDialog<bool>(context:context,builder:(ctx)=>AlertDialog(
        title:const Text('Delete comment?'),content:const Text('Your comment will be removed. Replies may remain visible.'),
        actions:[TextButton(onPressed:()=>Navigator.pop(ctx,false),child:const Text('Cancel')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),child:const Text('Delete'))]));
      if(confirmed!=true)return;
    }
    if(action=='report'){
      final reason=await showDialog<String>(context:context,builder:(ctx)=>SimpleDialog(
        title:const Text('Report comment'),children:[
        for(final entry in const {'spam':'Spam','harassment':'Harassment','hate':'Hate',
          'violence':'Violence','fraud':'Fraud','impersonation':'Impersonation',
          'privacy':'Privacy','inaccurate':'Inaccurate','other':'Other'}.entries)
          SimpleDialogOption(onPressed:()=>Navigator.pop(ctx,entry.key),child:Text(entry.value))]));
      if(reason==null)return;
      action='report:$reason';
    }
    if(action.startsWith('react:')){
      // Selecting the current reaction removes it, as on a post.
    }
    if(!mounted||ticket!=generation)return;
    setState(()=>writingComments.add(c.id));
    try{
      if(action=='edit')await (api as CommentConversationApi).editComment(c.id,body!,c.revision);
      else if(action=='delete')await (api as CommentConversationApi).removeComment(c.id);
      else if(action.startsWith('report:'))await (api as CommentConversationApi).reportComment(c.id,action.substring(7));
      else if(action.startsWith('react:'))await (api as CommentConversationApi).reactComment(c.id,
        action.substring(6)==c.viewerReaction?null:action.substring(6));
      if(!mounted||ticket!=generation)return;
      if(action.startsWith('report:'))ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content:Text('Report submitted for review.')));
      else await reloadCommentsOnly(revealParent:c.parentId);
    }catch(_){if(mounted&&ticket==generation)ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(t('Action not confirmed. Try again.','Ba a tabbatar ba. Sake gwadawa.'))));}
    finally{if(mounted&&ticket==generation)setState(()=>writingComments.remove(c.id));}
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
              Text(c.state=='removed'?t('Comment removed','An goge sharhin'):c.body),
              if(c.editedAt!=null&&c.state!='removed')Text(t('Edited','An gyara'),
                style:Theme.of(context).textTheme.labelSmall),
            ]),
          ),
          Padding(padding:const EdgeInsetsDirectional.only(start:10,top:3),child:
            Wrap(spacing:14,crossAxisAlignment:WrapCrossAlignment.center,children:[
              Text(MaterialLocalizations.of(context).formatTimeOfDay(
                TimeOfDay.fromDateTime(c.createdAt.toLocal())),
                style:Theme.of(context).textTheme.bodySmall),
              if(c.state=='pending')Text(t('Awaiting review','Ana jiran dubawa'),
                style:Theme.of(context).textTheme.bodySmall),
              if(c.state=='visible'&&widget.canReply&&!reply)
                InkWell(onTap:()=>setState(()=>replyTo=c.id),
                  child:Text(t('Reply','Amsa'),
                    style:Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight:FontWeight.w700))),
              if(c.state=='visible'&&widget.engagementApi is CommentConversationApi)
                InkWell(onTap:()=>commentAction(c,'react:${c.viewerReaction??'like'}'),
                  child:Text(c.viewerReaction==null?t('Like','So'):
                    '${FeedPost.reactionEmoji[c.viewerReaction]} ${c.viewerReaction}',
                    style:Theme.of(context).textTheme.labelMedium?.copyWith(
                      color:c.viewerReaction==null?null:Theme.of(context).colorScheme.primary))),
              if(c.totalReactions>0)Text('${c.totalReactions} ${c.totalReactions==1?'reaction':'reactions'}',
                style:Theme.of(context).textTheme.bodySmall),
              if(c.state=='visible'&&widget.engagementApi is CommentConversationApi)
                PopupMenuButton<String>(tooltip:t('Comment options','Zaɓuɓɓukan sharhi'),
                  onSelected:(value)=>unawaited(commentAction(c,value)),
                  itemBuilder:(_)=>[
                    for(final kind in FeedPost.reactionKinds)
                      PopupMenuItem(value:'react:$kind',child:Text('${FeedPost.reactionEmoji[kind]} ${kind[0].toUpperCase()+kind.substring(1)}')),
                    if(c.ownedBy(widget.accountKey))...[
                      PopupMenuItem(value:'edit',child:Text(t('Edit','Gyara'))),
                      PopupMenuItem(value:'delete',child:Text(t('Delete','Goge'))),
                    ]else PopupMenuItem(value:'report',child:Text(t('Report','Kai rahoto'))),
                  ],child:const Padding(padding:EdgeInsets.all(6),
                    child:Icon(Icons.more_horiz,size:18))),
            ])),
          if(!reply&&c.replyCount>0&&widget.engagementApi is CommentConversationApi)
            Align(alignment:AlignmentDirectional.centerStart,child:TextButton.icon(
              onPressed:loadingReplies.contains(c.id)?null:()=>expandReplies(c),
              icon:const Icon(Icons.subdirectory_arrow_right,size:17),
              label:Text(expandedReplies.contains(c.id)?t('Hide replies','Ɓoye amsoshi'):
                '${c.replyCount} ${c.replyCount==1?'reply':'replies'}'))),
          if(!reply&&expandedReplies.contains(c.id))...[
            for(final child in replies[c.id]??const <FeedComment>[])commentRow(child),
            if((replies[c.id]?.length??0)<c.replyCount)
              TextButton(onPressed:loadingReplies.contains(c.id)?null:()=>expandReplies(c,more:true),
                child:Text(t('More replies','Karin amsoshi'))),
          ],
        ])),
      ]),
    );
  }
  @override Widget build(BuildContext context){
    if(!widget.enabled)return Scaffold(appBar:AppBar(title:Text(t('Post','Labari'))),
      body:Center(child:Text(t('This feature is unavailable','Ba a samun wannan aikin'))));
    final p=post;
    return Scaffold(appBar:widget.commentsOnly?null:AppBar(title:Text(t('Post','Labari'))),
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
            if(!widget.commentsOnly)...[
            Row(children:[Expanded(child:StatusPostAuthorHeader(
              post:p,
              agent:widget.authorDirectory[p.authorMasanaId],
              onProfile:p.isHuman
                ? (p.authorHandle==null||widget.onHumanProfile==null?null:
                    ()=>widget.onHumanProfile!(p.authorHandle!))
                : (widget.onMasanaProfile==null?null:
                    ()=>widget.onMasanaProfile!(p.authorMasanaId)),
            )),
              StatusPostSafetyMenu(postId:p.id,accountKey:widget.accountKey,
                api:widget.engagementApi is FeedSafetyApi?widget.engagementApi as FeedSafetyApi:null,
                isCurrent:()=>mounted&&widget.enabled,
                onHidden:()=>setState((){generation++;denied=true;post=null;comments=[];loading=false;loadingMore=false;reacting=false;})),
            ]),
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
                ()=>unawaited(_changeReaction(p.currentReaction==null?'like':null)),
              onComment:widget.canReply?()=>_commentFocus.requestFocus():null,
              onShare:widget.onSharePost==null?null:
                ()=>unawaited(widget.onSharePost!(p)),
              onLongLike:widget.engagementApi is ReactionFeedApi?
                (anchor)=>unawaited(_chooseReaction(anchor)):null),
            ],
            Text(t('Comments','Sharhi')+' ('+p.commentCount.toString()+')'),
            Row(mainAxisAlignment:MainAxisAlignment.center,children:[
              ChoiceChip(label:Text(t('Newest','Sabbi')),selected:sort=='newest',
                onSelected:(_)=>changeSort('newest')),
              const SizedBox(width:8),
              ChoiceChip(label:Text(t('Oldest','Tsofaffi')),selected:sort=='oldest',
                onSelected:(_)=>changeSort('oldest')),
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
        if(!denied&&p!=null&&widget.accountKey.isNotEmpty&&widget.canReply)
          Padding(padding:const EdgeInsets.all(8),child:Column(children:[
          if(replyTo!=null)Row(children:[Expanded(child:Text(t('Replying to comment','Amsa ga sharhi'))),
            IconButton(tooltip:t('Cancel reply','Soke amsa'),
              onPressed:()=>setState(()=>replyTo=null),icon:const Icon(Icons.close))]),
          Row(children:[
            Expanded(child:TextField(controller:input,focusNode:_commentFocus,maxLength:1000,minLines:1,maxLines:3,
              enabled:!sending,decoration:InputDecoration(
                hintText:t('Write a comment','Rubuta sharhi')))),
            IconButton(tooltip:t('Send','Aika'),onPressed:sending||
              input.text.trim().isEmpty||input.text.trim().length>1000?null:submit,
              icon:sending?const SizedBox(width:18,height:18,child:CircularProgressIndicator(strokeWidth:2)):
                const Icon(Icons.send)),
          ])
        ])),
      ])));
  }
}
