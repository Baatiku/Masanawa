import 'status_post_safety_menu.dart';
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:share_plus/share_plus.dart';

import '../../agents/agent_directory.dart';
import '../../theme/masanawa_theme.dart';
import 'feed_api.dart';
import 'status_tip_flow.dart';
import 'feed_media_api.dart';
import 'status_post_media.dart';
import 'status_post_author_header.dart';
import 'status_post_body.dart';
import 'status_post_boost_action.dart';
import 'status_post_social_proof.dart';
import '../../ui/components/masanawa_list_skeleton.dart';
import 'feed_post_detail_screen.dart';
import 'status_promotion_api.dart';
import 'my_status_promotions_screen.dart';
import 'status_qualified_view_observer.dart';
import 'status_reaction_picker.dart';
import 'status_post_action_row.dart';
import 'status_feed_metrics.dart';

/// Account-scoped Status feed. Typed author cards preserve legacy Masana reads.
class MasanaFeedScreen extends StatefulWidget {
  const MasanaFeedScreen({
    super.key,
    required this.api,
    required this.accountKey,
    this.onMasanaProfile,
    this.onHumanProfile,
    this.onOpenMedia,
    this.authorDirectory = const {},
    this.enabled = true,
    this.audioPlaybackAvailable = false,
    this.authorScoped = false,
    this.ownPostsOnly = false,
    this.mediaApi,
    this.inlineMediaRenderer,
    this.statusTips,
    this.onTipCompleted,
    this.wrapAccountRoute,
    this.searchExpanded,
    this.promotions,
    this.ownerName,
  });
  final FeedApi api;
  /// Financial controls appear only after server capability discovery.
  final StatusPromotionApi? promotions;
  /// Current authenticated owner's display name for a truthful composer avatar.
  /// Not used as a post-author identity or a financial account key.
  final String? ownerName;
  final StatusTipFlow? statusTips;
  final VoidCallback? onTipCompleted;
  /// Header-owned search affordance for the Status root.
  final ValueNotifier<bool>? searchExpanded;
  final String accountKey;
  final ValueChanged<String>? onMasanaProfile, onHumanProfile;
  final void Function(FeedPost post, String mediaId)? onOpenMedia;
  final Map<String, AgentDirectoryEntry> authorDirectory;
  final bool enabled;

  /// Session owner installs a reactive guard on each pushed page. Switching
  /// accounts hides previous-account content without waiting for a request.
  final Widget Function(Widget content)? wrapAccountRoute;
  final bool audioPlaybackAvailable;

  /// A dedicated professional feed has one author, not global ranking modes.
  final bool authorScoped;

  /// A secondary owner-only public post route, never a new root/feed ledger.
  final bool ownPostsOnly;

  /// Optional per-account signed media projection, never persisted to disk.
  final FeedMediaApi? mediaApi;
  final Widget Function(FeedMediaGrant)? inlineMediaRenderer;
  @override
  State<MasanaFeedScreen> createState() => _MasanaFeedScreenState();
}

class _MasanaFeedScreenState extends State<MasanaFeedScreen> {
  void _frameTimings(List<FrameTiming> frames){
    for(final frame in frames){
      if(frame.totalSpan.inMilliseconds>32){
        StatusFeedMetrics.observe('frame-jank',frame.totalSpan,succeeded:false);
        break;
      }
    }
  }
  final searchController = TextEditingController();
  final scrollController=ScrollController();
  Timer? freshnessTimer;
  FeedPage? newerPage;
  String? sourceFilter;
  DateTimeRange? dateFilter;
  String searchTerm = '';
  String mode = 'for_you';
  bool localSearchExpanded = false;
  List<FeedPost> items = [];
  final locallyHiddenPosts=<String>{};
  String? cursor, error;
  bool loading = false, fetchingMore = false, offline = false;
  bool promotionsAvailable = false;
  int generation = 0;
  final Set<String> pendingActions = {};
  final Set<String> sharingPosts = {};
  int shareGeneration = 0;
  String? pageError;
  void _onExternalSearchChanged() {
    if (!mounted) return;
    if (widget.searchExpanded?.value == false) clearSearch();
    setState(() {});
  }

  void clearProjection() {
    generation++;
    items = [];
    cursor = null;
    error = null;
    pageError = null;
    offline = false;
    loading = false;
    fetchingMore = false;
    pendingActions.clear();
    sharingPosts.clear();shareGeneration++;
    promotionsAvailable = false;
    newerPage=null;
  }

  @override
  void dispose() {
    generation++;
    widget.searchExpanded?.removeListener(_onExternalSearchChanged);
    searchController.dispose();
    freshnessTimer?.cancel();
    scrollController.dispose();
    SchedulerBinding.instance.removeTimingsCallback(_frameTimings);
    super.dispose();
  }

