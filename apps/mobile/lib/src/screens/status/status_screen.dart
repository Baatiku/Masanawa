import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';

import '../../core/providers.dart';
import '../../core/startup_metrics.dart';
import '../../features/home_feed/feed_api.dart';
import '../../features/home_feed/status_tip_flow.dart';
import '../../features/home_feed/feed_media_api.dart';
import '../../features/home_feed/feed_media_screen.dart';
import '../../features/home_feed/feed_screen.dart';
import '../../features/home_feed/feed_post_detail_screen.dart';
import '../../features/home_feed/saved_status_library_screen.dart';
import '../../features/home_feed/status_promotion_api.dart';
import '../../features/home_feed/status_promotion_sheet.dart';
import '../../core/status_audio_focus.dart';
import '../../state/session_state.dart';
import '../../state/agent_directory_state.dart';
import '../profile/masana_profile_screen.dart';
import '../profile/person_profile_screen.dart';
import '../../theme/masanawa_theme.dart';
import '../../ui/components/masanawa_main_header.dart';

/// Scope every Status operation to the signed-in fan who opened the tab.
/// The Gateway remains the authority for Masana eligibility and post visibility.
class AccountBoundFeedApi extends DioFeedApi {
  AccountBoundFeedApi({
    required superDio,
    required superToken,
    required this.ownerAccount,
    required this.currentAccount,
  }) : super(superDio, superToken);

  final String ownerAccount;
  final String? Function() currentAccount;

  Future<T> _checked<T>(Future<T> Function() work) async {
    if (ownerAccount.isEmpty || currentAccount() != ownerAccount) {
      throw StateError('account_changed');
    }
    final result = await work();
    if (currentAccount() != ownerAccount) {
      throw StateError('account_changed');
    }
    return result;
  }

  @override
  Future<SavedStatusPage> saved({String? cursor}) =>
      _checked(() => super.saved(cursor: cursor));
  @override
  Future<void> removeSaved(SavedStatusItem item) =>
      _checked(() => super.removeSaved(item));
  @override
  Future<FeedPage> list({required String mode, String? cursor}) =>
      _checked(() => super.list(mode: mode, cursor: cursor));
  @override
  Future<FeedPage> searchPosts({
    required String mode,
    required String query,
    String? cursor,
  }) => _checked(
    () => super.searchPosts(mode: mode, query: query, cursor: cursor),
  );
  @override
  Future<void> like(String id, bool enabled) =>
      _checked(() => super.like(id, enabled));
  @override
  Future<void> save(String id, bool enabled) =>
      _checked(() => super.save(id, enabled));
  @override
  Future<void> react(String id, String? kind) =>
      _checked(() => super.react(id, kind));
  @override
  Future<void> comment(String id, String body, String key) =>
      _checked(() => super.comment(id, body, key));
  @override
  Future<List<FeedComment>> comments(String id) =>
      _checked(() => super.comments(id));
  @override
  Future<FeedPost> detail(String id) => _checked(() => super.detail(id));
  @override
  Future<List<FeedComment>> thread(String id, String sort) =>
      _checked(() => super.thread(id, sort));
  @override
  Future<List<FeedComment>> threadPage(
    String id,
    String sort, {
    String? before,
  }) => _checked(() => super.threadPage(id, sort, before: before));
  @override
  Future<void> sendThreadComment(
    String id,
    String body,
    String key,
    String? parentId,
  ) => _checked(() => super.sendThreadComment(id, body, key, parentId));
}

class AccountBoundFeedMediaApi implements FeedMediaApi {
  const AccountBoundFeedMediaApi({
    required this.delegate,
    required this.ownerAccount,
    required this.currentAccount,
  });
  final FeedMediaApi delegate;
  final String ownerAccount;
  final String? Function() currentAccount;

  @override
  Future<FeedMediaGrant> getGrant(String postId, String mediaId) async {
    if (ownerAccount.isEmpty || currentAccount() != ownerAccount) {
      throw StateError('account_changed');
    }
    final grant = await delegate.getGrant(postId, mediaId);
    if (currentAccount() != ownerAccount) {
      throw StateError('account_changed');
    }
    return grant;
  }
}

