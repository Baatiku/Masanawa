import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../social/talk_social_profiles.dart';
import '../../state/talk_social_profile_state.dart';
import '../../state/session_state.dart';
import '../../theme/masanawa_theme.dart';
import '../../ui/components/masanawa_profile_skeleton.dart';

import 'package:go_router/go_router.dart';

import '../../state/agent_directory_state.dart';
import '../../agents/masana_portrait_avatar.dart';
import 'my_masana_screen.dart';

class PersonProfileScreen extends ConsumerStatefulWidget {
  const PersonProfileScreen({super.key, required this.handle});

  final String handle;

  @override
  ConsumerState<PersonProfileScreen> createState() =>
      _PersonProfileScreenState();
}

class _PersonProfileScreenState extends ConsumerState<PersonProfileScreen> {
  bool _followBusy = false;
  int _operation = 0;

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
      await Future.wait<void>([
        ref.read(humanProfileProvider(widget.handle).future).then((_) {}),
        if (ref.read(sessionProvider) is SessionSignedIn)
          ref.read(agentDirectoryProvider.notifier).refresh(),
      ]);
    } catch (_) {
      // The profile and directory render their own error/retry state.
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
        );
      },
    );
  }
}

class _PersonProfileBody extends ConsumerWidget {
  const _PersonProfileBody({
    required this.profile,
    required this.followBusy,
    required this.onFollow,
    required this.onRefresh,
  });

  final HumanProfile profile;
  final bool followBusy;
  final VoidCallback onFollow;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final u = context.masanawa;
    final avatar = profile.avatarUrl?.trim();
    final signedIn = ref.watch(sessionProvider) is SessionSignedIn;
    final directory = signedIn ? ref.watch(agentDirectoryProvider) : null;
    final agents =
        directory?.agents
            .where((agent) => agent.creatorHandle == profile.handle)
            .toList() ??
        [];

    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: AppBar(title: Text('@' + profile.handle)),
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
                          if (profile.isLive) ...[
                            const SizedBox(width: 7),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 7,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color: u.emergency.withValues(alpha: .12),
                                borderRadius: BorderRadius.circular(999),
                              ),
                              child: Text(
                                'LIVE',
                                style: TextStyle(
                                  color: u.emergency,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
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
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (_) => const MyMasanaScreen(),
                      ),
                    ),
                    icon: const Icon(Icons.auto_awesome_outlined),
                    label: const Text('My Masana'),
                  ),
                ],
              )
            else
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: OutlinedButton(
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
              ),
            // Message and Call actions are composed here only when their real
            // human transports land; no agent route or disabled fake action.
            if (agents.isNotEmpty) ...[
              const SizedBox(height: 20),
              Text('Masana', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              for (final agent in agents)
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: MasanaPortraitAvatar(agent: agent),
                  title: Text(agent.displayName),
                  subtitle: Text(
                    agent.roleLabel,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => context.push(
                    '/masana/${Uri.encodeComponent(agent.characterId)}',
                  ),
                ),
            ],
            if (directory?.error != null) ...[
              const SizedBox(height: 12),
              Text(
                'Could not refresh public Masana.',
                style: TextStyle(color: u.textMuted),
              ),
              TextButton(
                onPressed: () =>
                    ref.read(agentDirectoryProvider.notifier).refresh(),
                child: const Text('Try again'),
              ),
            ],
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