  void applySearch() {
    final query = searchController.text.trim();
    if (query.isNotEmpty && (query.length < 2 || query.codeUnits.length > 80)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            t(
              'Search needs 2–80 characters.',
              'Bincike yana bukatar haruffa 2–80.',
            ),
          ),
        ),
      );
      return;
    }
    if (query == searchTerm) return;
    setState(() {
      searchTerm = query;
      items = [];
      cursor = null;
      pageError = null;
    });
    refresh();
  }

  void clearSearch() {
    searchController.clear();
    if (searchTerm.isEmpty) return;
    setState(() {
      searchTerm = '';
      items = [];
      cursor = null;
      pageError = null;
    });
    refresh();
  }

  Future<FeedPage> listCurrent([String? after]) {
    if ((sourceFilter!=null||dateFilter!=null)&&widget.api is FilteredFeedApi){
      return (widget.api as FilteredFeedApi).filteredPosts(mode:mode,
        query:searchTerm.isEmpty?null:searchTerm,cursor:after,
        source:sourceFilter,from:dateFilter?.start,to:dateFilter?.end);
    }
    if (searchTerm.isNotEmpty && widget.api is SearchFeedApi) {
      return (widget.api as SearchFeedApi).searchPosts(
        mode: mode,
        query: searchTerm,
        cursor: after,
      );
    }
    return widget.api.list(mode: mode, cursor: after);
  }

  bool accessLost(Object e) {
    if (e is! DioException) return false;
    final status = e.response?.statusCode, data = e.response?.data;
    return status == 401 ||
        status == 403 ||
        status == 410 ||
        (data is Map && data['code'] == 'feature_disabled');
  }

  String t(String en, String ha) =>
      Localizations.localeOf(context).languageCode == 'ha' ? ha : en;
  @override
  void initState() {
    super.initState();
    widget.searchExpanded?.addListener(_onExternalSearchChanged);
    mode = widget.ownPostsOnly ? 'mine' : 'for_you';
    scrollController.addListener(() {
      if(!scrollController.hasClients||!mounted)return;
      if(scrollController.position.extentAfter<650&&cursor!=null&&
          !fetchingMore&&!loading&&pageError==null)unawaited(nextPage());
    });
    SchedulerBinding.instance.addTimingsCallback(_frameTimings);
    freshnessTimer=Timer.periodic(const Duration(minutes:2),(_)=>unawaited(checkNewUpdates()));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {refresh();checkPromotions();}
    });
  }

  @override
  void didUpdateWidget(covariant MasanaFeedScreen old) {
    super.didUpdateWidget(old);
    if(old.accountKey!=widget.accountKey){locallyHiddenPosts.clear();}
    if (old.searchExpanded != widget.searchExpanded) {
      old.searchExpanded?.removeListener(_onExternalSearchChanged);
      widget.searchExpanded?.addListener(_onExternalSearchChanged);
    }
    if(old.api!=widget.api){shareGeneration++;sharingPosts.clear();}
    // A refreshed auth token recreates the Status API wrapper but keeps the
    // same authorized account. Do not erase visible posts or refetch then.
    if (old.accountKey != widget.accountKey ||
        old.enabled != widget.enabled ||
        old.ownPostsOnly != widget.ownPostsOnly ||
        (widget.accountKey.isEmpty && old.api != widget.api)) {
      clearProjection();
      mode = widget.ownPostsOnly ? 'mine' : 'for_you';
      searchController.clear();
      searchTerm = '';
      sourceFilter=null;
      dateFilter=null;
      if (widget.enabled) refresh();
      if (widget.enabled) checkPromotions();
    }
  }

  Future<void> checkPromotions() async {
    final api=widget.promotions,scope=generation;
    if(api==null||!widget.enabled||widget.accountKey.isEmpty)return;
    try{
      final enabled=await api.available();
      if(mounted&&scope==generation)setState(()=>promotionsAvailable=enabled);
    }catch(_){if(mounted&&scope==generation)
      setState(()=>promotionsAvailable=false);}
  }

  Future<void> reconcileQualifiedView(String postId,int scope) async {
    if(widget.api is! DioFeedApi)return;
    try{
      final verified=await (widget.api as DioFeedApi).detail(postId);
      if(!mounted||scope!=generation)return;
      final i=items.indexWhere((p)=>p.id==postId);
      if(i>=0)setState(()=>items[i]=verified);
    }catch(_){/* An accepted server event is not undone by a stale read. */}
  }

  Future<void> openMyPromotions() async {
    final api=widget.promotions;
    if(api==null||widget.accountKey.isEmpty)return;
    final account=widget.accountKey,scope=generation;
    final page=MyStatusPromotionsScreen(api:api,canBoost:false,
      onCreatePromotion:null);
    await Navigator.push(context,MaterialPageRoute<void>(builder:(_)=>
      widget.wrapAccountRoute?.call(page)??page));
    if(mounted&&scope==generation&&account==widget.accountKey)await refresh();
  }

  void verifyOwnerProjection(FeedPage page) {
    if (widget.ownPostsOnly &&
        page.items.any(
          (post) => !post.isHuman || post.authorId != widget.accountKey,
        )) {
      throw const FormatException('Unexpected author in own Status');
    }
  }

  Future<void> refresh() async {
    if (!widget.enabled) return;
    final timing=Stopwatch()..start();
    final ticket = ++generation;
    setState(() {
      loading = true;
      fetchingMore = false;
      error = null;
      pageError = null;
      pendingActions.clear();
      sharingPosts.clear();shareGeneration++;
      newerPage=null;
    });
    try {
      final page = await listCurrent();
      verifyOwnerProjection(page);
      if (!mounted || ticket != generation) return;
      setState(() {
        items = page.items.where((p)=>!locallyHiddenPosts.contains(p.id)).toList();
        cursor = page.items.isEmpty ? null : page.nextCursor;
        offline = false;
        loading = false;
      });
      WidgetsBinding.instance.addPostFrameCallback((_){
        if(mounted&&ticket==generation)StatusFeedMetrics.observe(
          'first-page',timing.elapsed,succeeded:true);
      });
    } catch (e) {
      if (!mounted || ticket != generation) return;
      setState(() {
        if (accessLost(e)) {
          items = [];
          cursor = null;
        }
        error = e.toString();
        offline =
            e is DioException &&
            (e.type == DioExceptionType.connectionError ||
                e.type == DioExceptionType.connectionTimeout);
        loading = false;
      });
      StatusFeedMetrics.observe('first-page',timing.elapsed,succeeded:false);
    }
  }

  Future<void> checkNewUpdates() async {
    if(!mounted||!widget.enabled||loading||items.isEmpty||
       fetchingMore||newerPage!=null)return;
    final ticket=generation,firstId=items.first.id;
    try{
      final page=await listCurrent();
      if(!mounted||ticket!=generation||items.isEmpty||items.first.id!=firstId)return;
      if(page.items.any((p)=>p.id==firstId)&&page.items.first.id!=firstId){
        setState(()=>newerPage=page);
      }
    }catch(_){/* Freshness checks are optional, never replace visible content. */}
  }

  Future<void> showFilters() async {
    if(widget.api is! FilteredFeedApi)return;
    String? draft=sourceFilter;
    DateTimeRange? range=dateFilter;
    final apply=await showModalBottomSheet<bool>(context:context,isScrollControlled:true,
      showDragHandle:true,builder:(sheet)=>StatefulBuilder(builder:(ctx,update)=>
        SafeArea(child:Padding(padding:const EdgeInsets.fromLTRB(20,8,20,24),
          child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.start,children:[
            Text(t('Filter Status','Tace labarai'),style:Theme.of(ctx).textTheme.titleLarge),
            const SizedBox(height:12),
            Wrap(spacing:8,children:[
              for(final entry in const <String?,String>{null:'All sources','x':'X','facebook':'Facebook'}.entries)
                ChoiceChip(label:Text(entry.value),selected:draft==entry.key,
                  onSelected:(_)=>update(()=>draft=entry.key)),
            ]),
            ListTile(leading:const Icon(Icons.date_range_outlined),
              title:Text(range==null?'Any date':'${MaterialLocalizations.of(ctx).formatMediumDate(range!.start)} – ${MaterialLocalizations.of(ctx).formatMediumDate(range!.end)}'),
              onTap:() async {
                final picked=await showDateRangePicker(context:ctx,firstDate:DateTime(2020),
                  lastDate:DateTime.now(),initialDateRange:range);
                if(picked!=null)update(()=>range=picked);
              }),
            Row(children:[TextButton(onPressed:()=>update(()=>range=null),child:const Text('Clear dates')),
              const Spacer(),FilledButton(onPressed:()=>Navigator.pop(ctx,true),
                child:Text(t('Apply','Aiwatar')))]),
          ])))));
    if(apply!=true||!mounted)return;
    if(sourceFilter==draft&&dateFilter?.start==range?.start&&dateFilter?.end==range?.end)return;
    setState((){sourceFilter=draft;dateFilter=range;items=[];cursor=null;newerPage=null;});
    if(scrollController.hasClients)scrollController.jumpTo(0);
    await refresh();
  }

  Future<void> nextPage() async {
    if (!widget.enabled || fetchingMore || cursor == null || loading) return;
    final timing=Stopwatch()..start();
    final ticket = generation, after = cursor;
    setState(() {
      fetchingMore = true;
      pageError = null;
    });
    try {
      final page = await listCurrent(after);
      verifyOwnerProjection(page);
      if (!mounted || ticket != generation) return;
      setState(() {
        final seen = items.map((p) => p.id).toSet();
        items = [...items, ...page.items.where((p) => !locallyHiddenPosts.contains(p.id)&&seen.add(p.id))];
        // Avoid an infinite Load more loop for empty pages or a server cursor
        // that did not advance. Keep already loaded authorized posts.
        cursor = page.items.isEmpty || page.nextCursor == after
            ? null : page.nextCursor;
        fetchingMore = false;
      });
      StatusFeedMetrics.observe('next-page',timing.elapsed,succeeded:true);
    } catch (e) {
      if (mounted && ticket == generation) {
        setState(() {
          if (accessLost(e)) {
            items = [];
            cursor = null;
            error = e.toString();
          }
          fetchingMore = false;
          pageError = e.toString();
        });
        StatusFeedMetrics.observe('next-page',timing.elapsed,succeeded:false);
      }
    }
  }

  Future<void> likePost(FeedPost p) async {
    final index = items.indexWhere((row) => row.id == p.id);
    if (!widget.enabled || index < 0 || pendingActions.contains(p.id)) return;
    final enabled = !p.liked, scope = generation;
    setState(() {
      pendingActions.add(p.id);
      items[index] = p.withAction(liked: enabled);
    });
    try {
      await widget.api.like(p.id, enabled);
    } catch (e) {
      if (!mounted || scope != generation) return;
      if (accessLost(e)) {
        setState(() {
          clearProjection();
          error = e.toString();
        });
        return;
      }
      final now = items.indexWhere((row) => row.id == p.id);
      if (now >= 0) setState(() => items[now] = p);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            t('Action failed. Retry.', 'Ba a yi nasara ba. Sake gwadawa.'),
          ),
        ),
      );
    } finally {
      if (mounted && scope == generation)
        setState(() => pendingActions.remove(p.id));
    }
  }

  Future<void> react(FeedPost post, String? kind) async {
    if (!widget.enabled ||
        widget.api is! ReactionFeedApi ||
        pendingActions.contains(post.id))
      return;
    final index = items.indexWhere((row) => row.id == post.id);
    if (index < 0) return;
    final timing=Stopwatch()..start();
    final version = generation;
    setState(() {
      pendingActions.add(post.id);
      items[index] = post.withReaction(kind);
    });
    try {
      await (widget.api as ReactionFeedApi).react(post.id, kind);
      StatusFeedMetrics.observe('reaction-write',timing.elapsed,succeeded:true);
      // The PUT has succeeded at this point. A later detail GET can be stale
      // or temporarily unavailable; it must never turn a committed reaction
      // into an apparent failed write (a retry could then remove it).
      if (widget.api is DioFeedApi) {
        try {
          final projected = await (widget.api as DioFeedApi).detail(post.id);
          if (!mounted || version != generation) return;
          // A cached/replica read may still describe the pre-write selection.
          // Preserve our accepted choice until an authoritative refresh catches
          // up, while keeping counters provisional and plainly labeled.
          if (projected.currentReaction == kind) {
            final now = items.indexWhere((row) => row.id == post.id);
            if (now >= 0) setState(() => items[now] = projected);
          } else {
            _reactionReadbackDelayed();
          }
        } catch (e) {
          if (!mounted || version != generation) return;
          if (accessLost(e)) {
            setState(() {
              clearProjection();
              error = e.toString();
            });
            return;
          }
          _reactionReadbackDelayed();
        }
      }
    } catch (e) {
      StatusFeedMetrics.observe('reaction-write',timing.elapsed,succeeded:false);
      if (!mounted || version != generation) return;
      if (accessLost(e)) {
        setState(() {
          clearProjection();
          error = e.toString();
        });
        return;
      }
      final now = items.indexWhere((row) => row.id == post.id);
      if (now >= 0) setState(() => items[now] = post);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            t(
              'Reaction not confirmed. Refresh or retry.',
              'Ba a tabbatar da martani ba. Sake gwadawa.',
            ),
          ),
        ),
      );
    } finally {
      if (mounted && version == generation) {
        setState(() => pendingActions.remove(post.id));
      }
    }
  }

  void _reactionReadbackDelayed() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(t(
        'Reaction saved. Counts may be out of date; pull to refresh.',
        'An ajiye martani. Watakila adadin bai sabunta ba; ja ƙasa don sabuntawa.',
      )),
    ));
  }

  Future<void> openPost(FeedPost post) async {
    if (!widget.enabled || widget.accountKey.isEmpty) return;
    final feed = widget.api, account = widget.accountKey;
    final guard = widget.wrapAccountRoute;
    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) {
          final detail = FeedPostDetailScreen(
            initialPost: post,
            accountKey: account,
            loadPost: (id) =>
                feed is DioFeedApi ? feed.detail(id) : Future.value(post),
            loadThread: (id, sort) =>
                feed is DioFeedApi ? feed.thread(id, sort) : feed.comments(id),
            loadMoreThread: feed is DioFeedApi
                ? (id, sort, before) =>
                      feed.threadPage(id, sort, before: before)
                : null,
            sendComment: (id, body, key, parent) async {
              if (feed is DioFeedApi) {
                await feed.sendThreadComment(id, body, key, parent);
              } else if (parent == null) {
                await feed.comment(id, body, key);
              } else {
                throw StateError('Reply transport unavailable');
              }
            },
            canReply: feed is DioFeedApi,
            onMasanaProfile: widget.onMasanaProfile,
            onHumanProfile: widget.onHumanProfile,
            onMedia: widget.onOpenMedia == null
                ? null
                : (id) => widget.onOpenMedia!(post, id),
            mediaApi: widget.mediaApi,
            inlineMediaRenderer: widget.inlineMediaRenderer,
            audioPlaybackAvailable: widget.audioPlaybackAvailable,
            authorDirectory: widget.authorDirectory,
            onBoostPost:null,
            engagementApi: feed,
            onSharePost: sharePost,
            shareEarnEnabled: false,
            enabled: widget.enabled,
          );
          return guard?.call(detail) ?? detail;
        },
      ),
    );
  }

  void openComments(FeedPost post) {
    if(!widget.enabled||widget.accountKey.isEmpty)return;
    final feed=widget.api,account=widget.accountKey;
    final detail=FeedPostDetailScreen(
          initialPost:post,accountKey:account,commentsOnly:true,
          loadPost:(id)=>feed is DioFeedApi?feed.detail(id):Future.value(post),
          loadThread:(id,sort)=>feed is DioFeedApi?feed.thread(id,sort):feed.comments(id),
          loadMoreThread:feed is DioFeedApi?(id,sort,before)=>feed.threadPage(id,sort,before:before):null,
          sendComment:(id,body,key,parent) async {
            if(feed is DioFeedApi){await feed.sendThreadComment(id,body,key,parent);}
            else if(parent==null){await feed.comment(id,body,key);}
            else{throw StateError('Reply unavailable');}
          },engagementApi:feed,canReply:feed is DioFeedApi,
          onHumanProfile:widget.onHumanProfile,onMasanaProfile:widget.onMasanaProfile,
        );
    showModalBottomSheet<void>(context:context,isScrollControlled:true,useSafeArea:true,
      showDragHandle:true,builder:(sheet)=>FractionallySizedBox(
        heightFactor:MediaQuery.textScalerOf(sheet).scale(14)>21?1:0.9,
        child:widget.wrapAccountRoute?.call(detail)??detail));
  }

  Future<void> sharePost(FeedPost post) async {
    if (!widget.enabled || widget.accountKey.isEmpty || sharingPosts.contains(post.id)) return;
    final account = widget.accountKey, scope = generation, shareScope=shareGeneration;
    bool current()=>mounted&&scope==generation&&shareScope==shareGeneration&&widget.accountKey==account;
    setState(()=>sharingPosts.add(post.id));
    try {
      // The original may have been hidden or removed after the feed loaded.
      final currentPost = widget.api is DioFeedApi
          ? await (widget.api as DioFeedApi).detail(post.id) : post;
      if (!current()) return;
      await SharePlus.instance.share(ShareParams(text:
        '${currentPost.displayAuthor}\n\n${currentPost.body}'
        '${currentPost.source==null?'':'\n\nOriginal: ${currentPost.source!.url}'}'));
    } catch (_) {
      if (!current()) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(t('Sharing unavailable.', 'Ba a samun hanyar rabawa.')),
      ));
    } finally {
      if(current())setState(()=>sharingPosts.remove(post.id));
    }
  }

  void hideWithUndo(FeedPost post){
    if(!mounted)return;
    final account=widget.accountKey,scope=generation;
    setState((){locallyHiddenPosts.add(post.id);items.removeWhere((p)=>p.id==post.id);});
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content:Text(t('Post hidden from your feed.','An ɓoye labarin.')),
      action:SnackBarAction(label:t('Undo','Mayar'),onPressed:() async {
        final api=widget.api;
        if(api is! FeedSafetyApi||!mounted||account!=widget.accountKey||scope!=generation)return;
        try{
          await api.hidePost(post.id,false,()=>mounted&&account==widget.accountKey&&scope==generation);
          if(!mounted||account!=widget.accountKey||scope!=generation)return;
          setState(()=>locallyHiddenPosts.remove(post.id));
          await refresh();
        }catch(_){if(mounted&&scope==generation)ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:Text(t('Could not restore this post.','An kasa mayar da labarin.'))));}
      }),
    ));
  }

  Future<void> tipPost(FeedPost post) async {
    final flow=widget.statusTips;
    if(flow==null||!widget.enabled||widget.accountKey.isEmpty||
       pendingActions.contains(post.id))return;
    final account=widget.accountKey,scope=generation;
    final amount=await showDialog<int>(
      context:context,
      builder:(dialogContext)=>SimpleDialog(
        title:Text(t('Tip this Masana','Ba Masana kyauta')),
        children:[
          Padding(padding:const EdgeInsets.symmetric(horizontal:24),
            child:Text(t('Only purchased MB can be tipped. '
              'A server review will show the exact recipient before payment.',
              'MB da aka saya kawai za a iya bayarwa.'))),
          for(final choice in const [1,10,50,100])
            SimpleDialogOption(onPressed:()=>Navigator.pop(dialogContext,choice),
              child:Text(choice.toString() + ' MB')),
          TextButton(onPressed:()=>Navigator.pop(dialogContext),
            child:Text(t('Cancel','Soke'))),
        ],
      ),
    );
    if(amount==null||!mounted||scope!=generation||
       widget.accountKey!=account)return;
    setState(()=>pendingActions.add(post.id));
    try{
      final review=await flow.review(post.id,amount);
      if(!mounted||scope!=generation||widget.accountKey!=account)return;
      final accepted=await showDialog<bool>(
        context:context,
        builder:(dialogContext)=>AlertDialog(
          title:Text(t('Review MB tip','Duba kyautar MB')),
          content:Text('Recipient: ' + review.displayName + '\n'
            + 'Amount: ' + review.amountMb.toString() + ' MB\nFee: 0 MB\n'
            + 'This debits purchased MB. Welcome MB cannot be used.'),
          actions:[
            TextButton(onPressed:()=>Navigator.pop(dialogContext,false),
              child:Text(t('Not now','Ba yanzu ba'))),
            FilledButton(onPressed:()=>Navigator.pop(dialogContext,true),
              child:Text(t('Confirm tip','Tabbatar'))),
          ],
        ),
      );
      if(accepted!=true||!mounted||scope!=generation||
         widget.accountKey!=account)return;
      final receipt=await flow.confirm(review);
      if(!mounted||scope!=generation||widget.accountKey!=account)return;
      widget.onTipCompleted?.call();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text('Tip confirmed: ' + receipt.amountMb.toString() +
          ' MB. Reference: ' + receipt.operationId),
      ));
    }catch(_){
      if(!mounted||scope!=generation||widget.accountKey!=account)return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text(t('Tip not confirmed. Check the original receipt '
          'before trying another payment.',
          'Ba a tabbatar da kyautar ba. Duba takardar asali.')),
        action:SnackBarAction(label:t('Check tip','Duba kyauta'),
          onPressed:()=>checkOriginalTip(flow,scope,account)),
      ));
    }finally{
      if(mounted&&scope==generation)
        setState(()=>pendingActions.remove(post.id));
    }
  }

  Future<void> checkOriginalTip(StatusTipFlow flow,int scope,String account) async {
    try{
      final receipt=await flow.recover();
      if(!mounted||scope!=generation||widget.accountKey!=account)return;
      if(receipt!=null)widget.onTipCompleted?.call();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text(receipt==null
          ?t('No unresolved tip found.','Ba a sami kyautar da ba a warware ba.')
          :'Confirmed: ' + receipt.amountMb.toString() +
            ' MB · ' + receipt.operationId),
      ));
    }catch(_){
      if(!mounted||scope!=generation||widget.accountKey!=account)return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text(t('Original payment remains unconfirmed. '
          'No new tip was sent. Retry the receipt check later.',
          'Ba a tabbatar da kyautar ba. Ba a aika wata ba.')),
      ));
    }
  }

  Future<void> showReactions(BuildContext anchor, FeedPost post) async {
    if (pendingActions.contains(post.id) || widget.api is! ReactionFeedApi) {
      return;
    }
    final choice = await showStatusReactionPicker(context, anchor);
    if (!mounted || choice == null) return;
    await react(post, choice == post.currentReaction ? null : choice);
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.enabled)
      return Center(
        child: Text(
          t('Status is currently unavailable', 'Ba a samun labarai a yanzu'),
        ),
      );
    return Column(
      children: [
        if(!widget.authorScoped&&!widget.ownPostsOnly&&widget.api is FilteredFeedApi)
          Row(children:[const Spacer(),TextButton.icon(
            onPressed:showFilters,icon:const Icon(Icons.tune,size:18),
            label:Text(sourceFilter==null&&dateFilter==null?'Filters':
              'Filters · ${(sourceFilter==null?0:1)+(dateFilter==null?0:1)}')),
            const SizedBox(width:12)]),
        if(newerPage!=null)MaterialBanner(
          content:Text(t('New official updates are available','Akwai sabbin labarai')),
          actions:[TextButton(onPressed:(){setState(()=>newerPage=null);refresh();
            if(scrollController.hasClients)scrollController.animateTo(0,
              duration:const Duration(milliseconds:220),curve:Curves.easeOut);},
            child:Text(t('Show updates','Nuna sabbi')))]),
        // The real Home shell already has its wordmark and expandable Search.
        // Embedded/standalone feeds may still need their own compact search.
        if (!widget.authorScoped && widget.searchExpanded == null &&
            widget.api is SearchFeedApi)
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: IconButton(
              tooltip: localSearchExpanded ? 'Close Status search' : 'Search Status',
              icon: Icon(localSearchExpanded ? Icons.close : Icons.search),
              onPressed: () {
                if (localSearchExpanded) clearSearch();
                setState(() => localSearchExpanded = !localSearchExpanded);
              },
            ),
          ),
        if (!widget.authorScoped &&
            !widget.ownPostsOnly &&
            widget.api is SearchFeedApi &&
            (widget.searchExpanded?.value ?? localSearchExpanded))
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 4, 14, 10),
            child: TextField(
              controller: searchController,
              autofocus: true,
              textInputAction: TextInputAction.search,
              onSubmitted: (_) => applySearch(),
              decoration: InputDecoration(
                isDense: true,
                hintText: t('Search Status', 'Bincika labarai'),
                prefixIcon: const Icon(Icons.search_rounded),
                suffixIcon: IconButton(
                  tooltip: t('Clear Status search', 'Goge bincike'),
                  onPressed: clearSearch,
                  icon: const Icon(Icons.close_rounded),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
          ),
        if (pageError != null && items.isNotEmpty)
          MaterialBanner(
            content: Text(
              t('Could not load more updates', 'An kasa dauko karin labarai'),
            ),
            actions: [
              TextButton(
                onPressed: nextPage,
                child: Text(t('Retry', 'Sake gwadawa')),
              ),
            ],
          ),
        if (offline)
          MaterialBanner(
            content: Text(
              t(
                'Offline — showing previous updates',
                'Ba intanet — ana nuna bayanan baya',
              ),
            ),
            actions: [
              TextButton(
                onPressed: refresh,
                child: Text(t('Retry', 'Sake gwadawa')),
              ),
            ],
          ),
        if (error != null && !offline)
          MaterialBanner(
            content: Text(t('Could not load updates', 'An kasa dauko labarai')),
            actions: [
              TextButton(
                onPressed: refresh,
                child: Text(t('Retry', 'Sake gwadawa')),
              ),
            ],
          ),
        Expanded(
          child: loading && items.isEmpty
              ? const MasanawaListSkeleton(
                  semanticLabel: 'Loading Status updates',
                )
              : items.isEmpty
              ? Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.article_outlined, size: 48),
                        Text(
                          error != null
                              ? t(
                                  'Status is unavailable. Retry.',
                                  'Ba a samun labarai yanzu. Sake gwadawa.',
                                )
                              : searchTerm.isNotEmpty
                              ? t(
                                  'No Status posts match this search.',
                                  'Babu labarai masu dacewa da binciken.',
                                )
                              : widget.ownPostsOnly
                              ? t('No public posts yet', 'Babu labarana tukuna')
                              : t(
                                  'No Status updates yet',
                                  'Babu labarai tukuna',
                                ),
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          onPressed: refresh,
                          child: Text(t('Retry', 'Sake gwadawa')),
                        ),
                      ],
                    ),
                  ),
                )
              : RefreshIndicator(
                  onRefresh: refresh,
                  child: ColoredBox(
                    color: context.masanawa.surfaceBg,
                    child: ListView.separated(
                    controller:scrollController,
                    key: PageStorageKey<String>(
                      'status-feed-${widget.accountKey}-$mode-$searchTerm-$sourceFilter-${dateFilter?.start}-${dateFilter?.end}',
                    ),
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: items.length + (cursor == null ? 0 : 1),
                    separatorBuilder: (_, _) => const SizedBox(height: 8),
                    itemBuilder: (ctx, i) {
                      if (i == items.length)
                        return Center(
                          child: TextButton(
                            onPressed: fetchingMore ? null : nextPage,
                            child:fetchingMore?const CircularProgressIndicator.adaptive():
                              Text(t('Load more', 'Kara nunawa')),
                          ),
                        );
                      final post = items[i];
                      return StatusQualifiedViewObserver(
                        postId:post.id,accountKey:widget.accountKey,
                        enabled:false,
                        api:widget.promotions,
                        onVerified:(_)=>unawaited(reconcileQualifiedView(post.id,generation)),
                        child:Card(
                        key: ValueKey(post.id),
                        color: context.masanawa.surfaceCard,
                        margin: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width >= 600 ? 16 : 0),
                        elevation: 0,
                        shadowColor: Theme.of(context).colorScheme.shadow.withValues(alpha:0.17),
                        surfaceTintColor: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(MediaQuery.sizeOf(context).width >= 600 ? 10 : 0)),
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () => openPost(post),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(14, 12, 14, 6),
                                child: Row(
                                  children: [
                                    Expanded(child: StatusPostAuthorHeader(
                                      post: post,
                                      agent: widget.authorDirectory[post.authorMasanaId],
                                      onProfile: post.isHuman
                                          ? (post.authorHandle == null ||
                                                    widget.onHumanProfile == null
                                              ? null
                                              : () => widget.onHumanProfile!(
                                                    post.authorHandle!,
                                                  ))
                                          : (widget.onMasanaProfile == null
                                              ? null
                                              : () => widget.onMasanaProfile!(
                                                    post.authorMasanaId,
                                                  )),
                                    )),
                                    StatusPostSafetyMenu(postId:post.id,accountKey:widget.accountKey,
                                      api:widget.api is FeedSafetyApi?widget.api as FeedSafetyApi:null,
                                      isCurrent:()=>mounted&&widget.enabled,
                                      onHidden:()=>hideWithUndo(post)),
                                    if (widget.statusTips != null && !post.isHuman)
                                      IconButton(
                                        tooltip: t('Tip MB', 'Kyautar MB'),
                                        style: IconButton.styleFrom(
                                          foregroundColor: context.masanawa.brandStrong,
                                          backgroundColor: context.masanawa.surfaceMuted),
                                        onPressed: pendingActions.contains(post.id)
                                            ? null : () => tipPost(post),
                                        icon: const Icon(Icons.volunteer_activism_outlined),
                                        constraints: const BoxConstraints(minWidth:48,minHeight:48),
                                      ),
                                  ],
                                ),
                              ),
                              if (post.body.isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(14, 6, 14, 12),
                                  child: StatusPostBody(
                                    key: ValueKey('status-body-${widget.accountKey}-${post.id}'),
                                    accountKey: widget.accountKey,
                                    postId: post.id,
                                    body: post.body,
                                  ),
                                ),
                              StatusPostMedia(
                                post: post,
                                accountKey: widget.accountKey,
                                mediaApi: widget.mediaApi,
                                renderer: widget.inlineMediaRenderer,
                                audioPlaybackAvailable: widget.audioPlaybackAvailable,
                                onOpen: widget.onOpenMedia == null
                                    ? null : (id) => widget.onOpenMedia!(post, id),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  StatusPostSocialProof(post: post,
                                    onComments:()=>openComments(post),
                                    onReactions:()=>showDialog<void>(context:context,builder:(ctx)=>
                                      AlertDialog(title:const Text('Reactions'),content:Column(
                                        mainAxisSize:MainAxisSize.min,children:[
                                          for(final kind in FeedPost.reactionKinds)
                                            if((post.effectiveReactionCounts[kind]??0)>0)
                                              Text('${FeedPost.reactionEmoji[kind]} ${kind[0].toUpperCase()+kind.substring(1)} · ${post.effectiveReactionCounts[kind]}'),
                                        ]),actions:[TextButton(onPressed:()=>Navigator.pop(ctx),
                                          child:const Text('Close'))])),
                                  StatusPostBoostAction(
                                    post: post,
                                    enabled: false,
                                    onBoost: null,
                                  ),
                                ]),
                              ),
                              const Divider(height: 1),
                              StatusPostActionRow(
                                post: post,
                                pending: pendingActions.contains(post.id),
                                shareEarnEnabled: false,
                                onLike: () => widget.api is ReactionFeedApi
                                  ? react(post,post.currentReaction==null?'like':null)
                                  : likePost(post),
                                onComment: () => openComments(post),
                                onShare: sharingPosts.contains(post.id) ? null : () => sharePost(post),
                                onLongLike: widget.api is ReactionFeedApi
                                    ? (anchor) => showReactions(anchor, post)
                                    : null,

                              ),
                            ],
                          ),
                        ),
                      ));
                    },
                  )),
                ),
        ),
      ],
    );
  }
}