/// Secondary, private Saved destination. It does not add a sixth root tab,
/// restore a header bookmark or make protected posts available offline.
/// Every visit and post transition is authorized afresh for its owner.
class StatusSavedScreen extends ConsumerWidget {
  const StatusSavedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn) {
      return const Scaffold(
        body: Center(child: Text('Sign in to see your saved updates.')),
      );
    }
    final account = session.user.id;
    final feed = ref.watch(statusFeedApiProvider);
    if (feed is! AccountBoundFeedApi) {
      return const Scaffold(
        body: Center(child: Text('Saved updates are unavailable.')),
      );
    }
    final client = ref.watch(apiClientProvider);
    final directory = ref.watch(agentDirectoryProvider);
    final authors = {
      for (final agent in directory.agents) agent.characterId: agent,
    };
    String? currentAccount() {
      try {
        final active = ref.read(sessionProvider);
        return active is SessionSignedIn ? active.user.id : null;
      } catch (_) {
        return null;
      }
    }

    final media = AccountBoundFeedMediaApi(
      delegate: DioFeedMediaApi(client.dio, () async => client.accessToken),
      ownerAccount: account,
      currentAccount: currentAccount,
    );
    final promotions = StatusPromotionApi(
      dio: client.dio,
      ownerAccount: account,
      currentAccount: currentAccount,
      accessToken: () async => client.accessToken,
      journal: SecureStatusPromotionJournal(account),
    );

    void openMedia(FeedPost post, String mediaId) {
      if (currentAccount() != account ||
          !const {'image', 'audio'}.contains(post.kind)) return;
      Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (_) => Consumer(builder: (routeContext, routeRef, __) {
          final active = routeRef.watch(sessionProvider);
          if (active is! SessionSignedIn || active.user.id != account) {
            return const Scaffold(
              body: Center(child: Text('Sign in to view this update.')),
            );
          }
          return FeedMediaScreen(
            key: ValueKey('saved-media-$account-${post.id}-$mediaId'),
            api: media,
            accountKey: account,
            postId: post.id,
            mediaIds: post.mediaIds,
            initialMediaId: mediaId,
            kind: post.kind,
            onBeforeAudio: post.kind == 'audio'
                ? () => StatusAudioFocus.prepare(
                    isAccountCurrent: () => currentAccount() == account,
                  )
                : null,
          );
        }),
      ));
    }

    void openHuman(String handle) {
      if (currentAccount() == account) {
        context.push('/u/${Uri.encodeComponent(handle)}');
      }
    }

    void openMasana(String id) {
      if (currentAccount() == account) {
        context.push('/masana/${Uri.encodeComponent(id)}');
      }
    }

    Future<void> shareOriginal(FeedPost post) async {
      if(currentAccount()!=account)return;
      try{
        // Saved is a historical bookmark, never an export entitlement.
        // Reauthorize the current original before sharing its text or link.
        final fresh=await feed.detail(post.id);
        if(!context.mounted||currentAccount()!=account)return;
        String? link;
        if(await promotions.available()){
          link=await promotions.share(fresh.id);
        }
        if(!context.mounted||currentAccount()!=account)return;
        await SharePlus.instance.share(ShareParams(text:link??
          '${fresh.displayAuthor}\n\n${fresh.body}'));
      }catch(_){
        if(context.mounted&&currentAccount()==account){
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content:Text('Sharing is unavailable. Refresh the original post.')));
        }
      }
    }

    Future<void> openPost(
      FeedPost post,
      bool boostAvailable,
      Future<void> Function(String) boostAction,
    ) async {
      if (currentAccount() != account) return;
      final latest = await feed.detail(post.id);
      if (!context.mounted || currentAccount() != account) return;
      await Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (_) => Consumer(builder: (routeContext, routeRef, __) {
          final active = routeRef.watch(sessionProvider);
          if (active is! SessionSignedIn || active.user.id != account) {
            return const Scaffold(
              body: Center(child: Text('Sign in to view this update.')),
            );
          }
          return FeedPostDetailScreen(
            initialPost: latest,
            accountKey: account,
            loadPost: feed.detail,
            loadThread: feed.thread,
            loadMoreThread: (id, sort, before) =>
                feed.threadPage(id, sort, before: before),
            sendComment: feed.sendThreadComment,
            onHumanProfile: openHuman,
            onMasanaProfile: openMasana,
            onMedia: (mediaId) => openMedia(latest, mediaId),
            mediaApi: media,
            audioPlaybackAvailable: true,
            authorDirectory: authors,
            engagementApi: feed,
            onSharePost: shareOriginal,
            shareEarnEnabled: boostAvailable,
            onBoostPost: boostAvailable
                ? (id) => unawaited(boostAction(id))
                : null,
          );
        }),
      ));
    }

    Future<void> boost(String postId) async {
      if (currentAccount() != account) return;
      // Repeat capability discovery at the moment of an attempted spend.
      if (!await promotions.available()) return;
      if (!context.mounted || currentAccount() != account) return;
      await showModalBottomSheet<StatusPromotionCampaign>(
        context: context,
        isScrollControlled: true,
        builder: (sheetContext) => StatusPromotionSheet(
          api: promotions,
          postId: postId,
          onRecharge: () async {
            await sheetContext.push<void>('/wallet/add');
          },
        ),
      );
    }

    return FutureBuilder<bool>(
      key: ValueKey('saved-promotion-$account'),
      future: promotions.available(),
      builder: (context, ability) => SavedStatusLibraryScreen(
        key: ValueKey('saved-owner-$account'),
        api: feed,
        accountKey: account,
        isAccountCurrent: () => currentAccount() == account,
        openPost: (post) => openPost(post, ability.data == true, boost),
        authorDirectory: authors,
        mediaApi: media,
        onOpenMedia: openMedia,
        engagementApi: feed,
        onSharePost: shareOriginal,
        shareEarnEnabled: ability.data == true,
        onHumanProfile: openHuman,
        onMasanaProfile: openMasana,
        onBoostPost: ability.data == true
            ? (id) => unawaited(boost(id))
            : null,
      ),
    );
  }
}

