import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'feed_api.dart';
import 'feed_media_api.dart';
import 'feed_inline_media_card.dart';
import '../../ui/components/masanawa_list_skeleton.dart';
import 'feed_post_detail_screen.dart';
import 'saved_status_library_screen.dart';
import '../videos/video_models.dart';

/// Account-scoped Status feed. Typed author cards preserve legacy Masana reads.
class MasanaFeedScreen extends StatefulWidget {
  const MasanaFeedScreen({super.key,required this.api,required this.accountKey,
    this.onMasanaProfile,this.onHumanProfile,this.onOpenMedia,this.onReport,this.enabled=true,
    this.audioPlaybackAvailable=false,this.authorScoped=false,
    this.mediaApi,this.inlineMediaRenderer,this.onCreateHumanStatus,
    this.onOpenSavedVideo,this.wrapAccountRoute});
  final FeedApi api;
  final String accountKey;
  final ValueChanged<String>? onMasanaProfile,onHumanProfile;
  final void Function(FeedPost post, String mediaId)? onOpenMedia;
  final ValueChanged<String>? onReport;
  final bool enabled;
  final Future<bool> Function()? onCreateHumanStatus;
  final Future<void> Function(ExternalVideo)? onOpenSavedVideo;
  /// Session owner installs a reactive guard on each pushed page. Switching
  /// accounts hides previous-account content without waiting for a request.
  final Widget Function(Widget content)? wrapAccountRoute;
  final bool audioPlaybackAvailable;
  /// A dedicated professional feed has one author, not global ranking modes.
  final bool authorScoped;
  /// Optional per-account signed media projection, never persisted to disk.
  final FeedMediaApi? mediaApi;
  final Widget Function(FeedMediaGrant)? inlineMediaRenderer;
  @override State<MasanaFeedScreen> createState()=>_MasanaFeedScreenState();
}
class _MasanaFeedScreenState extends State<MasanaFeedScreen> {
  String mode='for_you';
  List<FeedPost> items=[];
  String? cursor,error;
  bool loading=false,fetchingMore=false,offline=false;
  int generation=0;
  final Set<String> pendingActions={};
  String? pageError;
  void clearProjection() {
    generation++;items=[];cursor=null;error=null;pageError=null;offline=false;
    loading=false;fetchingMore=false;pendingActions.clear();
  }
  bool accessLost(Object e) {
    if(e is! DioException)return false;
    final status=e.response?.statusCode,data=e.response?.data;
    return status==401||status==403||status==410||
      (data is Map&&data['code']=='feature_disabled');
  }
  String t(String en,String ha)=>Localizations.localeOf(context).languageCode=='ha'?ha:en;
  @override void initState(){super.initState();WidgetsBinding.instance.addPostFrameCallback((_){if(mounted)refresh();});}
  @override void didUpdateWidget(covariant MasanaFeedScreen old) {
    super.didUpdateWidget(old);
    // A refreshed auth token recreates the Status API wrapper but keeps the
    // same authorized account. Do not erase visible posts or refetch then.
    if(old.accountKey!=widget.accountKey||old.enabled!=widget.enabled||
       (widget.accountKey.isEmpty&&old.api!=widget.api)){
      clearProjection();
      if(widget.enabled)refresh();
    }
  }
  Future<void> refresh() async {
    if(!widget.enabled)return;
    final ticket=++generation;
    setState((){loading=true;fetchingMore=false;error=null;pageError=null;pendingActions.clear();});
    try{
      final page=await widget.api.list(mode:mode);
      if(!mounted||ticket!=generation)return;
      setState((){items=page.items;cursor=page.nextCursor;offline=false;loading=false;});
    }catch(e){
      if(!mounted||ticket!=generation)return;
      setState((){if(accessLost(e)){items=[];cursor=null;}error=e.toString();offline=e is DioException&&(e.type==DioExceptionType.connectionError||e.type==DioExceptionType.connectionTimeout);loading=false;});
    }
  }
  Future<void> nextPage() async {
    if(!widget.enabled||fetchingMore||cursor==null||loading)return;
    final ticket=generation,after=cursor;
    setState((){fetchingMore=true;pageError=null;});
    try{
      final page=await widget.api.list(mode:mode,cursor:after);
      if(!mounted||ticket!=generation)return;
      setState((){
        final seen=items.map((p)=>p.id).toSet();
        items=[...items,...page.items.where((p)=>seen.add(p.id))];
        cursor=page.nextCursor;fetchingMore=false;
      });
    }catch(e){if(mounted&&ticket==generation){setState((){
      if(accessLost(e)){items=[];cursor=null;error=e.toString();}
      fetchingMore=false;pageError=e.toString();
    });}}
  }
  Future<void> action(FeedPost p,{required bool like}) async {
    final index=items.indexWhere((row)=>row.id==p.id);
    if(!widget.enabled||index<0||pendingActions.contains(p.id))return;
    final enabled=like?!p.liked:!p.saved,scope=generation;
    setState((){pendingActions.add(p.id);items[index]=like?p.withAction(liked:enabled):p.withAction(saved:enabled);});
    try{
      if(like){await widget.api.like(p.id,enabled);}else{await widget.api.save(p.id,enabled);}
    }catch(e){
      if(!mounted||scope!=generation)return;
      if(accessLost(e)){setState((){clearProjection();error=e.toString();});return;}
      final now=items.indexWhere((row)=>row.id==p.id);
      if(now>=0)setState(()=>items[now]=p);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(t('Action failed. Retry.','Ba a yi nasara ba. Sake gwadawa.'))));
    }finally{
      if(mounted&&scope==generation)setState(()=>pendingActions.remove(p.id));
    }
  }
  Future<void> react(FeedPost post,String? kind) async {
    if(!widget.enabled||widget.api is! ReactionFeedApi||
        pendingActions.contains(post.id))return;
    final index=items.indexWhere((row)=>row.id==post.id);
    if(index<0)return;
    final version=generation;
    setState(() {
      pendingActions.add(post.id);
      items[index]=post.withReaction(kind);
    });
    try {
      await (widget.api as ReactionFeedApi).react(post.id,kind);
      // Verify the authoritative counters after concurrent reaction writes.
      if(widget.api is DioFeedApi) {
        final projected=await (widget.api as DioFeedApi).detail(post.id);
        if(!mounted||version!=generation)return;
        final now=items.indexWhere((row)=>row.id==post.id);
        if(now>=0)setState(()=>items[now]=projected);
      }
    }catch(e) {
      if(!mounted||version!=generation)return;
      if(accessLost(e)) {
        setState(() {clearProjection();error=e.toString();});
        return;
      }
      final now=items.indexWhere((row)=>row.id==post.id);
      if(now>=0)setState(()=>items[now]=post);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text(t('Reaction not confirmed. Refresh or retry.',
            'Ba a tabbatar da martani ba. Sake gwadawa.'))));
    }finally{
      if(mounted&&version==generation) {
        setState(()=>pendingActions.remove(post.id));
      }
    }
  }
  Future<void> openPost(FeedPost post) async {
    if(!widget.enabled||widget.accountKey.isEmpty)return;
    final feed=widget.api,account=widget.accountKey;
    final guard=widget.wrapAccountRoute;
    await Navigator.of(context).push(MaterialPageRoute<void>(builder:(_){
      final detail=FeedPostDetailScreen(
      initialPost:post,accountKey:account,
      loadPost:(id)=>feed is DioFeedApi?feed.detail(id):Future.value(post),
      loadThread:(id,sort)=>feed is DioFeedApi?feed.thread(id,sort):feed.comments(id),
      loadMoreThread:feed is DioFeedApi
        ?(id,sort,before)=>feed.threadPage(id,sort,before:before):null,
      sendComment:(id,body,key,parent) async {
        if(feed is DioFeedApi){await feed.sendThreadComment(id,body,key,parent);}
        else if(parent==null){await feed.comment(id,body,key);}
        else {throw StateError('Reply transport unavailable');}
      },
      canReply:feed is DioFeedApi,
      onMasanaProfile:widget.onMasanaProfile,onHumanProfile:widget.onHumanProfile,onMedia:widget.onOpenMedia==null?null:(id)=>widget.onOpenMedia!(post,id),onReport:widget.onReport,
      enabled:widget.enabled,
      );
      return guard?.call(detail)??detail;
    }));
  }
  void openSaved() {
    if(widget.api is! SavedStatusLibraryApi || widget.accountKey.isEmpty) return;
    final account = widget.accountKey;
    final guard=widget.wrapAccountRoute;
    Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) {
      final saved=SavedStatusLibraryScreen(
        api: widget.api as SavedStatusLibraryApi,
        accountKey: account,
        isAccountCurrent: () => mounted && widget.enabled && widget.accountKey == account,
        openPost: (post) async {
          // A saved post may have lost visibility since the list read.
          // Re-authorize the original before opening the content page.
          final api = widget.api;
          final currentPost = api is DioFeedApi
              ? await api.detail(post.id) : post;
          if (!mounted || widget.accountKey != account) return;
          await openPost(currentPost);
        },
        openVideo: widget.onOpenSavedVideo,
      );
      return guard?.call(saved)??saved;
    }));
  }
  void openComments(FeedPost post) {
    // Use the complete thread page so typing, scrolling and keyboard focus
    // are not lost in a height-constrained modal.
    openPost(post);
  }
  @override Widget build(BuildContext context){
    if(!widget.enabled)return Center(child:Text(t('Status is currently unavailable','Ba a samun labarai a yanzu')));
    return Column(children:[
      if(!widget.authorScoped&&widget.onCreateHumanStatus!=null)
        Padding(padding:const EdgeInsets.symmetric(horizontal:12,vertical:8),
          child:OutlinedButton.icon(
            onPressed:() async {
              final changed=await widget.onCreateHumanStatus!();
              if(changed&&mounted){
                setState(() {mode='for_you';items=[];cursor=null;});
                await refresh();
              }
            },
            icon:const Icon(Icons.edit_outlined),
            label:Text(t('Write a Status','Rubuta labari')),
          )),
      if(!widget.authorScoped && widget.api is SavedStatusLibraryApi)
        Align(alignment:AlignmentDirectional.centerEnd,
          child:TextButton.icon(
            onPressed:widget.accountKey.isNotEmpty?openSaved:null,
            icon:const Icon(Icons.bookmarks_outlined),
            label:Text(t('Saved','Ajiye')),
          )),
      if(!widget.authorScoped) Row(children:[
        Expanded(child:ChoiceChip(label:Text(t('For You','Domin Kai')),selected:mode=='for_you',onSelected:(_){setState((){mode='for_you';items=[];cursor=null;});refresh();})),
        const SizedBox(width:8),
        Expanded(child:ChoiceChip(label:Text(t('Following','Wadanda nake bi')),selected:mode=='following',onSelected:(_){setState((){mode='following';items=[];cursor=null;});refresh();})),
      ]),
      if(pageError!=null&&items.isNotEmpty)MaterialBanner(content:Text(t('Could not load more updates','An kasa dauko karin labarai')),actions:[TextButton(onPressed:nextPage,child:Text(t('Retry','Sake gwadawa')))]),
      if(offline)MaterialBanner(content:Text(t('Offline — showing previous updates','Ba intanet — ana nuna bayanan baya')),actions:[TextButton(onPressed:refresh,child:Text(t('Retry','Sake gwadawa')))]),
      if(error!=null&&!offline)MaterialBanner(content:Text(t('Could not load updates','An kasa dauko labarai')),actions:[TextButton(onPressed:refresh,child:Text(t('Retry','Sake gwadawa')))]),
      Expanded(child:loading&&items.isEmpty
        ?const MasanawaListSkeleton(semanticLabel: 'Loading Status updates')
        :items.isEmpty?Center(child:SingleChildScrollView(child:Column(mainAxisSize:MainAxisSize.min,children:[
          const Icon(Icons.article_outlined,size:48),
          Text(error!=null?t('Status is unavailable. Retry.','Ba a samun labarai yanzu. Sake gwadawa.'):mode=='following'?t('No updates from people or Masana you follow yet.','Har yanzu babu sabuntawa daga wadanda kake bi.'):t('No Status updates yet','Babu labarai tukuna'),textAlign:TextAlign.center),
          if(mode=='following'&&error==null)
            TextButton(onPressed:(){setState((){mode='for_you';items=[];cursor=null;});refresh();},child:Text(t('Explore For You','Duba Domin Kai')))
          else TextButton(onPressed:refresh,child:Text(t('Retry','Sake gwadawa')))])))
        :RefreshIndicator(onRefresh:refresh,child:ListView.builder(
          key: PageStorageKey<String>('status-feed-${widget.accountKey}-$mode'),
          physics:const AlwaysScrollableScrollPhysics(),
          itemCount:items.length+(cursor==null?0:1),
          itemBuilder:(ctx,i){
            if(i==items.length)return Center(child:TextButton(onPressed:fetchingMore?null:nextPage,child:Text(t('Load more','Kara nunawa'))));
            final post=items[i];
            return Card(key:ValueKey(post.id),margin:const EdgeInsets.symmetric(vertical:5,horizontal:8),
              child:Padding(padding:const EdgeInsets.all(12),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
                Row(children:[
                  CircleAvatar(radius:20,child:Icon(
                    post.isHuman?Icons.person_outline:Icons.smart_toy_outlined)),
                  const SizedBox(width:8),
                  Expanded(child:TextButton(
                    onPressed:post.isHuman
                      ? (post.authorHandle==null||widget.onHumanProfile==null?null:
                          ()=>widget.onHumanProfile!(post.authorHandle!))
                      : (widget.onMasanaProfile==null?null:
                          ()=>widget.onMasanaProfile!(post.authorMasanaId)),
                    child:Align(alignment:AlignmentDirectional.centerStart,
                      child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
                        Text(post.displayAuthor,maxLines:2,overflow:TextOverflow.ellipsis),
                        Text(post.isHuman?'Member':'Masana · AI',
                          style:Theme.of(context).textTheme.labelSmall),
                      ])),
                  )),
                ]),
                Padding(padding:const EdgeInsets.only(bottom:4),child:Text(
                  '${post.publishedAt.toLocal().year}-${post.publishedAt.toLocal().month.toString().padLeft(2,'0')}-${post.publishedAt.toLocal().day.toString().padLeft(2,'0')}',
                  style:Theme.of(context).textTheme.bodySmall)),
                if(post.body.isNotEmpty)Text(post.body,style:Theme.of(context).textTheme.bodyLarge),
                Align(alignment:AlignmentDirectional.centerStart,
                  child:TextButton(onPressed:()=>openPost(post),
                    child:Text(t('Open post','Bude labari')))),
                if(post.kind=='image' && post.mediaIds.isNotEmpty && widget.mediaApi!=null)
                  FeedInlineMediaCard(
                    key:ValueKey('status-inline-${widget.accountKey}-${post.id}'),
                    api:widget.mediaApi!,accountKey:widget.accountKey,
                    postId:post.id,mediaId:post.mediaIds.first,
                    mediaCount:post.mediaIds.length,
                    onOpen:widget.onOpenMedia==null?null:()=>widget.onOpenMedia!(post,post.mediaIds.first),
                    renderer:widget.inlineMediaRenderer,
                  ),
                if(post.mediaIds.isNotEmpty && (post.kind!='image'||widget.mediaApi==null))
                  Wrap(spacing:8,children:post.mediaIds.map((id)=>ActionChip(
                  avatar:Icon(post.kind=='audio'?Icons.play_circle_outline:Icons.image_outlined),
                  label:Text(post.kind=='audio'?t('Play audio','Kunna sauti'):t('View image','Duba hoto')),
                  onPressed:widget.onOpenMedia==null||(post.kind=='audio'&&!widget.audioPlaybackAvailable)
                    ?null:()=>widget.onOpenMedia!(post,id))).toList()),
                if(post.totalReactions>0)
                  Padding(padding:const EdgeInsets.only(top:6),child:Text(
                    FeedPost.reactionKinds.where((kind)=>
                      (post.effectiveReactionCounts[kind]??0)>0).map((kind)=>
                        (FeedPost.reactionEmoji[kind]??'')+' '+post.effectiveReactionCounts[kind].toString()).join('  '),
                    style:Theme.of(context).textTheme.bodySmall,
                  )),
                Wrap(spacing:4,children:[
                  TextButton.icon(onPressed:pendingActions.contains(post.id)?null:()=>action(post,like:true),icon:Icon(post.liked?Icons.favorite:Icons.favorite_border),
                    label:Text('${post.likeCount}')),
                  if(widget.api is ReactionFeedApi)
                    PopupMenuButton<String>(
                      tooltip:t('React to post','Martani ga labari'),
                      enabled:!pendingActions.contains(post.id),
                      icon:const Icon(Icons.add_reaction_outlined),
                      onSelected:(kind)=>react(post,
                        kind=='clear'||kind==post.currentReaction?null:kind),
                      itemBuilder:(_)=>[
                        for(final kind in FeedPost.reactionKinds)
                          PopupMenuItem<String>(
                            value:kind,
                            child:Row(children:[
                              Text((FeedPost.reactionEmoji[kind]??'')+'  '+
                                kind[0].toUpperCase()+kind.substring(1)),
                              if(kind==post.currentReaction)
                                const Icon(Icons.check,size:18),
                            ]),
                          ),
                        if(post.currentReaction!=null)
                          PopupMenuItem<String>(
                            value:'clear',
                            child:Text(t('Remove reaction','Cire martani')),
                          ),
                      ],
                    ),
                  TextButton.icon(onPressed:()=>openComments(post),icon:const Icon(Icons.mode_comment_outlined),label:Text('${post.commentCount}')),
                  IconButton(tooltip:t('Save','Ajiye'),onPressed:pendingActions.contains(post.id)?null:()=>action(post,like:false),
                    icon:Icon(post.saved?Icons.bookmark:Icons.bookmark_border)),
                  IconButton(tooltip:t('Report','Kai rahoto'),onPressed:widget.onReport==null?null:()=>widget.onReport!(post.id),
                    icon:const Icon(Icons.flag_outlined))
                ])
              ])));
          })))
    ]);
  }
}

