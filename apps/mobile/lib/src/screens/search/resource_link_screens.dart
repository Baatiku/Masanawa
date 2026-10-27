import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/home_feed/feed_api.dart';
import '../../features/home_feed/feed_post_detail_screen.dart';
import '../../features/home_feed/status_promotion_api.dart';
import '../../features/home_feed/status_qualified_view_observer.dart';
import '../../core/providers.dart';
import '../../screens/profile/masana_profile_screen.dart';
import '../../screens/status/status_screen.dart';
import '../../state/agent_directory_state.dart';
import '../../state/session_state.dart';

/// Resolves the canonical Character ID against the current authorized
/// directory instead of trusting an externally supplied display name.
class MasanaResourceLinkScreen extends ConsumerStatefulWidget {
  const MasanaResourceLinkScreen({super.key, required this.characterId});
  final String characterId;
  @override
  ConsumerState<MasanaResourceLinkScreen> createState() =>
      _MasanaResourceLinkScreenState();
}

class _MasanaResourceLinkScreenState
    extends ConsumerState<MasanaResourceLinkScreen> {
  String? _attemptedOwner;

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn) {
      return const Scaffold(body: Center(child: Text('Sign in to open Masana.')));
    }
    final owner = session.user.id;
    final directory = ref.watch(agentDirectoryProvider);
    final agent = directory.find(widget.characterId);
    if (agent != null) {
      return KeyedSubtree(
        key: ValueKey('masana-resource-$owner-${widget.characterId}'),
        child: MasanaProfileScreen(agent: agent));
    }
    if (!directory.loading && _attemptedOwner != owner) {
      _attemptedOwner = owner;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _attemptedOwner == owner) {
          ref.read(agentDirectoryProvider.notifier).refresh();
        }
      });
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Masana profile')),
      body: Center(child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Icon(Icons.person_search_outlined, size: 44),
          const SizedBox(height: 12),
          Text(directory.loading
              ? 'Finding Masana profile…'
              : 'This Masana is unavailable or you cannot access it.',
              textAlign: TextAlign.center),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: directory.loading ? null
                : () => ref.read(agentDirectoryProvider.notifier).refresh(),
            icon: const Icon(Icons.refresh),
            label: const Text('Retry')),
        ]),
      )),
    );
  }
}

/// Opens one approved Status post through the same account-bound Gateway
/// read and discussion contracts already used in the Status feed.
class StatusResourceLinkScreen extends ConsumerStatefulWidget {
  const StatusResourceLinkScreen({super.key, required this.postId,this.referral});
  final String postId;
  final String? referral;
  @override
  ConsumerState<StatusResourceLinkScreen> createState() =>
      _StatusResourceLinkScreenState();
}

class _StatusResourceLinkScreenState
    extends ConsumerState<StatusResourceLinkScreen> {
  String? _owner;
  Future<FeedPost>? _post;
  Future<bool>? _qualifiedViewsEnabled;
  StatusPromotionApi? _promotions;

  Future<FeedPost> _load(DioFeedApi api) => api.detail(widget.postId);

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn) {
      _owner = null;
      _post = null;
      _qualifiedViewsEnabled=null;
      _promotions=null;
      return const Scaffold(body: Center(
        child: Text('Sign in to view this Status post.')));
    }
    final owner = session.user.id;
    final api = ref.watch(statusFeedApiProvider);
    if (api is! DioFeedApi) {
      return const Scaffold(body: Center(
        child: Text('Status is unavailable. Retry later.')));
    }
    if (_owner != owner || _post == null) {
      _owner = owner;
      _post = _load(api);
      final client=ref.read(apiClientProvider);
      _promotions=StatusPromotionApi(dio:client.dio,ownerAccount:owner,
        accessToken:()async=>client.accessToken,
        currentAccount:(){
          final active=ref.read(sessionProvider);
          return active is SessionSignedIn?active.user.id:null;
        },journal:SecureStatusPromotionJournal(owner));
      _qualifiedViewsEnabled=_promotions!.available().catchError((_)=>false);
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Status')),
      body: FutureBuilder<FeedPost>(
        future: _post,
        builder: (context, snapshot) {
          final active = ref.watch(sessionProvider);
          if (active is! SessionSignedIn || active.user.id != owner) {
            return const Center(child: Text('Session changed. Sign in again.'));
          }
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError || snapshot.data == null) {
            return Center(child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('This Status post is unavailable or access was denied.'),
                const SizedBox(height: 10),
                OutlinedButton(onPressed: () => setState(() {
                  _post = _load(api);
                }), child: const Text('Retry')),
              ],
            ));
          }
          final post = snapshot.data!;
          final detail=FeedPostDetailScreen(
            key: ValueKey('status-detail-$owner-${post.id}'),
            initialPost: post,
            accountKey: owner,
            loadPost: (id) => api.detail(id),
            loadThread: (id, sort) => api.thread(id, sort),
            sendComment: (id, body, key, parent) =>
                api.sendThreadComment(id, body, key, parent),
          );
          return FutureBuilder<bool>(future:_qualifiedViewsEnabled,
            builder:(context,capability)=>StatusQualifiedViewObserver(
              postId:post.id,accountKey:owner,
              enabled:capability.data==true,api:_promotions,
              referral:widget.referral!=null&&
                RegExp(r'^[A-Za-z0-9_-]{20,128}$').hasMatch(widget.referral!)
                  ?widget.referral:null,
              child:detail));
        },
      ),
    );
  }
}
