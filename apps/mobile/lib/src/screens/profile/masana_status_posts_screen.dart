import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../agents/agent_directory.dart';
import '../../core/providers.dart';
import '../../core/status_audio_focus.dart';
import '../../features/home_feed/feed_api.dart';
import '../../features/home_feed/feed_media_api.dart';
import '../../features/home_feed/feed_media_screen.dart';
import '../../features/home_feed/feed_screen.dart';
import '../../state/session_state.dart';
import '../status/status_screen.dart';

/// Dedicated author feed, reusing the account-bound Status API for reactions,
/// posts, comments and reply transactions. The backend enforces publication
/// and canonical author eligibility before any post reaches this screen.
class MasanaAuthorFeedApi extends AccountBoundFeedApi {
  MasanaAuthorFeedApi({
    required Dio dio,
    required String characterId,
    required String ownerAccount,
    required String? Function() currentAccount,
    required Future<String?> Function() token,
  }) : _dio = dio, _characterId = characterId,
       super(superDio: dio, superToken: token,
         ownerAccount: ownerAccount, currentAccount: currentAccount);

  final Dio _dio;
  final String _characterId;

  @override
  Future<FeedPage> list({required String mode, String? cursor}) async {
    if (ownerAccount.isEmpty || currentAccount() != ownerAccount) {
      throw StateError('account_changed');
    }
    final result = await _dio.get<Map<String, dynamic>>(
      '/v1/feed',
      queryParameters: {
        'mode': 'for_you',
        'authorMasanaId': _characterId,
        if (cursor != null) 'cursor': cursor,
      },
    );
    if (currentAccount() != ownerAccount) throw StateError('account_changed');
    final page = FeedPage.fromJson(result.data ?? const {});
    if (page.items.any((post) => post.authorMasanaId != _characterId)) {
      throw const FormatException('Invalid Masana Status author');
    }
    return page;
  }
}

class MasanaStatusPostsScreen extends ConsumerWidget {
  const MasanaStatusPostsScreen({super.key, required this.agent, this.embedded = false});
  final AgentDirectoryEntry agent;
  final bool embedded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn) {
      return const Scaffold(
        body: Center(child: Text('Sign in to view professional updates.')),
      );
    }
    final account = session.user.id;
    final api = ref.watch(apiClientProvider);
    String? currentAccount() {
      final active = ref.read(sessionProvider);
      return active is SessionSignedIn ? active.user.id : null;
    }
    final feed = MasanaAuthorFeedApi(
      dio: api.dio,
      characterId: agent.characterId,
      ownerAccount: account,
      currentAccount: currentAccount,
      token: () async => api.accessToken,
    );
    final inlineMedia = AccountBoundFeedMediaApi(
      delegate: DioFeedMediaApi(api.dio, () async => api.accessToken),
      ownerAccount: account,
      currentAccount: currentAccount,
    );

    void openMedia(FeedPost post, String mediaId) {
      if (post.authorMasanaId != agent.characterId ||
          !const {'audio', 'image'}.contains(post.kind) ||
          currentAccount() != account) return;
      final media = AccountBoundFeedMediaApi(
        delegate: DioFeedMediaApi(api.dio, () async => api.accessToken),
        ownerAccount: account,
        currentAccount: currentAccount,
      );
      Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (_) => Consumer(builder: (context, ref, _) {
          final active = ref.watch(sessionProvider);
          if (active is! SessionSignedIn || active.user.id != account) {
            return const Scaffold(
              body: Center(child: Text('Sign in to view this update.')),
            );
          }
          return FeedMediaScreen(
            key: ValueKey('masana-status-${agent.characterId}-$account-${post.id}-$mediaId'),
            api: media,
            accountKey: account,
            postId: post.id,
            mediaIds: post.mediaIds,
            initialMediaId: mediaId,
            kind: post.kind,
            onBeforeAudio: post.kind == 'audio'
                ? () => StatusAudioFocus.prepare(
                    isAccountCurrent: () => currentAccount() == account)
                : null,
          );
        }),
      ));
    }

    final posts = KeyedSubtree(
        key: ValueKey('masana-status-$account-${agent.characterId}'),
        child: MasanaFeedScreen(
          api: feed,
          accountKey: account,
          authorDirectory: {agent.characterId: agent},
          mediaApi: inlineMedia,
          authorScoped: true,
          audioPlaybackAvailable: true,
          onOpenMedia: openMedia,
          onMasanaProfile: (_) { if (!embedded) Navigator.of(context).pop(); },
        ),
      );
    if (embedded) return posts;
    return Scaffold(
      appBar: AppBar(title: Text('${agent.displayName} · Status')),
      body: posts,
    );
  }
}
