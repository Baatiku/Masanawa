import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../agents/agent_directory.dart';
import '../../agents/masana_portrait_avatar.dart';
import '../../core/providers.dart';
import '../../state/agent_directory_state.dart';
import '../../state/ai_chat_state.dart';
import '../../state/session_state.dart';
import '../../theme/masanawa_theme.dart';
import 'masana_status_posts_screen.dart';
import 'masana_quality_feedback_screen.dart';

/// All actions use the canonical server Character ID; the visual portrait
/// and Room link are approved projections, never display-name-derived routes.
class MasanaProfileScreen extends ConsumerStatefulWidget {
  const MasanaProfileScreen({super.key, required this.agent});
  final AgentDirectoryEntry agent;
  @override
  ConsumerState<MasanaProfileScreen> createState() => _MasanaProfileScreenState();
}

class _MasanaProfileScreenState extends ConsumerState<MasanaProfileScreen> {
  late bool _following;
  bool _followPending = false;
  String? _owner;
  bool get _sameAccount {
    final session = ref.read(sessionProvider);
    return mounted && session is SessionSignedIn && session.user.id == _owner;
  }

  @override
  void initState() {
    super.initState();
    _following = widget.agent.following;
    final session = ref.read(sessionProvider);
    _owner = session is SessionSignedIn ? session.user.id : null;
  }

  Future<void> _toggleFollow() async {
    if (_followPending || !_sameAccount) return;
    setState(() => _followPending = true);
    try {
      final api = ref.read(apiClientProvider);
      final path = '/v1/masana/${Uri.encodeComponent(widget.agent.characterId)}/follow';
      final response = _following
          ? await api.dio.delete<Map<String, dynamic>>(path)
          : await api.dio.post<Map<String, dynamic>>(path);
      if (!_sameAccount) return;
      final value = response.data?['following'];
      if (value is! bool) throw const FormatException('Invalid follow response');
      setState(() => _following = value);
      ref.read(agentDirectoryProvider.notifier).refresh();
    } catch (_) {
      if (_sameAccount) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not update Following. Please retry.')),
        );
      }
    } finally {
      if (_sameAccount) setState(() => _followPending = false);
    }
  }

  Future<void> _openOfficialChannel(AgentSocialChannel channel) async {
    try {
      final opened = await launchUrl(
        Uri.parse(channel.url), mode: LaunchMode.externalApplication);
      if (!opened) throw StateError('No app for this link');
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Could not open that official channel.'),
        ));
      }
    }
  }

  String _channelName(String platform) => switch (platform) {
    'whatsapp' => 'WhatsApp',
    'telegram' => 'Telegram',
    'youtube' => 'YouTube',
    'tiktok' => 'TikTok',
    'facebook' => 'Facebook',
    'instagram' => 'Instagram',
    'x' => 'X',
    _ => platform,
  };

  void _openChat({String? starter}) {
    final id = widget.agent.characterId;
    ref.read(aiChatProvider.notifier).seedGreeting(id, widget.agent.greeting);
    if (starter != null) ref.read(aiChatProvider.notifier).setDraft(id, starter);
    context.push('/chat/${Uri.encodeComponent(id)}');
  }

  @override
  Widget build(BuildContext context) {
    final agent = ref.watch(agentDirectoryProvider.select(
      (directory) => directory.find(widget.agent.characterId),
    )) ?? widget.agent;
    final colors = context.masanawa;
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn || session.user.id != _owner) {
      return Scaffold(appBar: AppBar(title: const Text('Masana profile')),
        body: const Center(child: Text('Sign in to view this profile.')));
    }
    ref.listen(agentDirectoryProvider, (previous, next) {
      if (_followPending || !_sameAccount) return;
      final refreshed = next.find(widget.agent.characterId);
      if (refreshed != null && refreshed.following != _following) {
        setState(() => _following = refreshed.following);
      }
    });
    return Scaffold(
      backgroundColor: colors.surfaceCard,
      appBar: AppBar(title: const Text('Masana profile')),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerScrolled) => [
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Center(child: MasanaPortraitAvatar(agent: agent, size: 112)),
          const SizedBox(height: 16),
          Text(agent.displayName, textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 6),
          Text(agent.roleLabel, textAlign: TextAlign.center,
              style: TextStyle(color: colors.brand, fontSize: 16)),
          const SizedBox(height: 6),
          Text(agent.presenceLabel, textAlign: TextAlign.center,
              style: TextStyle(color: colors.textMuted)),
          const SizedBox(height: 16),
          Wrap(alignment: WrapAlignment.center, spacing: 8, runSpacing: 8,
            children: [
              FilledButton.icon(
                onPressed: _openChat,
                icon: const Icon(Icons.chat_bubble_outline),
                label: const Text('Message'),
              ),
              OutlinedButton.icon(
                onPressed: _followPending ? null : _toggleFollow,
                icon: _followPending
                    ? const SizedBox(width: 18, height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2))
                    : Icon(_following ? Icons.check : Icons.person_add_alt_outlined),
                label: Text(_following ? 'Following' : 'Follow'),
              ),
              OutlinedButton.icon(
                icon: const Icon(Icons.rate_review_outlined),
                label: const Text('Answer feedback'),
                onPressed: () async {
                  final submitted = await Navigator.of(context).push<bool>(
                    MaterialPageRoute(
                      builder: (_) => MasanaQualityFeedbackScreen(agent: agent)));
                  if (submitted == true && context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Thank you. Your feedback was received.'),
                    ));
                  }
                },
              ),
              OutlinedButton.icon(
                icon: const Icon(Icons.article_outlined),
                label: const Text('All posts'),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(
                  builder: (_) => MasanaStatusPostsScreen(agent: agent),
                )),
              ),
              if (agent.roomId != null)
                OutlinedButton.icon(
                  icon: const Icon(Icons.groups_outlined),
                  label: const Text('Room & lessons'),
                  onPressed: () => context.push(
                    '/rooms/${Uri.encodeComponent(agent.roomId!)}'),
                ),
            ],
          ),
          if (agent.socialChannels.isNotEmpty) ...[
            const SizedBox(height: 24),
            Text('Official channels',
              style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text('Links approved by Masanawa administrators.',
              style: TextStyle(color: colors.textMuted)),
            const SizedBox(height: 8),
            Wrap(spacing: 8, runSpacing: 8,
              children: [
                for (final channel in agent.socialChannels)
                  OutlinedButton.icon(
                    onPressed: () => _openOfficialChannel(channel),
                    icon: const Icon(Icons.open_in_new),
                    label: Text(_channelName(channel.platform)),
                  ),
              ]),
          ],
          const SizedBox(height: 20),
          Row(children: [
            const Icon(Icons.article_outlined, size: 20),
            const SizedBox(width: 8),
            Text('Recent posts', style: Theme.of(context).textTheme.titleMedium),
          ]),
        ]))),
        ],
        body: MasanaStatusPostsScreen(agent: agent, embedded: true),
      ),
    );
  }
}
