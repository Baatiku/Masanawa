import 'dart:async';
import 'dart:convert';

import 'unified_chat_inbox.dart';
import 'chat_ui_copy.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../chat/chat_format.dart';
import '../../chat/message_parts.dart';
import '../../features/masana_chat/inbox_search.dart';
import '../../core/startup_metrics.dart';
import '../../state/agent_directory_state.dart';
import '../../state/ai_chat_state.dart';
import '../../state/session_state.dart';
import '../../theme/masanawa_theme.dart';
import '../../ui/components/masanawa_main_header.dart';
import '../../agents/masana_portrait_avatar.dart';
import '../../ui/components/masanawa_conversation_tile.dart';
import '../../ui/components/conversation_search_field.dart';

final _archivedServerPage = FutureProvider.autoDispose
    .family<MasanaInboxPage, String>((ref, key) {
  final access = ref.watch(masanaInboxSearchProvider);
  if (access is! MasanaInboxControlsAccess) {
    throw StateError('Server archive search is not available');
  }
  final parts = jsonDecode(key) as List<dynamic>;
  return (access as MasanaInboxControlsAccess).archivedPage(
    bearer: parts[1] as String, query: parts[2] as String);
});

class ChatListScreen extends ConsumerWidget {
  const ChatListScreen({super.key});

  String _snippet(ChatThread thread) {
    if (thread.draft.trim().isNotEmpty) return 'Draft: ${thread.draft.trim()}';
    if (thread.draftVoice != null) return 'Draft: voice note';
    if (thread.draftAttachments.isNotEmpty) {
      final count = thread.draftAttachments.length;
      return count == 1
          ? 'Draft: ${thread.draftAttachments.first.label}'
          : 'Draft: $count attachments';
    }
    final last = thread.lastMessage;
    if (last == null) return '';
    if (last.deleted) return 'Message hidden on this device';
    if (last.deliveryStatus == 'failed') return 'Failed · tap to review';
    if (last.deliveryStatus == 'queued') return 'Queued · waiting for connection';
    if (last.deliveryStatus == 'stopped') return 'Stopped';
    if (last.parts.isNotEmpty) {
      final part = last.parts.firstWhere(
        (item) => (item.body?.trim().isNotEmpty ?? false) ||
            (item.title?.trim().isNotEmpty ?? false) || item.file != null,
        orElse: () => last.parts.last);
      return part.file?.name ??
          part.title ??
          part.body ??
          _partLabel(part.kind);
    }
    if (last.attachment != null) {
      final label = last.attachment!.label;
      return last.text.isEmpty ? label : '$label · ${last.text}';
    }
    return last.text.trim().isEmpty ? 'Message' : last.text.trim();
  }

  Widget _buildSubtitle(MasanawaColors u, ChatThread thread) {
    final isDraft =
        thread.draft.trim().isNotEmpty ||
        thread.draftVoice != null ||
        thread.draftAttachments.isNotEmpty;
    if (isDraft) {
      final value = _snippet(thread);
      return Text.rich(
        TextSpan(children: [
          TextSpan(text: 'Draft', style: TextStyle(
            color: u.brandStrong, fontWeight: FontWeight.w600)),
          TextSpan(text: value.startsWith('Draft: ')
              ? ' · ${value.substring(7)}' : ' · $value',
              style: TextStyle(color: u.textMuted)),
        ]),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontSize: 14),
      );
    }
    final last = thread.lastMessage;
    Widget? tick;
    if (last != null && last.isUser) {
      tick = switch (last.deliveryStatus) {
        'pending' || 'sending' || 'uploading' || 'processing' => Icon(
          Icons.access_time_rounded,
          size: 13,
          color: u.textMuted,
        ),
        'sent' => Icon(Icons.done_rounded, size: 14, color: u.textMuted),
        'delivered' => Icon(
          Icons.done_all_rounded,
          size: 14,
          color: u.textMuted,
        ),
        'read' => Icon(Icons.done_all_rounded, size: 14, color: u.tickRead),
        'queued' => Icon(Icons.cloud_off_outlined, size: 14, color: u.warning),
        'failed' => Icon(Icons.error_outline, size: 14, color: u.emergency),
        'stopped' => Icon(Icons.stop_circle_outlined, size: 14, color: u.textMuted),
        _ => null, // Never imply delivery without an authoritative state.
      };
    }

