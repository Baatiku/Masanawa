import 'package:flutter/services.dart';


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../social/talk_social_profiles.dart';
import '../../state/talk_social_profile_state.dart';
import '../../state/session_state.dart';
import '../../theme/masanawa_theme.dart';
import '../../ui/components/masanawa_profile_skeleton.dart';
import '../../core/providers.dart';
import '../../features/home_feed/my_status_promotions_screen.dart';
import '../../features/home_feed/status_promotion_api.dart';
import '../../features/home_feed/status_promotion_sheet.dart';

import 'package:go_router/go_router.dart';


class PersonProfileScreen extends ConsumerStatefulWidget {
  const PersonProfileScreen({super.key, required this.handle});

  final String handle;

  @override
  ConsumerState<PersonProfileScreen> createState() =>
      _PersonProfileScreenState();
}

class _PersonProfileScreenState extends ConsumerState<PersonProfileScreen> {
  bool _followBusy = false;
  bool _postsOpening = false;
  int _operation = 0;

  Future<void> _openMyPosts() async {
    if (_postsOpening) return;
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) return;
    final owner = session.user.id;
    final authEpoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    String? currentAccount() {
      if (!mounted || ref.read(sessionProvider.notifier).authorizationEpoch != authEpoch)
        return null;
      final current = ref.read(sessionProvider);
      return current is SessionSignedIn ? current.user.id : null;
    }
    setState(() => _postsOpening = true);
    try {
      final client = ref.read(apiClientProvider);
      final promotions = StatusPromotionApi(
        dio: client.dio, ownerAccount: owner,
        currentAccount: currentAccount,
        accessToken: () async => ref.read(apiClientProvider).accessToken,
        journal: SecureStatusPromotionJournal(owner),
      );
      // The read-only owner ledger must remain reachable during a new-spend
      // freeze; only Boost Again requires a positive server capability.
      bool canBoost = false;
      try { canBoost = await promotions.available(); } catch (_) {}
      if (!mounted || currentAccount() != owner) return;
      final spendingEnabled = canBoost;
      await Navigator.of(context).push<void>(MaterialPageRoute(builder: (_) =>
        Consumer(builder: (context, routeRef, __) {
          final current = routeRef.watch(sessionProvider);
          if (current is! SessionSignedIn || current.user.id != owner ||
              routeRef.read(sessionProvider.notifier).authorizationEpoch != authEpoch) {
            return const Scaffold(body: Center(child: Text(
              'This account changed. Go back to reopen your own posts.')));
          }
          return MyStatusPromotionsScreen(
            api: promotions, canBoost: spendingEnabled,
            onBoostAgain: (postId) async {
              if (!spendingEnabled || currentAccount() != owner) return;
              await showModalBottomSheet<StatusPromotionCampaign>(
                context: context, isScrollControlled: true,
                builder: (sheetContext) => Consumer(builder: (sheetContext, sheetRef, _) {
                  final active = sheetRef.watch(sessionProvider);
                  if (active is! SessionSignedIn || active.user.id != owner ||
                      sheetRef.read(sessionProvider.notifier).authorizationEpoch != authEpoch) {
                    return const SafeArea(child: Padding(padding: EdgeInsets.all(24),
                      child: Text('Session changed. Close and reopen your own posts.')));
                  }
                  return StatusPromotionSheet(api: promotions, postId: postId,
                    onRecharge: () async { await sheetContext.push<void>('/wallet'); });
                }),
              );
            },
          );
        }),
      ));
    } finally {
      if (mounted) setState(() => _postsOpening = false);
    }
  }

  @override
  void didUpdateWidget(covariant PersonProfileScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.handle != widget.handle) {
      _operation++;

      _followBusy = false;
    }
  }

  Future<void> _refresh() async {
    ref.invalidate(humanProfileProvider(widget.handle));
    try {
      await ref.read(humanProfileProvider(widget.handle).future);
    } catch (_) {
      // The profile screen retains its existing retry state.
    }
  }

  Future<void> _toggleFollow(HumanProfile profile) async {
    if (_followBusy || profile.isSelf) return;
    final operation = ++_operation;
    setState(() => _followBusy = true);
    try {
      await ref
          .read(talkSocialProfileTransportProvider)
          .setFollowing(
            handle: profile.handle,
            following: !profile.isFollowing,
          );
      if (!mounted || operation != _operation) return;
      ref.invalidate(humanProfileProvider(widget.handle));
    } catch (_) {
      if (!mounted || operation != _operation) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Couldn’t update Follow right now.')),
      );
    } finally {
      if (mounted && operation == _operation)
        setState(() => _followBusy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      sessionProvider.select(
        (state) => state is SessionSignedIn ? state.user.id : null,
      ),
      (previous, next) {
        if (previous == next) return;
        _operation++;
        setState(() {
          _followBusy = false;
        });
      },
    );
    final asyncProfile = ref.watch(humanProfileProvider(widget.handle));
    return asyncProfile.when(
      loading: () => Scaffold(
        appBar: AppBar(title: const Text('Profile')),
        body: const MasanawaProfileSkeleton(
          semanticLabel: 'Loading user profile',
        ),
      ),
      error: (_, __) => _Unavailable(
        label: 'Couldn’t load this profile.',
        onRetry: () => ref.invalidate(humanProfileProvider(widget.handle)),
      ),
      data: (remote) {
        final profile = remote;
        if (profile == null) {
          return const _Unavailable(label: 'This profile is unavailable.');
        }
        return _PersonProfileBody(
          profile: profile,
          followBusy: _followBusy,
          onFollow: () => _toggleFollow(profile),
          onRefresh: _refresh,
          onMyPosts: profile.isSelf && !_postsOpening ? _openMyPosts : null,
        );
      },
    );
  }
}