/// Tests can replace this provider with a synthetic feed. Production always
/// uses the existing authenticated ApiClient/Dio, never a second login.
final statusFeedApiProvider = Provider<FeedApi>((ref) {
  final session = ref.watch(sessionProvider);
  final client = ref.watch(apiClientProvider);
  final account = session is SessionSignedIn ? session.user.id : '';
  String? currentAccount() {
    try {
      final active = ref.read(sessionProvider);
      return active is SessionSignedIn ? active.user.id : null;
    } catch (_) {
      return null;
    }
  }

  return AccountBoundFeedApi(
    superDio: client.dio,
    superToken: () async => client.accessToken,
    ownerAccount: account,
    currentAccount: currentAccount,
  );
});

/// Home keeps the existing Status feed; promotion UI only appears if the
/// server advertises a financially qualified rollout capability.
class StatusScreen extends ConsumerStatefulWidget {
  const StatusScreen({super.key});

  @override
  ConsumerState<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends ConsumerState<StatusScreen> {
  final ValueNotifier<bool> _searchExpanded = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    MasanawaStartupMetrics.afterFrame('home_first_frame');
  }

  @override
  void dispose() {
    _searchExpanded.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn) {
      return Center(
        child: Text(
          'Sign in to view Home updates.',
          style: TextStyle(color: context.masanawa.textPrimary),
        ),
      );
    }
    final account = session.user.id;
    final feed = ref.watch(statusFeedApiProvider);
    final directory = ref.watch(agentDirectoryProvider);
    final authorDirectory = {
      for (final agent in directory.agents) agent.characterId: agent,
    };
    final api = ref.watch(apiClientProvider);
    String? currentAccount() {
      try {
        final active = ref.read(sessionProvider);
        return active is SessionSignedIn ? active.user.id : null;
      } catch (_) {
        return null;
      }
    }