    Widget? attachIcon;
    if (last != null) {
      final voice =
          last.allAttachments.any((a) => a.kind == 'voice') ||
          last.parts.any((p) => p.kind == AgentMessagePartKind.audio);
      final image =
          last.allAttachments.any((a) => a.kind == 'image') ||
          last.parts.any((p) => p.kind == AgentMessagePartKind.image);
      final video = last.allAttachments.any((a) => a.kind == 'video');
      final doc =
          last.allAttachments.isNotEmpty ||
          last.parts.any((p) => p.kind == AgentMessagePartKind.file);
      if (voice) {
        attachIcon = Icon(Icons.mic_rounded, size: 14, color: u.textMuted);
      } else if (image) {
        attachIcon = Icon(
          Icons.photo_camera_rounded,
          size: 14,
          color: u.textMuted,
        );
      } else if (video) {
        attachIcon = Icon(Icons.videocam_rounded, size: 14, color: u.textMuted);
      } else if (doc) {
        attachIcon = Icon(
          Icons.insert_drive_file_rounded,
          size: 14,
          color: u.textMuted,
        );
      }
    }

    return Row(
      children: [
        if (tick != null) ...[tick, const SizedBox(width: 3)],
        if (attachIcon != null) ...[attachIcon, const SizedBox(width: 3)],
        Expanded(
          child: Text(
            _snippet(thread),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: u.textMuted, fontSize: 14),
          ),
        ),
      ],
    );
  }

  String _partLabel(AgentMessagePartKind kind) => switch (kind) {
    AgentMessagePartKind.audio => 'Voice response',
    AgentMessagePartKind.image => 'Image',
    AgentMessagePartKind.file => 'File',
    AgentMessagePartKind.artifact => 'Work result',
    AgentMessagePartKind.work => 'Work update',
    AgentMessagePartKind.approval => 'Approval needed',
    AgentMessagePartKind.operation => 'Action update',
    AgentMessagePartKind.callResult => 'Call result',
    AgentMessagePartKind.status => 'Status update',
  };

  Future<void> _threadActions(
    BuildContext context,
    WidgetRef ref,
    String characterId, {
    ChatThread? local,
    MasanaInboxSearchItem? canonical,
    VoidCallback? onPin,
    ValueChanged<MasanaInboxSearchItem?>? onUpdated,
  }) async {
    final ownerAtOpen = ref.read(sessionProvider);
    final epochAtOpen = ref.read(sessionProvider.notifier).authorizationEpoch;
    bool stillAuthorized() => identical(ownerAtOpen, ref.read(sessionProvider)) &&
        epochAtOpen == ref.read(sessionProvider.notifier).authorizationEpoch;
    final pinned = canonical?.pinned ?? local?.pinned ?? false;
    final remote = canonical != null;
    final action = await showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: Icon(
                pinned ? Icons.push_pin_outlined : Icons.push_pin,
              ),
              title: Text(ChatUiCopy.of(context, pinned
                  ? (remote ? 'Unpin conversation' : 'Unpin on this device')
                  : (remote ? 'Pin conversation' : 'Pin on this device'))),
              onTap: () => Navigator.pop(sheetContext, 'pin'),
            ),
            ListTile(
              leading: const Icon(Icons.archive_outlined),
              title: Text(ChatUiCopy.of(context, remote
                  ? 'Archive conversation' : 'Archive on this device')),
              onTap: () => Navigator.pop(sheetContext, 'archive'),
            ),
            ListTile(
              leading: const Icon(Icons.edit_outlined),
              title: Text(ChatUiCopy.of(context, 'Rename')),
              onTap: () => Navigator.pop(sheetContext, 'rename'),
            ),
            if (local != null) ListTile(
              leading: const Icon(Icons.delete_outline),
              title: Text(ChatUiCopy.of(context, 'Delete on this device')),
              onTap: () => Navigator.pop(sheetContext, 'delete'),
            ),
          ],
        ),
      ),
    );
    if (action == null || !context.mounted || !stillAuthorized()) return;
    final ctl = ref.read(aiChatProvider.notifier);
    if (action == 'pin') {
      if (canonical != null) {
        if (onPin != null) onPin();
        else await _setCanonicalPreference(context, ref, canonical,
          field: 'pinned', value: !canonical.pinned, onUpdated: onUpdated);
      } else if (local != null) { ctl.togglePin(characterId); }
    }
    if (action == 'archive') {
      if (canonical != null) {
        await _setCanonicalPreference(context, ref, canonical,
          field: 'archived', value: true, onUpdated: onUpdated);
      } else if (local != null) { ctl.toggleArchive(characterId); }
    }
    if (action == 'delete') {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: Text(ChatUiCopy.of(context, 'Delete chat?')),
          content: const Text(
            'This removes the conversation and its local drafts from this device.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: Text(ChatUiCopy.of(context, 'Cancel')),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              child: Text(ChatUiCopy.of(context, 'Delete')),
            ),
          ],
        ),
      );
      if (confirmed == true && local != null && context.mounted &&
          stillAuthorized()) {
        ctl.clearThread(characterId);
      }
    }
    if (action == 'rename') {
      if (!context.mounted) return;
      final value = await showDialog<String>(
        context: context,
        builder: (_) => _RenameConversationDialog(
          initial: canonical?.customTitle ?? local?.title ?? ''),
      );
      if (value != null && context.mounted && stillAuthorized()) {
        final normalized = value.trim();
        if (canonical != null) {
          await _setCanonicalPreference(context, ref, canonical,
            field: 'title', value: normalized.isEmpty ? null : normalized,
            onUpdated: onUpdated);
        } else if (local != null) {
          ctl.renameThread(characterId, normalized);
        }
      }
    }
  }

  Future<void> _setCanonicalPreference(BuildContext context, WidgetRef ref,
      MasanaInboxSearchItem row, {required String field,
      required Object? value,
      ValueChanged<MasanaInboxSearchItem?>? onUpdated}) async {
    final owner = ref.read(sessionProvider);
    if (owner is! SessionSignedIn) return;
    final access = ref.read(masanaInboxSearchProvider);
    final MasanaInboxControlsAccess? controls =
        access is MasanaInboxControlsAccess
          ? access as MasanaInboxControlsAccess : null;
    if (field != 'pinned' && controls == null) {
      if (context.mounted) ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(ChatUiCopy.of(context,
            'Server conversation controls are unavailable.'))));
      return;
    }
    final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    try {
      final int receipt;
      switch (field) {
        case 'pinned':
          receipt = await access.setPinned(bearer: owner.tokens.accessToken,
            characterId: row.characterId, pinned: value as bool,
            expectedRevision: row.revision);
          break;
        case 'archived':
          receipt = await controls!.setArchived(bearer: owner.tokens.accessToken,
            characterId: row.characterId, archived: value as bool,
            expectedRevision: row.revision);
          break;
        case 'title':
          receipt = await controls!.setTitle(bearer: owner.tokens.accessToken,
            characterId: row.characterId, title: value as String?,
            expectedRevision: row.revision);
          break;
        default:
          return;
      }
      if (!identical(owner, ref.read(sessionProvider)) ||
          epoch != ref.read(sessionProvider.notifier).authorizationEpoch) return;
      if (receipt <= row.revision) throw const FormatException('Stale preference receipt');
      ref.read(aiChatProvider.notifier).applyCanonicalControls(row.characterId,
        pinned: field == 'pinned' ? value as bool : row.pinned,
        archived: field == 'archived' ? value as bool : row.archived,
        title: field == 'title' ? value as String? : row.customTitle,
        setTitle: field == 'title' || row.customTitle != null);
      final confirmed = switch (field) {
        'pinned' => row.withPin(value as bool, receipt),
        'archived' => row.withControls(archived: value as bool,
          revision: receipt),
        'title' => row.withControls(customTitle: value as String?,
          changeTitle: true, revision: receipt),
        _ => row,
      };
      onUpdated?.call(confirmed);
    } catch (_) {
      if (!identical(owner, ref.read(sessionProvider)) ||
          epoch != ref.read(sessionProvider.notifier).authorizationEpoch) return;
      onUpdated?.call(null);
      if (context.mounted) ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not save conversation preference. '
          'It may have changed elsewhere; refresh and retry.')));
    }
  }

  Future<void> _showArchived(BuildContext context) => Navigator.of(context)
      .push(MaterialPageRoute<void>(
        builder: (_) => const _ArchivedMasanaConversationsScreen()));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MasanawaStartupMetrics.afterFrame('chats_first_frame');
    final u = context.masanawa;
    final chat = ref.watch(aiChatProvider);
    final directory = ref.watch(agentDirectoryProvider);
    final session = ref.watch(sessionProvider);
    final accountKey = session is SessionSignedIn
        ? session.user.id
        : 'signed-out';
    Widget buildThreadRow(ChatThread thread, MasanaInboxSearchItem? canonical,
        VoidCallback? onPin, bool saving,
        ValueChanged<MasanaInboxSearchItem?> onUpdated) {
      final agent = directory.find(thread.characterId);
      final last = thread.lastMessage;
      final serverNewer = canonical?.lastActivityAt != null &&
          canonical!.lastActivityAt!.isAfter(thread.lastMessageActivityAt);
      final localDraft = thread.draft.trim().isNotEmpty ||
          thread.draftVoice != null || thread.draftAttachments.isNotEmpty;
      return MasanawaConversationTile(
        key: ValueKey('local-${thread.characterId}'),
        avatar: MasanaPortraitAvatar(
          agent: agent, characterId: thread.characterId,
          displayName: canonical?.customTitle ?? thread.title ??
            agent?.displayName ?? 'Masana', size: 52),
        name: canonical?.customTitle ?? thread.title ??
            agent?.displayName ?? 'Unavailable Masana',
        preview: serverNewer && !localDraft && canonical.lastMessage.isNotEmpty
          ? Text(canonical.lastMessage, maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: u.textMuted, fontSize: 14))
          : _buildSubtitle(u, thread),
        time: canonical?.lastActivityAt != null
            ? formatChatTime(canonical!.lastActivityAt!)
            : last == null ? '' : formatChatTime(thread.lastMessageActivityAt),
        pinned: canonical?.pinned ?? thread.pinned,
        unread: canonical?.unreadCount ?? thread.unread,
        onAction: onPin,
        actionLoading: saving,
        actionTooltip: canonical == null ? null : ChatUiCopy.of(context,
            canonical.pinned ? 'Unpin conversation' : 'Pin conversation'),
        actionIcon: canonical == null ? null :
            canonical.pinned ? Icons.push_pin : Icons.push_pin_outlined,
        onLongPress: () => _threadActions(context, ref, thread.characterId,
          local: thread, canonical: canonical,
          onPin: onPin, onUpdated: onUpdated),
        onTap: () => context.push(
            '/chat/${Uri.encodeComponent(thread.characterId)}'),
      );
    }

    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: masanawaMainHeader(
        context,
        actions: [
          PopupMenuButton<String>(
            tooltip: ChatUiCopy.of(context, 'Chats options'),
            icon: const Icon(Icons.more_vert),
            onSelected: (value) {
              if (value == 'archive') _showArchived(context);
              if (value == 'wallet') context.go('/home?tab=wallet');
            },
            itemBuilder: (_) => [
              PopupMenuItem(value: 'archive',
                  child: Text(ChatUiCopy.of(context, 'Archived chats'))),
              PopupMenuItem(value: 'wallet',
                  child: Text(ChatUiCopy.of(context, 'Wallet'))),
            ],
          ),
        ],
      ),
      body: UnifiedChatInbox(
        key: ValueKey(accountKey),
        masanaThreads: session is SessionSignedIn
            ? chat.threads.values
                  .where((t) => !t.archived)
                  .toList()
            : const [],
        masanaRow: (thread) => buildThreadRow(
          thread, null, null, false, (_) {}),
        canonicalRow: buildThreadRow,
        serverActions: (row, onUpdated) => _threadActions(context, ref,
          row.characterId, canonical: row, onUpdated: onUpdated),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: ChatUiCopy.of(context, 'Start conversation'),
        backgroundColor: u.brand,
        foregroundColor: u.textPrimary,
        onPressed: () => context.push('/masana'),
        child: const Icon(Icons.chat_outlined),
      ),
    );
  }
}