class _PersonProfileBody extends StatelessWidget {
  const _PersonProfileBody({
    required this.profile,
    required this.followBusy,
    required this.onFollow,
    required this.onRefresh,
    this.onMyPosts,
  });

  final HumanProfile profile;
  final bool followBusy;
  final VoidCallback onFollow;
  final Future<void> Function() onRefresh;
  final VoidCallback? onMyPosts;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final avatar = profile.avatarUrl?.trim();
    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: AppBar(
        title: Text('@' + profile.handle),
        actions: [
          IconButton(
            tooltip: 'Copy profile link',
            icon: const Icon(Icons.link),
            onPressed: () async {
              await Clipboard.setData(
                ClipboardData(
                  text:
                      'https://masanawa.com/u/${Uri.encodeComponent(profile.handle)}',
                ),
              );
              if (context.mounted)
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Profile link copied.')),
                );
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(12, 16, 12, 28),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 38,
                  foregroundImage: avatar == null || avatar.isEmpty
                      ? null
                      : NetworkImage(avatar),
                  onForegroundImageError: avatar == null || avatar.isEmpty
                      ? null
                      : (_, __) {},
                  child: Text(
                    profile.displayName.trim().isEmpty
                        ? '?'
                        : profile.displayName
                              .trim()
                              .substring(0, 1)
                              .toUpperCase(),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              profile.displayName,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: u.textPrimary,
                                fontSize: 21,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '@' + profile.handle,
                        style: TextStyle(color: u.textMuted, fontSize: 13),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 18,
                        runSpacing: 6,
                        children: [
                          _Stat(
                            value: _compact(profile.followerCount),
                            label: 'followers',
                          ),
                          _Stat(
                            value: _compact(profile.followingCount),
                            label: 'following',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (profile.bio.trim().isNotEmpty)
              ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: const Text('About'),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: SelectableText(profile.bio),
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 14),
            if (profile.isSelf)
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  FilledButton.icon(
                    key: const ValueKey('person-profile-edit'),
                    onPressed: () => context.push('/profile'),
                    icon: const Icon(Icons.edit_outlined),
                    label: const Text('Edit profile'),
                  ),
                  OutlinedButton.icon(
                    key: const ValueKey('person-profile-my-posts'),
                    onPressed: onMyPosts,
                    icon: const Icon(Icons.article_outlined),
                    label: const Text('My Posts / Inactive'),
                  ),
                ],
              )
            else
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    OutlinedButton(
                      key: const ValueKey('person-profile-follow'),
                      onPressed: followBusy ? null : onFollow,
                      child: Text(
                        followBusy
                            ? 'Updating…'
                            : profile.isFollowing
                            ? 'Following'
                            : 'Follow',
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.value, required this.label});
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: TextStyle(color: u.textPrimary, fontWeight: FontWeight.w700),
        ),
        const SizedBox(width: 4),
        Text(label, style: TextStyle(color: u.textMuted, fontSize: 12)),
      ],
    );
  }
}

class _Unavailable extends StatelessWidget {
  const _Unavailable({required this.label, this.onRetry});
  final String label;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.person_off_outlined, size: 42),
              const SizedBox(height: 12),
              Text(label, textAlign: TextAlign.center),
              if (onRetry != null) ...[
                const SizedBox(height: 12),
                FilledButton(
                  onPressed: onRetry,
                  child: const Text('Try again'),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

String _compact(int value) {
  if (value >= 1000000) {
    final n = value / 1000000;
    return n.toStringAsFixed(n >= 10 ? 0 : 1) + 'M';
  }
  if (value >= 1000) {
    final n = value / 1000;
    return n.toStringAsFixed(n >= 10 ? 0 : 1) + 'K';
  }
  return value.toString();
}
