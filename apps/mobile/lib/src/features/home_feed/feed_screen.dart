import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:go_router/go_router.dart';

import '../../agents/agent_directory.dart';
import 'feed_api.dart';
import 'status_tip_flow.dart';
import 'feed_media_api.dart';
import 'status_post_media.dart';
import 'status_post_author_header.dart';
import 'status_post_body.dart';
import '../../ui/components/masanawa_list_skeleton.dart';
import 'feed_post_detail_screen.dart';
import 'saved_status_library_screen.dart';
import 'status_promotion_api.dart';
import 'status_promotion_sheet.dart';
import 'my_status_promotions_screen.dart';
import 'status_qualified_view_observer.dart';

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
  });
  final FeedApi api;
  /// Financial controls appear only after server capability discovery.
  final StatusPromotionApi? promotions;
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
  final searchController = TextEditingController();
  String searchTerm = '';
  String mode = 'for_you';
  bool localSearchExpanded = false;
  bool titleCollapsed = false;
  List<FeedPost> items = [];
  String? cursor, error;
  bool loading = false, fetchingMore = false, offline = false;
  bool promotionsAvailable = false;
  int generation = 0;
  final Set<String> pendingActions = {};
  // A timed-out Save may have reached the server. Do not turn a second tap
  // into an accidental inverse write before a fresh account-bound read.
  final Set<String> uncertainSaves = {};
  String? pageError;
  void _onExternalSearchChanged() {
    if (!mounted) return;
    if (widget.searchExpanded?.value == false) clearSearch();
    setState(() {});
  }

  void clearProjection() {
    generation++;
    items = [];
    titleCollapsed = false;
    cursor = null;
    error = null;
    pageError = null;
    offline = false;
    loading = false;
    fetchingMore = false;
    pendingActions.clear();
    uncertainSaves.clear();
    promotionsAvailable = false;
  }

  @override
  void dispose() {
    generation++;
    widget.searchExpanded?.removeListener(_onExternalSearchChanged);
    searchController.dispose();
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
      titleCollapsed = false;
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
      titleCollapsed = false;
      items = [];
      cursor = null;
      pageError = null;
    });
    refresh();
  }

  Future<FeedPage> listCurrent([String? after]) {
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {refresh();checkPromotions();}
    });
  }

  @override
  void didUpdateWidget(covariant MasanaFeedScreen old) {
    super.didUpdateWidget(old);
    if (old.searchExpanded != widget.searchExpanded) {
      old.searchExpanded?.removeListener(_onExternalSearchChanged);
      widget.searchExpanded?.addListener(_onExternalSearchChanged);
    }
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

  Future<void> openPromotion({String? postId}) async {
    final api=widget.promotions;
    if(api==null||!promotionsAvailable||widget.accountKey.isEmpty)return;
    final scope=generation,account=widget.accountKey;
    final result=await showModalBottomSheet<StatusPromotionCampaign>(
      context:context,isScrollControlled:true,showDragHandle:false,
      builder:(ctx)=>StatusPromotionSheet(api:api,postId:postId,
        onRecharge:()async{await ctx.push<void>('/wallet');}),
    );
    if(!mounted||scope!=generation||widget.accountKey!=account||result==null)return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(
      result.state=='pending_review'
        ?t('Submitted for review. Budget reserved.','An tura don dubawa. An ajiye MB.')
        :t('Boost confirmed. Budget reserved.','An tabbatar da kara yadawa. An ajiye MB.'))));
    await refresh();
  }

  Future<void> openMyPromotions() async {
    final api=widget.promotions;
    if(api==null||widget.accountKey.isEmpty)return;
    final account=widget.accountKey,scope=generation;
    final page=MyStatusPromotionsScreen(api:api,canBoost:promotionsAvailable,
      onBoostAgain:(postId)=>openPromotion(postId:postId));
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
    final ticket = ++generation;
    setState(() {
      loading = true;
      fetchingMore = false;
      error = null;
      pageError = null;
      pendingActions.clear();
    });
    try {
      final page = await listCurrent();
      verifyOwnerProjection(page);
      if (!mounted || ticket != generation) return;
      setState(() {
        items = page.items;
        cursor = page.items.isEmpty ? null : page.nextCursor;
        offline = false;
        loading = false;
        uncertainSaves.clear();
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
    }
  }

  Future<void> nextPage() async {
    if (!widget.enabled || fetchingMore || cursor == null || loading) return;
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
        items = [...items, ...page.items.where((p) => seen.add(p.id))];
        // Avoid an infinite Load more loop for empty pages or a server cursor
        // that did not advance. Keep already loaded authorized posts.
        cursor = page.items.isEmpty || page.nextCursor == after
            ? null : page.nextCursor;
        fetchingMore = false;
      });
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
      }
    }
  }

  Future<void> action(FeedPost p, {required bool like}) async {
    final index = items.indexWhere((row) => row.id == p.id);
    if (!widget.enabled || index < 0 || pendingActions.contains(p.id) ||
        (!like && uncertainSaves.contains(p.id))) return;
    final enabled = like ? !p.liked : !p.saved, scope = generation;
    setState(() {
      pendingActions.add(p.id);
      items[index] = like
          ? p.withAction(liked: enabled)
          : p.withAction(saved: enabled);
    });
    try {
      if (like) {
        await widget.api.like(p.id, enabled);
      } else {
        await widget.api.save(p.id, enabled);
      }
    } catch (e) {
      if (!mounted || scope != generation) return;
      if (accessLost(e)) {
        setState(() {
          clearProjection();
          error = e.toString();
        });
        return;
      }
      if (!like && e is DioException &&
          (e.type == DioExceptionType.connectionError ||
           e.type == DioExceptionType.connectionTimeout ||
           e.type == DioExceptionType.receiveTimeout ||
           const [502, 503, 504].contains(e.response?.statusCode))) {
        final now = items.indexWhere((row) => row.id == p.id);
        setState(() {
          uncertainSaves.add(p.id);
          if (now >= 0) items[now] = p;
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(t(
            'Save status unknown. Refresh before changing it again.',
            'Ba a san matsayin ajiya ba. Sabunta kafin a sake canjawa.',
          )),
          action: SnackBarAction(label: t('Refresh', 'Sabunta'), onPressed: refresh),
        ));
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
    final version = generation;
    setState(() {
      pendingActions.add(post.id);
      items[index] = post.withReaction(kind);
    });
    try {
      await (widget.api as ReactionFeedApi).react(post.id, kind);
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
            enabled: widget.enabled,
          );
          return guard?.call(detail) ?? detail;
        },
      ),
    );
  }

  void openSaved() {
    if (widget.api is! SavedStatusLibraryApi || widget.accountKey.isEmpty)
      return;
    final account = widget.accountKey;
    final guard = widget.wrapAccountRoute;
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) {
          final saved = SavedStatusLibraryScreen(
            api: widget.api as SavedStatusLibraryApi,
            accountKey: account,
            authorDirectory: widget.authorDirectory,
            mediaApi: widget.mediaApi,
            inlineMediaRenderer: widget.inlineMediaRenderer,
            isAccountCurrent: () =>
                mounted && widget.enabled && widget.accountKey == account,
            openPost: (post) async {
              // A saved post may have lost visibility since the list read.
              // Re-authorize the original before opening the content page.
              final api = widget.api;
              final currentPost = api is DioFeedApi
                  ? await api.detail(post.id)
                  : post;
              if (!mounted || widget.accountKey != account) return;
              await openPost(currentPost);
            },
          );
          return guard?.call(saved) ?? saved;
        },
      ),
    );
  }

  void openComments(FeedPost post) {
    // Use the complete thread page so typing, scrolling and keyboard focus
    // are not lost in a height-constrained modal.
    openPost(post);
  }

  Future<void> sharePost(FeedPost post) async {
    if (!widget.enabled || widget.accountKey.isEmpty) return;
    final account = widget.accountKey, scope = generation;
    try {
      // The original may have been hidden or removed after the feed loaded.
      // Authorize it again before exporting any text from this account.
      final current = widget.api is DioFeedApi
          ? await (widget.api as DioFeedApi).detail(post.id) : post;
      if (!mounted || scope != generation || widget.accountKey != account) return;
      // A user-initiated public text excerpt. Do not export signed media URLs
      // or invent a shareable deep link for a post that may lose visibility.
      final linked=promotionsAvailable&&widget.promotions!=null
        ?await widget.promotions!.share(current.id):null;
      if(!mounted||scope!=generation||widget.accountKey!=account)return;
      await SharePlus.instance.share(ShareParams(text:linked??
        '${current.displayAuthor}\n\n${current.body}'));
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(t('Sharing unavailable.', 'Ba a samun hanyar rabawa.')),
      ));
    }
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
    final overlay = Overlay.of(context).context.findRenderObject() as RenderBox?;
    final target = anchor.findRenderObject() as RenderBox?;
    if (overlay == null || target == null) return;
    final origin = target.localToGlobal(Offset.zero, ancestor: overlay);
    final rect = Rect.fromLTWH(origin.dx, origin.dy, target.size.width,
        target.size.height);
    final choice = await showMenu<String>(
      context: context,
      position: RelativeRect.fromRect(rect, Offset.zero & overlay.size),
      items: [
        PopupMenuItem<String>(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Builder(builder: (menuContext) => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final kind in const ['like', 'love', 'care'])
                TextButton(
                  onPressed: () => Navigator.pop(menuContext, kind),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(FeedPost.reactionEmoji[kind]!,
                          style: const TextStyle(fontSize: 23)),
                      Text(kind[0].toUpperCase() + kind.substring(1)),
                    ],
                  ),
                ),
            ],
          )),
        ),
      ],
    );
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
        if (!widget.authorScoped)
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 4, 10, 4),
            child: Row(children: [
              if (!titleCollapsed)
                Expanded(child: Text(
                  t('Home', 'Gida'),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ))
              else
                const Spacer(),
              if (widget.api is SearchFeedApi && widget.searchExpanded == null)
                IconButton(
                  tooltip: localSearchExpanded ? 'Close Status search' : 'Search Status',
                  icon: Icon(localSearchExpanded ? Icons.close : Icons.search),
                  onPressed: () {
                    if (localSearchExpanded) clearSearch();
                    setState(() => localSearchExpanded = !localSearchExpanded);
                  },
                ),
              if (widget.api is SavedStatusLibraryApi)
                IconButton(
                  tooltip: t('Saved Status', 'Labarai da aka ajiye'),
                  onPressed: widget.accountKey.isNotEmpty ? openSaved : null,
                  icon: const Icon(Icons.bookmark_border_rounded),
                ),
              if(widget.promotions!=null&&widget.accountKey.isNotEmpty)
                IconButton(tooltip:t('My promotions','Tallace-tallacena'),
                  onPressed:openMyPromotions,icon:const Icon(Icons.campaign_outlined)),
            ]),
          ),
        if (!widget.authorScoped&&!widget.ownPostsOnly&&promotionsAvailable)
          Padding(padding:const EdgeInsets.fromLTRB(12,4,12,8),
            child:Material(color:Theme.of(context).colorScheme.surface,
              borderRadius:BorderRadius.circular(14),
              child:Padding(padding:const EdgeInsets.all(10),child:Row(children:[
                CircleAvatar(radius:19,child:const Icon(Icons.person_outline,size:21)),
                const SizedBox(width:10),
                Expanded(child:OutlinedButton(
                  onPressed:()=>openPromotion(),
                  style:OutlinedButton.styleFrom(alignment:Alignment.centerLeft,
                    minimumSize:const Size(0,44)),
                  child:Text(t('What would you like to promote?',
                    'Me kake son yadawa?'),maxLines:1,
                    overflow:TextOverflow.ellipsis))),
                IconButton(tooltip:t('Promote post','Yada sako'),
                  onPressed:()=>openPromotion(),
                  icon:const Icon(Icons.add_photo_alternate_outlined)),
              ]))),
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
                  child: NotificationListener<ScrollUpdateNotification>(
                    onNotification: (notice) {
                      if (notice.depth != 0) return false;
                      final collapsed = notice.metrics.pixels > 12;
                      if (collapsed != titleCollapsed) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          if (mounted && titleCollapsed != collapsed) {
                            setState(() => titleCollapsed = collapsed);
                          }
                        });
                      }
                      return false;
                    },
                  child: ListView.builder(
                    key: PageStorageKey<String>(
                      'status-feed-${widget.accountKey}-$mode-$searchTerm',
                    ),
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: items.length + (cursor == null ? 0 : 1),
                    itemBuilder: (ctx, i) {
                      if (i == items.length)
                        return Center(
                          child: TextButton(
                            onPressed: fetchingMore ? null : nextPage,
                            child: Text(t('Load more', 'Kara nunawa')),
                          ),
                        );
                      final post = items[i];
                      return StatusQualifiedViewObserver(
                        postId:post.id,accountKey:widget.accountKey,
                        enabled:promotionsAvailable&&widget.promotions!=null,
                        api:widget.promotions,
                        onVerified:(_)=>unawaited(reconcileQualifiedView(post.id,generation)),
                        child:Card(
                        key: ValueKey(post.id),
                        margin: const EdgeInsets.fromLTRB(10,4,10,6),
                        elevation: 0.7,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(13),
                          side:BorderSide(color:Theme.of(context).colorScheme.outlineVariant.withValues(alpha:0.5))),
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
                                    IconButton(
                                      tooltip: post.saved
                                          ? t('Remove saved post', 'Cire ajiya')
                                          : uncertainSaves.contains(post.id)
                                              ? t('Refresh to confirm saved state', 'Sabunta don tabbatar da ajiya')
                                              : t('Save post', 'Ajiye labari'),
                                      onPressed: pendingActions.contains(post.id) ||
                                              uncertainSaves.contains(post.id)
                                          ? null
                                          : () => action(post, like: false),
                                      icon: Icon(post.saved
                                          ? Icons.bookmark_rounded
                                          : Icons.bookmark_border_rounded),
                                    ),
                                    PopupMenuButton<String>(
                                      tooltip:t('Post options','Zaɓin labari'),
                                      icon:const Icon(Icons.more_horiz_rounded),
                                      onSelected:(choice){
                                        if(choice=='tip')tipPost(post);
                                        if(choice=='boost')openPromotion(postId:post.id);
                                      },
                                      itemBuilder:(_)=>[
                                        if(widget.statusTips!=null&&!post.isHuman)
                                          PopupMenuItem(value:'tip',
                                            child:Text(t('Tip MB','Kyautar MB'))),
                                        if(promotionsAvailable&&post.boostEligible)
                                          PopupMenuItem(value:'boost',
                                            child:Text(t('Boost post','Kara yada labari'))),
                                      ],
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
                              if (post.totalReactions > 0 || post.commentCount > 0 ||
                                post.verifiedViewCount != null ||
                                (promotionsAvailable&&post.boostEligible))
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                                  child: Row(children: [
                                    if (post.totalReactions > 0)
                                      Expanded(child: Text(
                                    '${FeedPost.reactionKinds
                                        .where(
                                          (kind) =>
                                              (post.effectiveReactionCounts[kind] ??
                                                  0) >
                                              0,
                                        )
                                        .map(
                                          (kind) =>
                                              FeedPost.reactionEmoji[kind] ?? '',
                                        )
                                        .join(' ')} ${post.totalReactions}',
                                    style: Theme.of(context).textTheme.bodySmall,
                                  )),
                                    if (post.commentCount > 0)
                                      Text('${post.commentCount} comments',
                                        style: Theme.of(context).textTheme.bodySmall),
                                    if(post.verifiedViewCount!=null)...[
                                      if(post.commentCount>0||post.totalReactions>0)
                                        const SizedBox(width:8),
                                      const Icon(Icons.visibility_outlined,size:14),
                                      const SizedBox(width:3),
                                      Text('${post.verifiedViewCount} ${t('verified','tabbatattu')}',
                                        style:Theme.of(context).textTheme.bodySmall),
                                    ],
                                    if(promotionsAvailable&&post.boostEligible)...[
                                      const Spacer(),
                                      TextButton.icon(
                                        onPressed:()=>openPromotion(postId:post.id),
                                        icon:const Icon(Icons.rocket_launch_outlined,size:16),
                                        label:Text(t('Boost','Kara yada'),maxLines:1),
                                      ),
                                    ],
                                  ]),
                                ),
                              const Divider(height: 1),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: LayoutBuilder(builder: (context, constraints) {
                                  final compact = constraints.maxWidth < 290 ||
                                      MediaQuery.textScalerOf(context).scale(14) > 20;
                                  final pending = pendingActions.contains(post.id);
                                  Widget actionButton(String label, IconData icon,
                                      VoidCallback? onPressed) => Expanded(
                                    child: TextButton.icon(
                                      style: TextButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(horizontal: 2),
                                        minimumSize: const Size(0, 48),
                                      ),
                                      onPressed: onPressed,
                                      icon: Icon(icon, size: 20),
                                      label: compact
                                          ? const SizedBox.shrink()
                                          : Text(label, maxLines: 1,
                                              overflow: TextOverflow.ellipsis),
                                    ),
                                  );
                                  return Row(children: [
                                    Builder(builder: (anchor) => Expanded(
                                      child: GestureDetector(
                                        onLongPress: widget.api is ReactionFeedApi && !pending
                                            ? () => showReactions(anchor, post)
                                            : null,
                                        child: TextButton.icon(
                                          style: TextButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(horizontal: 2),
                                            minimumSize: const Size(0, 48),
                                          ),
                                          onPressed: pending ? null
                                              : () => action(post, like: true),
                                          icon: Icon(post.currentReaction == 'like'
                                              ? Icons.thumb_up_rounded
                                              : Icons.thumb_up_outlined, size: 20),
                                          label: compact ? const SizedBox.shrink()
                                              : Text(t('Like', 'So'), maxLines: 1,
                                                  overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                    )),
                                    actionButton(t('Comment', 'Sharhi'),
                                        Icons.mode_comment_outlined,
                                        () => openComments(post)),
                                    actionButton(post.shareEarnEligible&&promotionsAvailable
                                          ?t('Share & Earn','Raba ka samu MB')
                                          :t('Share', 'Raba'),
                                        Icons.share_outlined,
                                        () => sharePost(post)),
                                  ]);
                                }),
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