/// Own the editor for the full dialog route lifetime, including its dismissal
/// animation. Disposing it as soon as showDialog resolves can race TextField's
/// final focus/overlay frame on Android and in widget tests.
class _RenameConversationDialog extends StatefulWidget {
  const _RenameConversationDialog({required this.initial});

  final String initial;

  @override
  State<_RenameConversationDialog> createState() =>
      _RenameConversationDialogState();
}

class _RenameConversationDialogState extends State<_RenameConversationDialog> {
  late final TextEditingController _editor;

  @override
  void initState() {
    super.initState();
    _editor = TextEditingController(text: widget.initial);
  }

  @override
  void dispose() {
    _editor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: Text(ChatUiCopy.of(context, 'Rename conversation')),
    content: TextField(
      controller: _editor,
      autofocus: true,
      maxLength: 80,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: ChatUiCopy.of(context, 'Conversation name')),
    ),
    actions: [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: Text(ChatUiCopy.of(context, 'Cancel')),
      ),
      FilledButton(
        onPressed: () => Navigator.pop(context, _editor.text),
        child: Text(ChatUiCopy.of(context, 'Save')),
      ),
    ],
  );
}

class _ArchivedMasanaConversationsScreen extends ConsumerStatefulWidget {
  const _ArchivedMasanaConversationsScreen();
  @override
  ConsumerState<_ArchivedMasanaConversationsScreen> createState() =>
      _ArchivedMasanaConversationsScreenState();
}

