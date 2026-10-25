import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../agents/agent_directory.dart';
import 'feed_api.dart';
import 'feed_media_api.dart';
import 'feed_inline_media_card.dart';
import 'feed_image_mosaic.dart';
import 'status_post_author_header.dart';
import 'status_post_body.dart';
import '../../ui/components/masanawa_list_skeleton.dart';
import 'feed_post_detail_screen.dart';
import 'saved_status_library_screen.dart';

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
    this.wrapAccountRoute,
    this.searchExpanded,
  });
  final FeedApi api;
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
  List<FeedPost> items = [];
  String? cursor, error;
  bool loading = false, fetchingMore = false, offline = false;
  int generation = 0;
  final Set<String> pendingActions = {};
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
      if (mounted) refresh();
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
    }
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
    if (!widget.enabled || index < 0 || pendingActions.contains(p.id)) return;
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
    var accepted = false;
    setState(() {
      pendingActions.add(post.id);
      items[index] = post.withReaction(kind);
    });
    try {
      await (widget.api as ReactionFeedApi).react(post.id, kind);
      accepted = true;
      // Verify the authoritative counters after concurrent reaction writes.
      if (widget.api is DioFeedApi) {
        final projected = await (widget.api as DioFeedApi).detail(post.id);
        if (!mounted || version != generation) return;
        final now = items.indexWhere((row) => row.id == post.id);
        if (now >= 0) setState(() => items[now] = projected);
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
      // The write completed before the count readback failed. Do not tell the
      // user the reaction was undone: the authoritative total is merely stale.
      if (!accepted) {
        final now = items.indexWhere((row) => row.id == post.id);
        if (now >= 0) setState(() => items[now] = post);
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            accepted
              ? t('Reaction saved. Refresh to verify counts.',
                  'An adana martani. Sake sabunta don tabbatar da adadi.')
              : t('Reaction not confirmed. Refresh or retry.',
                  'Ba a tabbatar da martani ba. Sake gwadawa.'),
          ),
        ),
      );
    } finally {
      if (mounted && version == generation) {
        setState(() => pendingActions.remove(post.id));
      }
    }
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
    try {
      // A user-initiated public text excerpt. Do not export signed media URLs
      // or invent a shareable deep link for a post that may lose visibility.
      await SharePlus.instance.share(ShareParams(
        text: '${post.displayAuthor}\n\n${post.body}',
      ));
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(t('Sharing unavailable.', 'Ba a samun hanyar rabawa.')),
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
              Expanded(child: Text(
                t('Status', 'Labarai'),
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              )),
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
            ]),
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
                      return Card(
                        key: ValueKey(post.id),
                        margin: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 10,
                        ),
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
                                          : t('Save post', 'Ajiye labari'),
                                      onPressed: pendingActions.contains(post.id)
                                          ? null
                                          : () => action(post, like: false),
                                      icon: Icon(post.saved
                                          ? Icons.bookmark_rounded
                                          : Icons.bookmark_border_rounded),
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
                              if (post.kind == 'image' &&
                                  post.mediaIds.isNotEmpty &&
                                  widget.mediaApi != null &&
                                  post.mediaIds.length == 1)
                                FeedInlineMediaCard(
                                  key: ValueKey(
                                    'status-inline-${widget.accountKey}-${post.id}',
                                  ),
                                  api: widget.mediaApi!,
                                  accountKey: widget.accountKey,
                                  postId: post.id,
                                  mediaId: post.mediaIds.first,
                                  mediaCount: post.mediaIds.length,
                                  onOpen: widget.onOpenMedia == null
                                      ? null
                                      : () => widget.onOpenMedia!(
                                          post,
                                          post.mediaIds.first,
                                        ),
                                  renderer: widget.inlineMediaRenderer,
                                ),
                              if (post.kind == 'image' &&
                                  post.mediaIds.length > 1 &&
                                  widget.mediaApi != null)
                                FeedImageMosaic(
                                  key: ValueKey('status-mosaic-${widget.accountKey}-${post.id}'),
                                  api: widget.mediaApi!,
                                  accountKey: widget.accountKey,
                                  postId: post.id,
                                  mediaIds: post.mediaIds,
                                  onOpen: widget.onOpenMedia == null
                                      ? null : (id) => widget.onOpenMedia!(post, id),
                                  renderer: widget.inlineMediaRenderer,
                                ),
                              if (post.mediaIds.isNotEmpty &&
                                  (post.kind != 'image' ||
                                      widget.mediaApi == null))
                                Wrap(
                                  spacing: 8,
                                  children: post.mediaIds
                                      .map(
                                        (id) => ActionChip(
                                          avatar: Icon(
                                            post.kind == 'audio'
                                                ? Icons.play_circle_outline
                                                : Icons.image_outlined,
                                          ),
                                          label: Text(
                                            post.kind == 'audio'
                                                ? t('Play audio', 'Kunna sauti')
                                                : t('View image', 'Duba hoto'),
                                          ),
                                          onPressed:
                                              widget.onOpenMedia == null ||
                                                  (post.kind == 'audio' &&
                                                      !widget
                                                          .audioPlaybackAvailable)
                                              ? null
                                              : () => widget.onOpenMedia!(
                                                  post,
                                                  id,
                                                ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              if (post.totalReactions > 0)
                                Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Text(
                                    FeedPost.reactionKinds
                                        .where(
                                          (kind) =>
                                              (post.effectiveReactionCounts[kind] ??
                                                  0) >
                                              0,
                                        )
                                        .map(
                                          (kind) =>
                                              (FeedPost.reactionEmoji[kind] ??
                                                  '') +
                                              ' ' +
                                              post.effectiveReactionCounts[kind]
                                                  .toString(),
                                        )
                                        .join('  '),
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodySmall,
                                  ),
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
                                    if (widget.api is ReactionFeedApi)
                                      Builder(builder: (anchor) => IconButton(
                                        tooltip: t('React to post', 'Martani ga labari'),
                                        onPressed: pending ? null
                                            : () => showReactions(anchor, post),
                                        icon: const Icon(Icons.add_reaction_outlined, size: 20),
                                        constraints: const BoxConstraints(minWidth: 40, minHeight: 48),
                                        padding: EdgeInsets.zero,
                                      )),
                                    actionButton(t('Comment', 'Sharhi'),
                                        Icons.mode_comment_outlined,
                                        () => openComments(post)),
                                    actionButton(t('Share', 'Raba'),
                                        Icons.share_outlined,
                                        () => sharePost(post)),
                                  ]);
                                }),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ),
      ],
    );
  }
}
