import 'human_contacts_list.dart';
import '../../human_calls/human_calls.dart';
import '../../calls/masana_voice_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../l10n/app_localizations.dart';
import '../../agents/agent_directory.dart';
import '../../agents/masana_portrait_avatar.dart';
import '../../agents/agent_feedback.dart';
import '../../agents/agent_presence_labels.dart';
import '../../state/session_state.dart';
import '../profile/my_masana_screen.dart';
import '../../state/agent_directory_state.dart';
import '../../state/ai_chat_state.dart';
import '../../theme/masanawa_theme.dart';
import '../../ui/components/masanawa_list_skeleton.dart';

import '../../ui/components/conversation_search_field.dart';

/// Server-driven Masana roster. No persona names, roles or capabilities are
/// compiled into the app; admin configuration can change without a release.
class MasanaListScreen extends ConsumerStatefulWidget {
  const MasanaListScreen({super.key, this.initialTab = 0, this.callPicker = false})
      : assert(initialTab == 0 || initialTab == 1);

  final int initialTab;
  final bool callPicker;

  @override
  ConsumerState<MasanaListScreen> createState() => _MasanaListScreenState();
}

class _MasanaListScreenState extends ConsumerState<MasanaListScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _query = '';
  String _filter = 'all';
  late int _tab;
  String _humanQuery = '';
  late bool _humansVisited;

  @override
  void initState() {
    super.initState();
    _tab = widget.initialTab;
    _humansVisited = _tab == 1;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final directory = ref.watch(agentDirectoryProvider);
    final session = ref.watch(sessionProvider);
    final accountId = session is SessionSignedIn
        ? session.user.id
        : 'signed-out';
    ref.listen<SessionState>(sessionProvider, (previous, next) {
      final oldId = previous is SessionSignedIn ? previous.user.id : null;
      final newId = next is SessionSignedIn ? next.user.id : null;
      if (oldId != newId && mounted) {
        _searchController.clear();
        setState(() {
          _query = '';
          _humanQuery = '';
          _filter = 'all';
        });
      }
    });

    return DefaultTabController(
      length: 2,
      initialIndex: widget.initialTab,
      child: Scaffold(
        backgroundColor: u.surfaceBg,
        appBar: AppBar(
          backgroundColor: u.surfaceCard,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Back',
            onPressed: () {
              if (widget.callPicker) {
                Navigator.of(context).pop();
              } else if (context.canPop()) {
                context.pop();
              } else {
                context.go('/home?tab=chats');
              }
            },
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.callPicker ? 'New call' : 'Contacts',
                style: TextStyle(
                  color: u.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                _tab == 1
                    ? 'People and creators'
                    : directory.loading && directory.agents.isEmpty
                    ? 'Loading…'
                    : '${directory.agents.length} Masana${directory.loading ? ' · refreshing…' : ''}',
                style: TextStyle(color: u.textMuted, fontSize: 12.5),
              ),
            ],
          ),
          actions: [
            IconButton(
              tooltip: 'Search all Masanawa',
              icon: const Icon(Icons.manage_search_outlined),
              onPressed: () => context.push('/search'),
            ),
            if (_tab == 0)
              IconButton(
                tooltip: 'Refresh',
                icon: const Icon(Icons.refresh),
                onPressed: () =>
                    ref.read(agentDirectoryProvider.notifier).refresh(),
              ),
          ],
        ),
        body: Column(
          children: [
            TabBar(
              tabs: const [
                Tab(text: 'Masana'),
                Tab(text: 'Humans'),
              ],
              onTap: (index) {
                if (index == _tab) return;
                setState(() {
                  _tab = index;
                  _humansVisited = _humansVisited || index == 1;
                  _searchController.text = index == 0 ? _query : _humanQuery;
                });
              },
            ),
            ConversationSearchField(
              controller: _searchController,
              hintText: _tab == 0
                  ? 'Search Masana contacts'
                  : 'Find people by name or @username',
              clearTooltip: 'Clear contact search',
              onChanged: (value) => setState(() {
                if (_tab == 0) {
                  _query = value.trim().toLowerCase();
                } else {
                  _humanQuery = value;
                }
              }),
              onClear: () => setState(() {
                _searchController.clear();
                if (_tab == 0) {
                  _query = '';
                } else {
                  _humanQuery = '';
                }
              }),
            ),
            Expanded(
              child: IndexedStack(
                index: _tab,
                children: [
                  _body(context, directory, accountId),
                  if (_humansVisited)
                    HumanContactsList(
                      key: ValueKey('human-contacts-$accountId'),
                      query: _humanQuery,
                      onCall: widget.callPicker
                          ? (handle) => humanCallStart(context, ref, handle)
                          : null,
                    )
                  else
                    const SizedBox.shrink(),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: widget.callPicker || session is! SessionSignedIn || _tab != 0
            ? null
            : FloatingActionButton.extended(
                tooltip: 'Create a new Masana',
                icon: const Icon(Icons.add),
                label: const Text('Create Masana'),
                onPressed: () async {
                  final saved = await MyMasanaScreen.openCreate(context);
                  final active = ref.read(sessionProvider);
                  if (!mounted ||
                      active is! SessionSignedIn ||
                      active.user.id != accountId)
                    return;
                  if (saved == true)
                    await ref.read(agentDirectoryProvider.notifier).refresh();
                },
              ),
      ),
    );
  }

  Widget _body(
    BuildContext context,
    AgentDirectoryState directory,
    String accountId,
  ) {
    final u = context.masanawa;
    if (directory.loading && directory.agents.isEmpty) {
      return const MasanawaListSkeleton(
        semanticLabel: 'Loading Masana contacts',
      );
    }
    if (directory.agents.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.groups_outlined, size: 52, color: u.brand),
              const SizedBox(height: 16),
              Text(
                directory.error ?? 'No Masana are available right now.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: u.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                directory.error == null
                    ? 'Please check back soon.'
                    : 'Your conversations are still here.',
                textAlign: TextAlign.center,
                style: TextStyle(color: u.textMuted, height: 1.4),
              ),
              const SizedBox(height: 18),
              OutlinedButton.icon(
                onPressed: () async {
                  if (directory.recovery == AgentRecovery.signIn) {
                    await ref.read(sessionProvider.notifier).logout();
                  } else {
                    await ref.read(agentDirectoryProvider.notifier).refresh();
                  }
                },
                icon: const Icon(Icons.refresh),
                label: Text(
                  directory.error == null
                      ? 'Refresh'
                      : AgentFeedback(
                          directory.error!,
                          recovery: directory.recovery,
                        ).actionLabel,
                ),
              ),
            ],
          ),
        ),
      );
    }

    final chatThreads = ref.watch(aiChatProvider).threads;
    final filtered = directory.agents
        .where((agent) {
          if (_filter == 'following' && !agent.following) return false;
          if (_filter == 'recent' &&
              !(chatThreads[agent.characterId]?.messages.isNotEmpty ?? false))
            return false;
          if (_query.isEmpty) return true;
          return agent.displayName.toLowerCase().contains(_query) ||
              agent.roleLabel.toLowerCase().contains(_query) ||
              agent.about.toLowerCase().contains(_query) ||
              agent.countrySearchText.contains(_query);
        })
        .toList(growable: false);
    filtered.sort((a, b) {
      // Explicit follows first; otherwise recent real conversations first.
      if (a.following != b.following) return a.following ? -1 : 1;
      final lastA = chatThreads[a.characterId]?.updatedAt;
      final lastB = chatThreads[b.characterId]?.updatedAt;
      if (lastA != null && lastB != null) return lastB.compareTo(lastA);
      if (lastA != null) return -1;
      if (lastB != null) return 1;
      return a.displayName.compareTo(b.displayName);
    });

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(14, 5, 14, 7),
          child: Wrap(
            spacing: 8,
            children: [
              for (final choice in const [
                ('all', 'All'),
                ('following', 'Following'),
                ('recent', 'Recent'),
              ])
                ChoiceChip(
                  label: Text(choice.$2),
                  selected: _filter == choice.$1,
                  onSelected: (_) => setState(() => _filter = choice.$1),
                ),
            ],
          ),
        ),
        if (directory.error != null)
          MaterialBanner(
            content: Text(directory.error!),
            actions: [
              TextButton(
                onPressed: directory.loading
                    ? null
                    : () => ref.read(agentDirectoryProvider.notifier).refresh(),
                child: const Text('Retry'),
              ),
            ],
          ),
        Expanded(
          child: filtered.isEmpty && (_query.isNotEmpty || _filter != 'all')
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.search_off_outlined, size: 42),
                        const SizedBox(height: 12),
                        Text(
                          _filter == 'following'
                              ? 'No followed Masana yet. Open a profile to follow one.'
                              : _filter == 'recent'
                              ? 'No conversations yet. Start a chat with a Masana.'
                              : 'No matching Masana contacts for "$_query"',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: u.textPrimary, fontSize: 16),
                        ),
                        const SizedBox(height: 12),
                        TextButton(
                          onPressed: () => setState(() {
                            _searchController.clear();
                            _query = '';
                            _filter = 'all';
                          }),
                          child: const Text('Clear filters'),
                        ),
                      ],
                    ),
                  ),
                )
              : RefreshIndicator(
                  onRefresh: () =>
                      ref.read(agentDirectoryProvider.notifier).refresh(),
                  child: ListView.separated(
                    padding: const EdgeInsets.only(bottom: 96),
                    key: PageStorageKey<String>(
                      'masana-contacts-$accountId-$_filter-$_query',
                    ),
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: filtered.length,
                    separatorBuilder: (_, _) => Divider(
                      height: 1,
                      indent: 76,
                      color: u.structuralBorder,
                    ),
                    itemBuilder: (context, index) {
                      final agent = filtered[index];
                      return ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 7,
                        ),
                        leading: _MasanaAvatar(agent: agent),
                        title: Row(
                          children: [
                            Flexible(
                              child: Text(
                                agent.displayName,
                                style: TextStyle(
                                  color: u.textPrimary,
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            if (agent.following)
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Icon(Icons.star_rounded, size: 16),
                              ),
                          ],
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            agent.roleLabel,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: u.textMuted, fontSize: 14),
                          ),
                        ),
                        trailing: Tooltip(
                          message: agent.countryName ?? 'Country not specified',
                          child: Semantics(
                            label: agent.countryName ?? 'Country not specified',
                            child: agent.countryFlag == null
                                ? Icon(
                                    Icons.public_outlined,
                                    color: u.textMuted,
                                  )
                                : Text(
                                    agent.countryFlag!,
                                    style: const TextStyle(fontSize: 25),
                                  ),
                          ),
                        ),
                        onTap: () {
                          if (widget.callPicker) {
                            final active = ref.read(sessionProvider);
                            if (active is! SessionSignedIn ||
                                active.user.id != accountId) return;
                            context.push(masanaLiveVoiceRoute(agent.characterId));
                            return;
                          }
                          ref
                              .read(aiChatProvider.notifier)
                              .seedGreeting(agent.characterId, agent.greeting);
                          context.push('/chat/${agent.characterId}');
                        },
                      );
                    },
                  ),
                ),
        ),
      ],
    );
  }
}

class _MasanaAvatar extends StatelessWidget {
  const _MasanaAvatar({required this.agent});

  final AgentDirectoryEntry agent;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final strings = Localizations.of<AppLocalizations>(
      context,
      AppLocalizations,
    );
    final presence = strings == null
        ? agent.presenceLabel
        : localizedAgentPresence(strings, agent);
    return Stack(
      children: [
        MasanaPortraitAvatar(agent: agent),
        Positioned(
          right: 0,
          bottom: 0,
          child: Semantics(
            label: '${agent.displayName}: $presence',
            child: Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                // Cached, malformed and busy presence is not an availability
                // grant. Only a current explicit server value gets green.
                color: agent.presence == AgentPresence.available
                    ? u.success
                    : u.textMuted,
                shape: BoxShape.circle,
                border: Border.all(color: u.surfaceBg, width: 2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