class _ArchivedMasanaConversationsScreenState
    extends ConsumerState<_ArchivedMasanaConversationsScreen> {
  final _search = TextEditingController();
  String _query = '', _remoteQuery = '';
  Timer? _debounce;
  ProviderSubscription<SessionState>? _sessionSubscription;
  final _additional = <MasanaInboxSearchItem>[];
  final _seenCursors = <String>{};
  final _busy = <String>{};
  final _unarchiveReceipts = <String, int>{};
  String? _pageKey, _nextCursor;
  bool _loadedMore = false, _loadingMore = false, _pageError = false;

  @override
  void initState() {
    super.initState();
    _sessionSubscription = ref.listenManual(sessionProvider, (before, after) {
      if (identical(before, after)) return;
      _debounce?.cancel();
      _search.clear();
      if (mounted) setState(() {
        _query = _remoteQuery = '';
        _busy.clear();
        _unarchiveReceipts.clear();
        _resetPages();
      });
    });
  }

  void _resetPages() {
    _additional.clear();
    _seenCursors.clear();
    _pageKey = _nextCursor = null;
    _loadedMore = _loadingMore = _pageError = false;
  }

  void _changed(String text) {
    _debounce?.cancel();
    setState(() { _query = text.trim().toLowerCase(); _resetPages(); });
    if (_query.isEmpty) {
      setState(() => _remoteQuery = '');
    } else if (_query.length <= 80) {
      _debounce = Timer(const Duration(milliseconds: 350), () {
        if (mounted) setState(() => _remoteQuery = _query);
      });
    }
  }

  Future<void> _loadMore(String key, String cursor, SessionSignedIn owner) async {
    if (_loadingMore || _seenCursors.contains(cursor)) return;
    final access = ref.read(masanaInboxSearchProvider);
    if (access is! MasanaInboxControlsAccess) return;
    final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    setState(() { _loadingMore = true; _pageError = false; });
    try {
      final page = await (access as MasanaInboxControlsAccess).archivedPage(
        bearer: owner.tokens.accessToken, query: _remoteQuery,
        cursor: cursor);
      if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
          epoch != ref.read(sessionProvider.notifier).authorizationEpoch ||
          _remoteQuery != _query || !ref.read(aiChatProvider).online ||
          key != jsonEncode([owner.user.id, owner.tokens.accessToken,
            _remoteQuery, epoch])) return;
      setState(() {
        _pageKey = key;
        _loadedMore = true;
        _loadingMore = false;
        _seenCursors.add(cursor);
        _additional.addAll(page.items);
        _nextCursor = page.items.isEmpty || page.nextCursor == cursor ||
                (page.nextCursor != null && _seenCursors.contains(page.nextCursor))
            ? null : page.nextCursor;
      });
    } catch (_) {
      if (mounted && identical(owner, ref.read(sessionProvider)) &&
          epoch == ref.read(sessionProvider.notifier).authorizationEpoch) {
        setState(() { _loadingMore = false; _pageError = true; });
      }
    }
  }

  Future<void> _unarchive(MasanaInboxSearchItem row,
      SessionSignedIn owner, String key) async {
    if (_busy.contains(row.characterId)) return;
    final access = ref.read(masanaInboxSearchProvider);
    if (access is! MasanaInboxControlsAccess) return;
    final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    setState(() => _busy.add(row.characterId));
    try {
      final receipt = await (access as MasanaInboxControlsAccess).setArchived(
        bearer: owner.tokens.accessToken, characterId: row.characterId,
        archived: false, expectedRevision: row.revision);
      if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
          epoch != ref.read(sessionProvider.notifier).authorizationEpoch) return;
      if (receipt <= row.revision) throw const FormatException('Stale archive receipt');
      ref.read(aiChatProvider.notifier).applyCanonicalControls(row.characterId,
        pinned: row.pinned, archived: false, title: row.customTitle,
        setTitle: row.customTitle != null);
      setState(() {
        _unarchiveReceipts[row.characterId] = receipt;
        _additional.removeWhere((item) => item.characterId == row.characterId);
        _busy.remove(row.characterId);
      });
      ref.invalidate(_archivedServerPage(key));
    } catch (_) {
      if (mounted && identical(owner, ref.read(sessionProvider)) &&
          epoch == ref.read(sessionProvider.notifier).authorizationEpoch) {
        setState(() => _busy.remove(row.characterId));
        ref.invalidate(_archivedServerPage(key));
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Could not unarchive. The conversation may have '
              'changed elsewhere; reload and retry.')));
      }
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _sessionSubscription?.close();
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final directory = ref.watch(agentDirectoryProvider);
    final state = ref.watch(aiChatProvider);
    final session = ref.watch(sessionProvider);
    final online = state.online && session is SessionSignedIn &&
        _remoteQuery == _query && _query.length <= 80;
    final key = session is SessionSignedIn ? jsonEncode([
      session.user.id, session.tokens.accessToken, _remoteQuery,
      ref.read(sessionProvider.notifier).authorizationEpoch]) : '';
    final server = online ? ref.watch(_archivedServerPage(key)) : null;
    final firstPage = server?.valueOrNull;
    final remoteById = <String, MasanaInboxSearchItem>{};
    for (final item in [
      ...?firstPage?.items,
      if (firstPage != null && _pageKey == key) ..._additional,
    ]) {
      if ((_unarchiveReceipts[item.characterId] ?? -1) > item.revision) {
        continue;
      }
      final old = remoteById[item.characterId];
      if (old == null || old.revision < item.revision) {
        remoteById[item.characterId] = item;
      }
    }
    final archived = state.threads.values
        .where((thread) => thread.archived)
        .where((thread) {
          final name = directory.find(thread.characterId)?.displayName ?? '';
          return '$name ${thread.title ?? ''} ${thread.characterId}'
              .toLowerCase().contains(_query);
        }).toList()
      ..sort((a, b) {
        final byTime = b.lastMessageActivityAt.compareTo(a.lastMessageActivityAt);
        return byTime != 0 ? byTime : a.characterId.compareTo(b.characterId);
      });
    final remoteOnly = remoteById.values.where((row) =>
        row.archived && !archived.any((thread) =>
          thread.characterId == row.characterId)).toList()
      ..sort((a, b) => (b.lastActivityAt ?? DateTime.utc(1970))
          .compareTo(a.lastActivityAt ?? DateTime.utc(1970)));
    return Scaffold(
      appBar: AppBar(title: Text(ChatUiCopy.of(context, 'Archived chats'))),
      body: Column(children: [
        ConversationSearchField(
          controller: _search,
          hintText: ChatUiCopy.of(context, 'Search archived conversations'),
          onChanged: _changed,
          onClear: () { _search.clear(); _changed(''); },
        ),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text(ChatUiCopy.of(context,
              'Archived chats keep their history. Account archives sync when online; device-only archives stay local.'),
            textAlign: TextAlign.center)),
        if (_query.length > 80) Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(ChatUiCopy.of(context,
              'Shorten search to 80 characters to include archives from other devices.'))),
        Expanded(child: RefreshIndicator(
          onRefresh: () async {
            await ref.read(agentDirectoryProvider.notifier).refresh();
            if (!mounted || !online) return;
            setState(_resetPages);
            ref.invalidate(_archivedServerPage(key));
          },
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              if (archived.isEmpty && remoteOnly.isEmpty &&
                  server?.isLoading != true)
                Padding(padding: const EdgeInsets.all(32),
                  child: Center(child: Text(ChatUiCopy.of(context, _query.isEmpty
                    ? 'No archived chats' : 'No matching archived chats')))),
              for (final thread in archived)
                Builder(builder: (context) {
                  final row = remoteById[thread.characterId];
                  final agent = directory.find(thread.characterId);
                  final name = row?.customTitle ?? thread.title ??
                      agent?.displayName ?? ChatUiCopy.of(context, 'Unavailable Masana');
                  return MasanawaConversationTile(
                    key: ValueKey('archived-${thread.characterId}'),
                    avatar: MasanaPortraitAvatar(agent: agent,
                      characterId: thread.characterId, displayName: name, size: 52),
                    name: name,
                    preview: Text(thread.draft.trim().isNotEmpty
                      ? 'Draft: ${thread.draft.trim()}'
                      : thread.lastMessage?.text ?? row?.lastMessage ??
                          ChatUiCopy.of(context, 'Saved conversation'),
                      maxLines: 1, overflow: TextOverflow.ellipsis),
                    time: row?.lastActivityAt != null
                        ? formatChatTime(row!.lastActivityAt!)
                        : thread.lastMessage == null ? ''
                          : formatChatTime(thread.lastMessageActivityAt),
                    pinned: row?.pinned ?? thread.pinned,
                    unread: row?.unreadCount ?? thread.unread,
                    actionTooltip: ChatUiCopy.of(context,
                        row == null ? 'Unarchive on this device'
                            : 'Unarchive account conversation'),
                    actionIcon: Icons.unarchive_outlined,
                    actionLoading: _busy.contains(thread.characterId),
                    onAction: () {
                      if (row != null && session is SessionSignedIn) {
                        unawaited(_unarchive(row, session, key));
                      } else {
                        ref.read(aiChatProvider.notifier)
                            .toggleArchive(thread.characterId);
                      }
                    },
                    onTap: () => context.push(
                      '/chat/${Uri.encodeComponent(thread.characterId)}'),
                  );
                }),
              for (final row in remoteOnly)
                MasanawaConversationTile(
                  key: ValueKey('archived-remote-${row.characterId}'),
                  avatar: MasanaPortraitAvatar(
                    agent: directory.find(row.characterId),
                    characterId: row.characterId,
                    displayName: row.customTitle ?? row.displayName, size: 52),
                  name: row.customTitle ?? row.displayName,
                  preview: Text(row.lastMessage.isEmpty
                      ? row.profession : row.lastMessage,
                    maxLines: 1, overflow: TextOverflow.ellipsis),
                  time: row.lastActivityAt == null
                      ? '' : formatChatTime(row.lastActivityAt!),
                  pinned: row.pinned, unread: row.unreadCount,
                  actionIcon: Icons.unarchive_outlined,
                  actionTooltip: ChatUiCopy.of(context,
                      'Unarchive account conversation'),
                  actionLoading: _busy.contains(row.characterId),
                  onAction: session is SessionSignedIn ?
                      () => unawaited(_unarchive(row, session, key)) : null,
                  onTap: () => context.push(
                    '/chat/${Uri.encodeComponent(row.characterId)}'),
                ),
              if (server?.isLoading == true)
                LinearProgressIndicator(minHeight: 2,
                  semanticsLabel: ChatUiCopy.of(context,
                      'Syncing archived conversations')),
              if (server?.hasError == true)
                ListTile(title: Text(ChatUiCopy.of(context,
                    'Could not load account archives. Device-only archives are still shown.')),
                  trailing: IconButton(tooltip: ChatUiCopy.of(context,
                      'Retry account archives'),
                    icon: const Icon(Icons.refresh),
                    onPressed: () => ref.invalidate(_archivedServerPage(key)))),
              if (firstPage != null && !_loadingMore && !_pageError &&
                  (_loadedMore && _pageKey == key
                      ? _nextCursor : firstPage.nextCursor) != null)
                Center(child: TextButton.icon(
                  icon: const Icon(Icons.expand_more),
                  label: Text(ChatUiCopy.of(context,
                      'Load more archived conversations')),
                  onPressed: session is SessionSignedIn ? () => _loadMore(
                    key, (_loadedMore && _pageKey == key
                        ? _nextCursor : firstPage.nextCursor)!, session) : null)),
              if (_loadingMore) LinearProgressIndicator(minHeight: 2,
                  semanticsLabel: ChatUiCopy.of(context, 'Loading older archives')),
              if (_pageError) ListTile(
                title: Text(ChatUiCopy.of(context, 'Could not load more archives.')),
                trailing: IconButton(icon: const Icon(Icons.refresh),
                  tooltip: ChatUiCopy.of(context,
                      'Retry archived conversations'),
                  onPressed: session is SessionSignedIn ? () {
                    final cursor = _loadedMore && _pageKey == key
                        ? _nextCursor : firstPage?.nextCursor;
                    if (cursor != null) _loadMore(key, cursor, session);
                  } : null)),
              const SizedBox(height: 88),
            ],
          ),
        )),
      ]),
    );
  }
}
