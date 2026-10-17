import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../agents/agent_directory.dart';
import '../../agents/masana_portrait_avatar.dart';
import '../../core/providers.dart';
import '../../state/agent_directory_state.dart';
import '../../state/ai_chat_state.dart';
import '../../theme/masanawa_theme.dart';

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

  @override
  void initState() {
    super.initState();
    _following = widget.agent.following;
  }

  Future<void> _toggleFollow() async {
    if (_followPending) return;
    setState(() => _followPending = true);
    try {
      final api = ref.read(apiClientProvider);
      final path = '/v1/masana/${Uri.encodeComponent(widget.agent.characterId)}/follow';
      final response = _following
          ? await api.dio.delete<Map<String, dynamic>>(path)
          : await api.dio.post<Map<String, dynamic>>(path);
      if (!mounted) return;
      final value = response.data?['following'];
      if (value is! bool) throw const FormatException('Invalid follow response');
      setState(() => _following = value);
      ref.read(agentDirectoryProvider.notifier).refresh();
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not update Following. Please retry.')),
        );
      }
    } finally {
      if (mounted) setState(() => _followPending = false);
    }
  }

  void _openChat({String? starter}) {
    final id = widget.agent.characterId;
    ref.read(aiChatProvider.notifier).seedGreeting(id, widget.agent.greeting);
    if (starter != null) ref.read(aiChatProvider.notifier).setDraft(id, starter);
    context.push('/chat/${Uri.encodeComponent(id)}');
  }

  @override
  Widget build(BuildContext context) {
    final agent = widget.agent;
    final colors = context.masanawa;
    return Scaffold(
      backgroundColor: colors.surfaceCard,
      appBar: AppBar(title: const Text('Masana profile')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
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
              if (agent.roomId != null)
                OutlinedButton.icon(
                  icon: const Icon(Icons.groups_outlined),
                  label: const Text('Open Room'),
                  onPressed: () => context.push(
                    '/rooms/${Uri.encodeComponent(agent.roomId!)}'),
                ),
            ],
          ),
          if (agent.greeting?.trim().isNotEmpty == true) ...[
            const SizedBox(height: 24),
            Text('Meet ${agent.displayName}', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(agent.greeting!, style: TextStyle(color: colors.textPrimary, height: 1.45)),
          ],
          const SizedBox(height: 24),
          Text('About', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          SelectableText(agent.about.isEmpty
              ? 'More profile information will appear here.'
              : agent.about),
          if (agent.conversationStarters.isNotEmpty) ...[
            const SizedBox(height: 24),
            Text('Try asking', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            ...agent.conversationStarters.map((starter) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: OutlinedButton(
                onPressed: () => _openChat(starter: starter),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(starter),
                ),
              ),
            )),
          ],
        ],
      ),
    );
  }
}