    Future<void> openMasanaProfile(String characterId) async {
      if (currentAccount() != account) return;
      var agent = ref.read(agentDirectoryProvider).find(characterId);
      if (agent == null) {
        await ref.read(agentDirectoryProvider.notifier).refresh();
        if (!context.mounted || currentAccount() != account) return;
        agent = ref.read(agentDirectoryProvider).find(characterId);
      }
      final profileAgent = agent;
      if (profileAgent == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('This Masana profile is currently unavailable.'),
          ),
        );
        return;
      }
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (_) => Consumer(
            builder: (context, ref, _) {
              final active = ref.watch(sessionProvider);
              if (active is! SessionSignedIn || active.user.id != account) {
                return const Scaffold(
                  body: Center(child: Text('Sign in to view this profile.')),
                );
              }
              return MasanaProfileScreen(agent: profileAgent);
            },
          ),
        ),
      );
    }

    void openHumanProfile(String handle) {
      if (currentAccount() != account) return;
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (_) => Consumer(
            builder: (context, ref, _) {
              final active = ref.watch(sessionProvider);
              if (active is! SessionSignedIn || active.user.id != account) {
                return const Scaffold(
                  body: Center(child: Text('Sign in to view this profile.')),
                );
              }
              return PersonProfileScreen(handle: handle);
            },
          ),
        ),
      );
    }

    final statusTips=StatusTipFlow(
      dio:api.dio,accountId:account,
      accessToken:api.accessToken??'',
      currentAccountId:currentAccount,
      store:SecureStatusTipStore(account),
    );
    final promotions=StatusPromotionApi(dio:api.dio,ownerAccount:account,
      currentAccount:currentAccount,
      accessToken:()async=>api.accessToken,
      journal:SecureStatusPromotionJournal(account));

    // Only the current signed-in account may obtain an original-media grant.
    final inlineMedia = AccountBoundFeedMediaApi(
      delegate: DioFeedMediaApi(api.dio, () async => api.accessToken),
      ownerAccount: account,
      currentAccount: currentAccount,
    );

    void openMedia(FeedPost post, String mediaId) {
      if (!const {'image', 'audio'}.contains(post.kind) ||
          currentAccount() != account)
        return;
      final media = AccountBoundFeedMediaApi(
        delegate: DioFeedMediaApi(api.dio, () async => api.accessToken),
        ownerAccount: account,
        currentAccount: currentAccount,
      );
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (_) => Consumer(
            builder: (context, ref, _) {
              final active = ref.watch(sessionProvider);
              if (active is! SessionSignedIn || active.user.id != account) {
                return const Scaffold(
                  body: Center(child: Text('Sign in to view this update.')),
                );
              }
              return FeedMediaScreen(
                key: ValueKey(
                  'status-${post.kind}-$account-${post.id}-$mediaId',
                ),
                api: media,
                accountKey: account,
                postId: post.id,
                mediaIds: post.mediaIds,
                initialMediaId: mediaId,
                kind: post.kind,
                onBeforeAudio: post.kind == 'audio'
                    ? () => StatusAudioFocus.prepare(
                        isAccountCurrent: () => currentAccount() == account,
                      )
                    : null,
              );
            },
          ),
        ),
      );
    }

    // A pushed route does not rebuild when the Status root rebuilds.
    // Watch the authenticated session inside the route itself instead.
    Widget accountRouteGuard(Widget content) => Consumer(
      builder: (routeContext, routeRef, _) {
        final active = routeRef.watch(sessionProvider);
        if (active is! SessionSignedIn || active.user.id != account) {
          return const Scaffold(
            body: Center(child: Text('Sign in to view this Home update.')),
          );
        }
        return content;
      },
    );

    return Scaffold(
      backgroundColor: context.masanawa.surfaceBg,
      appBar: masanawaMainHeader(context, actions: [
        ValueListenableBuilder<bool>(
          valueListenable: _searchExpanded,
          builder: (context, expanded, _) => IconButton(
            tooltip: expanded ? 'Close Home search' : 'Search Home',
            icon: Icon(expanded ? Icons.close_rounded : Icons.search_rounded),
            onPressed: () => _searchExpanded.value = !expanded,
          ),
        ),
      ]),
      body: KeyedSubtree(
      key: ValueKey('status-account-$account'),
      child: MasanaFeedScreen(
        api: feed,
        ownerName: session.user.name,
        promotions:promotions,
        statusTips:statusTips,
        accountKey: account,
        authorDirectory: authorDirectory,
        searchExpanded: _searchExpanded,
        mediaApi: inlineMedia,
        onOpenMedia: openMedia,
        onMasanaProfile: (id) => unawaited(openMasanaProfile(id)),
        onHumanProfile: openHumanProfile,
        wrapAccountRoute: accountRouteGuard,
        audioPlaybackAvailable: true,
      ),
    ),
    );
  }
}

