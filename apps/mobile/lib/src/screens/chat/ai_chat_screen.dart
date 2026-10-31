import '../../tokens/feature_colors.dart';
import '../../core/call_signaling_tone.dart';
import 'dart:async';
import 'dart:io';
import 'dart:math' as math;

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:super_sliver_list/super_sliver_list.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mime/mime.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:audio_session/audio_session.dart';

import '../../agents/agent_directory.dart';
import '../../agents/agent_feedback.dart';
import '../../agents/masana_portrait_avatar.dart';
import '../../chat/chat_format.dart';
import '../../chat/chat_emoji_panel.dart';
import '../../chat/chat_text_editing.dart';
import '../../chat/cafe_suggestions.dart';
import '../../chat/message_parts.dart';
import '../../chat/message_parts_view.dart';
import '../../chat/shell_document.dart';
import '../../calls/call_lifecycle_reporter.dart';
import '../../calls/call_outcome.dart';
import '../../calls/call_lifecycle_limits.dart';
import '../../calls/mb_call_transport.dart';
import '../../calls/mb_call_intent.dart';
import '../../calls/mb_call_flow.dart';
import '../../core/live_pcm_audio.dart';
import '../../core/live_call_foreground.dart';
import '../../core/live_voice_session.dart';
import '../../core/call_recording.dart';
import '../../ui/components/voice_note_composer.dart';
import '../../ui/components/voice_note_hold_region.dart';
import '../../core/voice_note_recorder.dart';
import '../profile/masana_profile_screen.dart';
import '../../core/app_permissions.dart';
import '../../agents/agent_shell.dart';
import '../../core/providers.dart';
import '../../state/agent_directory_state.dart';
import '../../state/ai_chat_state.dart';
import '../../state/session_state.dart';
import '../../state/wallet_state.dart';
import '../../voice/voice_reply_playback_preference.dart';
import '../../voice/voice_note_sequence.dart';
import '../../safety/twin_safety_state.dart';
import 'masana_report_screen.dart';
import 'chat_ui_copy.dart';
import '../../theme/masanawa_theme.dart';

/// One Character conversation. Voice is the primary action while text,
/// attachments and structured work results remain in the same timeline.
enum AiChatEntryMode { chat, teach, study, liveTalk, liveVoice, cafe }

class AiChatScreen extends ConsumerStatefulWidget {
  const AiChatScreen({
    super.key,
    required this.characterId,
    this.entryMode = AiChatEntryMode.chat,
    this.initialPrompt,
    this.embeddedInShell = false,
    this.onOpenAgents,
    this.onOpenActivity,
    this.onOpenProfile,
  });

  final String characterId;
  final AiChatEntryMode entryMode;
  final String? initialPrompt;
  /// Root Talk tab: own app bar remains, but leading and overflow navigate
  /// within the shell rather than assuming a separate pushed chat route.
  final bool embeddedInShell;
  final VoidCallback? onOpenAgents;
  final VoidCallback? onOpenActivity;
  final VoidCallback? onOpenProfile;

  @override
  ConsumerState<AiChatScreen> createState() => _AiChatScreenState();
}

class _AiChatScreenState extends ConsumerState<AiChatScreen> with WidgetsBindingObserver {
  final _input = TextEditingController();
  final _composerFocus = FocusNode();
  final _scroll = ScrollController();
  final _imagePicker = ImagePicker();
  bool _showEmoji = false;
  bool _showCafeSuggestions = true;
  bool _showStudyHint = true;
  String _quickReaction = '❤️';
  bool _hasText = false;
  List<ChatAttachment> _pendingAttachments = const [];
  AiChatMessage? _replyingTo;
  AiChatMessage? _editingMessage;
  bool _allowEditExit = false;
  String? _draftBeforeEdit;
  bool _showSearch = false;
  final _search = TextEditingController();
  int _searchIndex = 0;
  bool _nearBottom = true;
  int _newBelow = 0;
  bool _loadingOlder = false, _olderHistoryExhausted = false,
      _olderHistoryError = false;
  Timer? _scrollPersistTimer;
  Timer? _walletRefreshTimer;
  final Set<String> _selectedMessageIds = {};
  final Map<String, GlobalKey> _messageKeys = {};
  bool _initialEntryHandled = false;
  String? _cafeCategory;
  LiveVoiceSession? _inlineVoiceSession;
  LiveVoiceSession? _modalVoiceSession;
  ProviderSubscription<SessionState>? _voiceAccountSubscription;
  int _voiceAuthorizationEpoch = 0;
  StreamSubscription<LiveVoiceState>? _inlineVoiceStateSub;
  MbCallAdmission? _inlineMbAdmission;
  MbCallFlow? _inlineMbFlow;
  bool _mbCallStarting = false;
  AgentShellTransport? _inlineShellTransport;
  String? _inlineVoiceCharacterId;
  LiveVoiceState _inlineVoiceState = LiveVoiceState.idle;
  bool _inlineVoiceClosing = false;
  bool _voiceNoteSending = false;
  VoiceNoteRecorder? _inlineRecorder;
  AudioPlayer? _inlinePreviewPlayer;
  bool _inlinePreviewPlaying = false;
  double _inlinePreviewProgress = 0;
  bool _voiceHoldActive = false, _recordingLocked = false;
  final _voiceSequence = VoiceNoteSequence();
  final Map<String, ChatAttachment> _sequenceNotes = {};
  String? _continuationNoteId;
  int? _continuationGeneration;

  bool get _canContinueVoiceNotes => mounted &&
      ref.read(sessionProvider) is SessionSignedIn &&
      ref.read(voiceReplyAutoplayProvider).asData?.value == true &&
      _inlineVoiceSession == null && _modalVoiceSession == null &&
      !LiveCallForeground.active && ModalRoute.of(context)?.isCurrent != false &&
      TickerMode.of(context);

  int? _beginVoiceSequence(String id) {
    _sequenceNotes.clear();
    final messages = [...(ref.read(aiChatProvider).threads[widget.characterId]?.messages ?? <AiChatMessage>[])]
      ..sort((a, b) => a.createdAt.compareTo(b.createdAt));
    for (final message in messages) {
      if (message.deleted || !{'sent', 'delivered'}.contains(message.deliveryStatus)) continue;
      for (var i = 0; i < message.allAttachments.length; i++) {
        final attachment = message.allAttachments[i];
        if (!{'voice', 'audio'}.contains(attachment.kind) || attachment.path.isEmpty ||
            attachment.path.startsWith('masanawa-remote|')) continue;
        _sequenceNotes['${message.id}:$i'] = attachment;
      }
    }
    if (_continuationNoteId != id && mounted) setState(() => _continuationNoteId = null);
    return _voiceSequence.start(id, _sequenceNotes.keys, enabled: _canContinueVoiceNotes);
  }

  void _stopVoiceSequence() => _voiceSequence.stop();

  bool _sequenceNoteStillAvailable(String id) {
    final snapshot = _sequenceNotes[id];
    if (snapshot == null) return false;
    for (final message in ref.read(aiChatProvider).threads[widget.characterId]?.messages ?? <AiChatMessage>[]) {
      if (message.deleted || !{'sent', 'delivered'}.contains(message.deliveryStatus)) continue;
      for (var i = 0; i < message.allAttachments.length; i++) {
        if ('${message.id}:$i' == id && message.allAttachments[i].path == snapshot.path &&
            {'voice', 'audio'}.contains(message.allAttachments[i].kind)) return true;
      }
    }
    return false;
  }

  void _voiceNoteCompleted(String id, int? generation) {
    if (!_voiceSequence.isCurrent(id, generation)) return;
    var next = _voiceSequence.complete(id, generation, allowed: _canContinueVoiceNotes);
    while (next != null && !_sequenceNoteStillAvailable(next)) {
      next = _voiceSequence.complete(next, generation, allowed: _canContinueVoiceNotes);
    }
    if (!mounted) return;
    setState(() {
      _continuationNoteId = next;
      _continuationGeneration = generation;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!TickerMode.of(context) || ModalRoute.of(context)?.isCurrent == false) {
      _stopVoiceSequence();
      _pendingVoiceAutoplay = null;
      unawaited(_activeVoiceBubble?._pauseFromAnotherBubble() ?? Future<void>.value());
      unawaited(_pauseInlinePreviewFromAnotherPlayer());
    }
  }

  @override
  void didUpdateWidget(covariant AiChatScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.characterId != widget.characterId) {
      _stopVoiceSequence();
      _continuationNoteId = null;
      _sequenceNotes.clear();
      _pendingVoiceAutoplay = null;
      unawaited(_activeVoiceBubble?._pauseFromAnotherBubble() ?? Future<void>.value());
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state != AppLifecycleState.resumed) {
      _stopVoiceSequence();
      _pendingVoiceAutoplay = null;
      unawaited(_activeVoiceBubble?._pauseFromAnotherBubble() ?? Future<void>.value());
      unawaited(_pauseInlinePreviewFromAnotherPlayer());
    }
  }


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _voiceAuthorizationEpoch =
        ref.read(sessionProvider.notifier).authorizationEpoch;
    _voiceAccountSubscription = ref.listenManual(sessionProvider, (
      previous,
      next,
    ) {
      final previousId = previous is SessionSignedIn ? previous.user.id : null;
      final nextId = next is SessionSignedIn ? next.user.id : null;
      final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
      final replaced = previousId != nextId || epoch != _voiceAuthorizationEpoch;
      _voiceAuthorizationEpoch = epoch;
      if (replaced) {
        _stopVoiceSequence();
        unawaited(_activeVoiceBubble?._pauseFromAnotherBubble() ?? Future<void>.value());
        _inlineVoiceSession?.endReason=CallEndReason.accountChanged;
        _modalVoiceSession?.endReason=CallEndReason.accountChanged;
        _pendingVoiceAutoplay = null;
        _quickReaction = '❤️';
        // A same-ID logout/relogin is still a new microphone authorization.
        // Release the old recorder and reconcile any live admission once.
        unawaited(_cancelInlineRecording());
        unawaited(_disposeInlineVoice());
        unawaited(_modalVoiceSession?.close() ?? Future<void>.value());
      }
    });
    _input.addListener(() {
      final hasText = _input.text.isNotEmpty;
      if (hasText != _hasText) setState(() => _hasText = hasText);
      if (_editingMessage == null) {
        ref.read(aiChatProvider.notifier).setDraft(widget.characterId, _input.text);
      }
    });
    _scroll.addListener(() {
      if (!_scroll.hasClients) return;
      final distance = _scroll.position.maxScrollExtent - _scroll.offset;
      final near = distance < 120;
      if (near != _nearBottom && mounted) {
        setState(() {
          _nearBottom = near;
          if (near) _newBelow = 0;
        });
      }
      _scrollPersistTimer?.cancel();
      _scrollPersistTimer = Timer(const Duration(milliseconds: 280), () {
        if (!mounted || !_scroll.hasClients) return;
        ref
            .read(aiChatProvider.notifier)
            .setScrollOffset(widget.characterId, _scroll.offset);
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final controller = ref.read(aiChatProvider.notifier);
      controller.openThread(widget.characterId);
      final thread = controller.threadOf(widget.characterId);
      final draft = thread.draft;
      if (draft.isNotEmpty && _input.text.isEmpty) {
        _input.text = draft;
        _input.selection = TextSelection.collapsed(offset: draft.length);
      }
      if (mounted) {
        setState(() {
          _pendingAttachments = [
            for (final item in thread.draftAttachments)
              if (File(item.path).existsSync()) item,
          ];
        });
      }
      final offset = thread.scrollOffset;
      if (offset > 0) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!_scroll.hasClients) return;
          _scroll.jumpTo(
            offset.clamp(
              _scroll.position.minScrollExtent,
              _scroll.position.maxScrollExtent,
            ).toDouble(),
          );
        });
      }
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _stopVoiceSequence();
    _voiceAccountSubscription?.close();
    _pendingVoiceAutoplay = null;
    unawaited(_modalVoiceSession?.close() ?? Future<void>.value());
    _scrollPersistTimer?.cancel();
    _walletRefreshTimer?.cancel();
    _inlineVoiceStateSub?.cancel();
    unawaited(_disposeInlineVoice());
    _inlineRecorder?.removeListener(_onInlineRecorderChanged);
    if (identical(_activeComposerPreviewScreen, this)) {
      _activeComposerPreviewScreen = null;
    }
    unawaited(_inlineRecorder?.close() ?? Future<void>.value());
    unawaited(_inlinePreviewPlayer?.dispose() ?? Future<void>.value());
    _input.dispose();
    _composerFocus.dispose();
    _search.dispose();
    _scroll.dispose();
    try {
      ref.read(aiChatProvider.notifier).closeThread();
    } catch (_) {}
    super.dispose();
  }

  void _scrollToBottom() {
    if (!_scroll.hasClients) return;
    _scroll.animateTo(
      _scroll.position.maxScrollExtent,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
    );
  }

  Future<void> _loadEarlierMessages() async {
    if (_loadingOlder) return;
    final previousExtent = _scroll.hasClients ? _scroll.position.maxScrollExtent : 0.0;
    final previousOffset = _scroll.hasClients ? _scroll.offset : 0.0;
    setState(() { _loadingOlder = true; _olderHistoryError = false; });
    final count = await ref.read(aiChatProvider.notifier)
        .loadOlderHistory(widget.characterId);
    if (!mounted) return;
    setState(() {
      _loadingOlder = false;
      _olderHistoryError = count == null;
      _olderHistoryExhausted = count != null && count < 200;
    });
    if (count != null && count > 0) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!_scroll.hasClients) return;
        final delta = _scroll.position.maxScrollExtent - previousExtent;
        _scroll.jumpTo((previousOffset + delta)
            .clamp(_scroll.position.minScrollExtent, _scroll.position.maxScrollExtent)
            .toDouble());
      });
    }
  }

  void _jumpToMessage(String? messageId) {
    final target = messageId == null ? null : _messageKeys[messageId]?.currentContext;
    if (target != null) {
      Scrollable.ensureVisible(target, duration: const Duration(milliseconds: 260),
          curve: Curves.easeOut, alignment: .35);
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Original message not loaded. Load earlier messages to find it.')));
  }

  void _sendText() {
    if (ref.read(aiChatProvider).sendingIn.contains(widget.characterId)) return;
    final text = _input.text;
    final editing = _editingMessage;
    if (editing != null) {
      if (text.trim().isEmpty || editing.deleted || !editing.isUser) return;
      ref.read(aiChatProvider.notifier).editMessage(
        widget.characterId, editing.id, text.trim());
      final previousDraft = _draftBeforeEdit ?? '';
      setState(() {
        _editingMessage = null;
        _draftBeforeEdit = null;
        _showEmoji = false;
      });
      _input.text = previousDraft;
      return;
    }
    final attachments = _pendingAttachments;
    if (text.trim().isEmpty && attachments.isEmpty) return;
    final reply = _replyingTo;
    if (widget.entryMode == AiChatEntryMode.study &&
        attachments.isEmpty &&
        text.trim().isNotEmpty) {
      final visible = text.trim();
      _input.clear();
      ref.read(aiChatProvider.notifier).setDraft(widget.characterId, '');
      setState(() {
        _showEmoji = false;
        _replyingTo = null;
      });
      unawaited(
        ref.read(aiChatProvider.notifier).sendText(
              widget.characterId,
              visible,
              replyToId: reply?.id,
              replyPreview: reply?.text,
              transportPrompt: '<masanawa_study>$visible',
            ),
      );
      return;
    }

    _commitTextSend(text, attachments, reply);
  }

  void _sendCafeSuggestion(CafeSuggestion suggestion) {
    if (ref.read(aiChatProvider).sendingIn.contains(widget.characterId)) return;
    setState(() => _cafeCategory = suggestion.key);
    unawaited(
      ref.read(aiChatProvider.notifier).sendText(
            widget.characterId,
            suggestion.message,
          ),
    );
  }

  void _commitTextSend(
    String text,
    List<ChatAttachment> attachments,
    AiChatMessage? reply,
  ) {
    _input.clear();
    final ctl = ref.read(aiChatProvider.notifier);
    ctl.setDraft(widget.characterId, '');
    ctl.setDraftAttachments(widget.characterId, const []);
    setState(() {
      _showEmoji = false;
      _replyingTo = null;
      _pendingAttachments = const [];
    });
    if (attachments.isNotEmpty) {
      unawaited(
        ctl.sendAttachments(
          widget.characterId,
          attachments,
          caption: text,
          replyToId: reply?.id,
          replyPreview: reply == null
              ? null
              : (reply.text.isNotEmpty
                  ? reply.text
                  : reply.allAttachments.isNotEmpty
                      ? reply.allAttachments.first.label
                      : 'Message'),
        ).catchError((Object error) {
          // Retention can fail when the OS revokes access to a picker file.
          // Restore the message and attachments instead of silently losing
          // the user's offline draft after tapping Send.
          if (!mounted) return;
          _input.text = text;
          ctl.setDraft(widget.characterId, text);
          ctl.setDraftAttachments(widget.characterId, attachments);
          setState(() => _pendingAttachments = attachments);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text(
              'Could not keep the selected files for sending. Choose the files again or retry.',
            )),
          );
        }),
      );
      return;
    }
    unawaited(
      ctl.sendText(
        widget.characterId,
        text,
        replyToId: reply?.id,
        replyPreview: reply == null
            ? null
            : (reply.text.isNotEmpty
                ? reply.text
                : reply.allAttachments.isNotEmpty
                    ? reply.allAttachments.first.label
                    : 'Message'),
      ),
    );
  }
  /// Device-local review. No upload or AI turn starts until Send.
  Future<void> _reviewPendingAttachments() async {
    if (_pendingAttachments.isEmpty) return;
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) return;
    final ownerId = session.user.id;
    final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    final draft = [..._pendingAttachments];
    var caption = _input.text;
    final result = await showModalBottomSheet<
        ({List<ChatAttachment> files, String caption})>(
      context: context, isScrollControlled: true, showDragHandle: true,
      builder: (sheetContext) => StatefulBuilder(
        builder: (sheetContext, refresh) => SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16,
              MediaQuery.viewInsetsOf(sheetContext).bottom + 16),
            child: SizedBox(
              height: MediaQuery.sizeOf(sheetContext).height * .65,
              child: Column(children: [
                ListTile(contentPadding: EdgeInsets.zero,
                  title: const Text('Review attachments'),
                  subtitle: const Text('8 files max · 8 MB each · 12 MB total'),
                  trailing: IconButton(tooltip: 'Close review',
                    icon: const Icon(Icons.close_rounded),
                    onPressed: () => Navigator.of(sheetContext).pop())),
                Expanded(child: ReorderableListView.builder(
                  buildDefaultDragHandles: false,
                  itemCount: draft.length,
                  onReorder: (from, to) => refresh(() {
                    if (to > from) to--;
                    final item = draft.removeAt(from);
                    draft.insert(to, item);
                  }),
                  itemBuilder: (context, index) {
                    final item = draft[index];
                    return ListTile(key: ObjectKey(item),
                      leading: item.kind == 'image'
                          ? SizedBox(width: 48, height: 48,
                              child: Image.file(File(item.path), fit: BoxFit.cover,
                                errorBuilder: (_, _, _) =>
                                    const Icon(Icons.broken_image_outlined)))
                          : const Icon(Icons.audio_file_outlined),
                      title: Text(item.name ?? item.label,
                        maxLines: 1, overflow: TextOverflow.ellipsis),
                      subtitle: Text(item.sizeBytes == null ? item.kind
                          : '${(item.sizeBytes! / 1024).ceil()} KB'),
                      trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                        IconButton(tooltip: 'Remove attachment',
                          icon: const Icon(Icons.close_rounded),
                          onPressed: () => refresh(() => draft.removeAt(index))),
                        ReorderableDragStartListener(index: index,
                          child: const Icon(Icons.drag_handle_rounded)),
                      ]));
                  })),
                TextFormField(initialValue: caption, maxLines: 2,
                  decoration: const InputDecoration(labelText: 'Caption',
                    hintText: 'Add a caption'),
                  onChanged: (value) => caption = value),
                const SizedBox(height: 10),
                SizedBox(width: double.infinity, child: FilledButton(
                  onPressed: () => Navigator.of(sheetContext).pop((
                    files: List<ChatAttachment>.unmodifiable(draft),
                    caption: caption)),
                  child: const Text('Apply review'))),
              ]),
            ),
          ),
        ),
      ),
    );
    if (result == null || !mounted) return;
    final active = ref.read(sessionProvider);
    if (active is! SessionSignedIn || active.user.id != ownerId ||
        ref.read(sessionProvider.notifier).authorizationEpoch != epoch) return;
    setState(() {
      _pendingAttachments = result.files;
      _showEmoji = false;
    });
    ref.read(aiChatProvider.notifier).setDraftAttachments(
      widget.characterId, result.files);
    _input.text = result.caption;
  }

  void _stageAttachments(List<ChatAttachment> attachments) {
    if (attachments.isEmpty || !mounted) return;
    final selection = selectChatDraftAttachments(
      _pendingAttachments,
      attachments,
    );
    setState(() {
      _pendingAttachments = selection.attachments;
      _showEmoji = false;
    });
    ref
        .read(aiChatProvider.notifier)
        .setDraftAttachments(widget.characterId, selection.attachments);
    if (selection.rejectedCount > 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Some files were not added. Maximum 8 files, 8 MB each and 12 MB combined.',
          ),
        ),
      );
    }
  }

  void _removePendingAttachment(int index) {
    if (index < 0 || index >= _pendingAttachments.length) return;
    final next = [..._pendingAttachments]..removeAt(index);
    setState(() => _pendingAttachments = next);
    ref
        .read(aiChatProvider.notifier)
        .setDraftAttachments(widget.characterId, next);
  }

  void _pickerFailed(String what) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Could not open $what. Check file access and try again.')),
    );
  }

  Future<bool> _ensurePermission(
    AppPermission permission,
    String label,
  ) async {
    final result = await AppPermissions.request(permission);
    if (result.granted) return true;
    if (!mounted) return false;
    if (permission == AppPermission.microphone) {
      await showDialog<void>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          icon: const Icon(Icons.mic_off_rounded),
          title: const Text('Microphone unavailable', textAlign: TextAlign.center),
          content: Text(result.permanentlyDenied
              ? 'Microphone access is disabled. Enable it in your phone settings to make a call.'
              : 'Allow microphone access to make a voice call.',
            textAlign: TextAlign.center),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            TextButton(onPressed: () => Navigator.pop(dialogContext),
              child: const Text('Close')),
            if (result.permanentlyDenied) FilledButton(
              onPressed: () {
                Navigator.pop(dialogContext);
                AppPermissions.openSettings();
              }, child: const Text('Microphone settings')),
          ],
        ),
      );
      return false;
    }
    final messenger = ScaffoldMessenger.of(context);
    messenger.showSnackBar(
      SnackBar(
        content: Text(
          result.permanentlyDenied
              ? '$label permission is disabled in system settings.'
              : '$label permission is needed for this action.',
        ),
        action: result.permanentlyDenied
            ? SnackBarAction(
                label: 'Settings',
                onPressed: AppPermissions.openSettings,
              )
            : null,
      ),
    );
    return false;
  }

  void _onInlineRecorderChanged() {
    if (mounted) setState(() {});
  }

  Future<void> _startInlineRecording() async {
    if (_inlineRecorder != null || !mounted) return;
    if (_inlineVoiceSession != null || _modalVoiceSession != null || LiveCallForeground.active) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('End the live call before recording a voice note.')),
      );
      return;
    }
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn || session.user.id.isEmpty) return;
    final accountId = session.user.id;
    final authorizationEpoch =
        ref.read(sessionProvider.notifier).authorizationEpoch;
    FocusScope.of(context).unfocus();
    await _activeVoiceBubble?._pauseFromAnotherBubble();
    await _activeComposerPreviewScreen?._pauseInlinePreviewFromAnotherPlayer();
    if (!mounted || ref.read(sessionProvider.notifier).authorizationEpoch !=
        authorizationEpoch) return;

    bool sameAccount() {
      if (!mounted) return false;
      final active = ref.read(sessionProvider);
      return active is SessionSignedIn && active.user.id == accountId &&
          ref.read(sessionProvider.notifier).authorizationEpoch == authorizationEpoch;
    }

    final recorder = ref.read(voiceNoteRecorderFactoryProvider)();
    _recordingLocked = false;
    _inlineRecorder = recorder;
    recorder.addListener(_onInlineRecorderChanged);
    HapticFeedback.mediumImpact();
    setState(() {});
    await recorder.start(isOwnerCurrent: sameAccount);
    // A native recorder may fail asynchronously after the mic tap. Clear its
    // failed instance so the next tap can retry and explain the real reason.
    if (identical(_inlineRecorder, recorder) &&
        recorder.state == VoiceNoteState.failed) {
      final message = recorder.error ?? 'Microphone recording could not start. Try again.';
      await _cancelInlineRecording();
      if (sameAccount()) await _showVoiceNoteFailure(message);
    }
  }

  Future<void> _cancelInlineRecording() async {
    final recorder = _inlineRecorder;
    if (recorder == null) return;
    recorder.removeListener(_onInlineRecorderChanged);
    _inlineRecorder = null;
    _voiceHoldActive = false; _recordingLocked = false;
    try {
      await _inlinePreviewPlayer?.stop();
      await _inlinePreviewPlayer?.dispose();
    } catch (_) {}
    _inlinePreviewPlayer = null;
    if (identical(_activeComposerPreviewScreen, this)) {
      _activeComposerPreviewScreen = null;
    }
    _inlinePreviewPlaying = false;
    _inlinePreviewProgress = 0;
    if(mounted)setState(() {});
    await recorder.cancel();
    await recorder.close();
  }

  Future<void> _stopInlineRecordingToPreview() async {
    final recorder = _inlineRecorder;
    if (recorder == null) return;
    HapticFeedback.lightImpact();
    if(mounted)setState(() { _voiceHoldActive=false; _recordingLocked=false; });
    await recorder.stop();
  }

  Future<void> _rerecordInline() async {
    await _cancelInlineRecording();
    if(mounted)await _startInlineRecording();
  }

  Future<AudioPlayer?> _ensureInlinePreviewPlayer() async {
    final recorder = _inlineRecorder;
    final path = recorder?.note?.path;
    if (path == null) return null;
    if (_inlinePreviewPlayer == null) {
      final player = AudioPlayer();
      _inlinePreviewPlayer = player;
      player.positionStream.listen((position) {
        if (!mounted || !identical(_inlinePreviewPlayer, player)) return;
        final durationMs = recorder!.note?.durationMs ?? 0;
        if (durationMs < 1) return;
        final next = (position.inMilliseconds / durationMs).clamp(0.0, 1.0).toDouble();
        if ((next - _inlinePreviewProgress).abs() >= .015) {
          setState(() => _inlinePreviewProgress = next);
        }
      });
      player.playerStateStream.listen((state) {
        if (!mounted) return;
        if (state.processingState == ProcessingState.completed && _inlinePreviewPlaying) {
          setState(() => _inlinePreviewPlaying = false);
          if (identical(_activeComposerPreviewScreen, this)) {
            _activeComposerPreviewScreen = null;
          }
          unawaited(player.pause().then((_) => player.seek(Duration.zero)));
        }
      });
      await player.setFilePath(path);
    }
    return _inlinePreviewPlayer;
  }

  Future<void> _seekInlinePreview(double fraction) async {
    final recorder = _inlineRecorder;
    if (recorder?.state != VoiceNoteState.ready) return;
    final duration = recorder!.note?.durationMs ?? 0;
    if (duration <= 0) return;
    final player = await _ensureInlinePreviewPlayer();
    if (!mounted || !identical(recorder, _inlineRecorder) || player == null) return;
    final target = fraction.clamp(0.0, 1.0).toDouble();
    setState(() => _inlinePreviewProgress = target);
    await player.seek(Duration(milliseconds: (duration * target).round()));
  }

  Future<void> _toggleInlinePreview() async {
    final player = await _ensureInlinePreviewPlayer();
    if (player == null || !mounted) return;
    if (_inlinePreviewPlaying) {
      await _pauseInlinePreviewFromAnotherPlayer();
    } else {
      final other = _activeComposerPreviewScreen;
      if (other != null && !identical(other, this)) {
        await other._pauseInlinePreviewFromAnotherPlayer();
      }
      await _activeVoiceBubble?._pauseFromAnotherBubble();
      if (!mounted || !identical(_inlinePreviewPlayer, player)) return;
      _activeComposerPreviewScreen = this;
      if (mounted) setState(() => _inlinePreviewPlaying = true);
      try { await player.play(); } catch (_) {
        await _pauseInlinePreviewFromAnotherPlayer();
        if (mounted) ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Voice preview could not play.')));
      }
    }
  }

  Future<void> _pauseInlinePreviewFromAnotherPlayer() async {
    if (identical(_activeComposerPreviewScreen, this)) {
      _activeComposerPreviewScreen = null;
    }
    if (!_inlinePreviewPlaying) return;
    if (mounted) setState(() => _inlinePreviewPlaying = false);
    try { await _inlinePreviewPlayer?.pause(); } catch (_) {}
  }

  Future<void> _sendInlineVoiceNote() async {
    if (_voiceNoteSending) return;
    final recorder = _inlineRecorder;
    if (recorder == null) return;
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn || session.user.id.isEmpty) {
      await _cancelInlineRecording();
      return;
    }
    final accountId = session.user.id;
    final authorizationEpoch =
        ref.read(sessionProvider.notifier).authorizationEpoch;
    bool sameAccount() {
      if (!mounted) return false;
      final active = ref.read(sessionProvider);
      return active is SessionSignedIn && active.user.id == accountId &&
          ref.read(sessionProvider.notifier).authorizationEpoch == authorizationEpoch;
    }
    if (!sameAccount() ||
        ref.read(aiChatProvider).sendingIn.contains(widget.characterId)) {
      return;
    }

    setState(() => _voiceNoteSending = true);
    try {
      HapticFeedback.mediumImpact();
      ChatAttachment? note;
      if (recorder.state == VoiceNoteState.recording ||
          recorder.state == VoiceNoteState.paused) {
        note = await recorder.stop();
      } else if (recorder.state == VoiceNoteState.ready) {
        note = recorder.note;
      }
      if (note == null || !sameAccount()) {
        // Failed stop (codec, empty file, or interrupted mic) must not silently
        // discard the recording when the user pressed Send.
        final failure = recorder.error;
        await _cancelInlineRecording();
        if (sameAccount() && failure != null && mounted) {
          await _showVoiceNoteFailure(failure);
        }
        return;
      }

      Future<void> releaseAcceptedRecorder() async {
        if (!identical(_inlineRecorder, recorder)) return;
        recorder.retain();
        recorder.removeListener(_onInlineRecorderChanged);
        _inlineRecorder = null;
        await _inlinePreviewPlayer?.stop();
        await _inlinePreviewPlayer?.dispose();
        _inlinePreviewPlayer = null;
        _inlinePreviewPlaying = false;
        _inlinePreviewProgress = 0;
        if (mounted) setState(() {});
        await recorder.close();
      }
      try {
        await ref.read(aiChatProvider.notifier).sendAttachment(
          widget.characterId, note, onAccepted: releaseAcceptedRecorder,
        );
      } catch (error) {
        if (!sameAccount()) { await _cancelInlineRecording(); return; }
        await _showVoiceNoteFailure(AgentFeedback.fromError(error).message);
      }
    } finally {
      _voiceNoteSending = false;
      if (mounted) setState(() {});
    }
  }

  void _openMasanaProfile(AgentDirectoryEntry agent) {
    _stopVoiceSequence();
    unawaited(_activeVoiceBubble?._pauseFromAnotherBubble() ?? Future<void>.value());
    if (widget.onOpenProfile != null) { widget.onOpenProfile!(); return; }
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (_) => MasanaProfileScreen(agent: agent),
    ));
  }

  Future<void> _prepareCallAudio() async {
    _pendingVoiceAutoplay = null;
    _stopVoiceSequence();
    await _cancelInlineRecording();
    await _activeVoiceBubble?._pauseFromAnotherBubble();
    await LivePcmAudio.stop();
  }

  // ---- Attachments ---------------------------------------------------------

  // Masana conversations support only text, photographs and voice/audio.
  // Historic attachment rendering remains read-only for existing records.
  void _openAttachSheet() {
    FocusScope.of(context).unfocus();
    final u = context.masanawa;
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      backgroundColor: u.surfaceCard,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
      ),
      builder: (sheetContext) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 28),
          child: Wrap(
            spacing: 12,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              _AttachOption(
                icon: Icons.camera_alt_rounded,
                gradient: const LinearGradient(
                  colors: [MasanawaFeatureColors.instagramPink, MasanawaFeatureColors.instagramRed],
                ),
                label: 'Camera',
                onTap: () {
                  Navigator.of(sheetContext).pop();
                  _pickImage(ImageSource.camera);
                },
              ),
              _AttachOption(
                icon: Icons.photo_library_rounded,
                gradient: const LinearGradient(
                  colors: [MasanawaFeatureColors.instagramViolet, MasanawaFeatureColors.instagramBlue],
                ),
                label: 'Gallery',
                onTap: () {
                  Navigator.of(sheetContext).pop();
                  _pickMultipleImages();
                },
              ),
              _AttachOption(
                icon: Icons.headphones_rounded,
                gradient: const LinearGradient(
                  colors: [MasanawaFeatureColors.warmCoral, MasanawaFeatureColors.warmPeach],
                ),
                label: 'Audio',
                onTap: () {
                  Navigator.of(sheetContext).pop();
                  _pickAudio();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickAudio() async {
    try {
      final files = await FilePicker.pickFiles(type: FileType.audio);
      if (files.isEmpty) return;
      final file = files.first;
      final path = file.path;
      if (path == null || path.isEmpty) return;
      final size = await file.length() ?? 0;
      if (mounted) {
        _stageAttachments([
          ChatAttachment(
            kind: 'audio',
            path: path,
            name: file.name,
            sizeBytes: size,
          ),
        ]);
      }
    } catch (_) {
      if (mounted) _pickerFailed('Audio picker');
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    if (source == ImageSource.camera &&
        !await _ensurePermission(AppPermission.camera, 'Camera')) {
      return;
    }
    try {
      final picked = await _imagePicker.pickImage(
        source: source,
      );
      if (picked == null) return;
      final size = await File(picked.path).length();
      if (!mounted) return;
      _stageAttachments([
        ChatAttachment(
          kind: 'image',
          path: picked.path,
          name: picked.name,
          sizeBytes: size,
        ),
      ]);
    } catch (_) {
      if (mounted) _pickerFailed('Photos');
    }
  }

  Future<void> _pickMultipleImages() async {
    // Native gallery handles Android's limited-media permission flow.
    // Keep the existing server-authorized 8-file/8MB/12MB draft policy.
    final session = ref.read(sessionProvider);
    final ownerId = session is SessionSignedIn ? session.user.id : null;
    if (ownerId == null) return;
    try {
      final selected = await AssetPicker.pickAssets(
        context,
        pickerConfig: const AssetPickerConfig(
          maxAssets: 8,
          requestType: RequestType.image,
        ),
      );
      if (selected == null || selected.isEmpty || !mounted) return;
      var active = ref.read(sessionProvider);
      if (active is! SessionSignedIn || active.user.id != ownerId) return;
      final attachments = <ChatAttachment>[];
      for (var index=0;index<selected.length && index<8;index++) {
        final asset=selected[index];
        final original=await asset.file;
        if(original==null||!await original.exists())continue;
        File file=original;
        var size=await file.length();
        if(size==0)continue;
        var name=asset.title??'Photo';
        // The old gallery picker resized 1600px photos at quality 85.
        // Restore that low-data behavior after switching gallery UIs, while
        // keeping non-photo files and the source gallery entirely untouched.
        final jpeg = original.path.toLowerCase().endsWith('.jpg') ||
            original.path.toLowerCase().endsWith('.jpeg');
        if(size>1024*1024 && jpeg) {
          try {
            final temp=await getTemporaryDirectory();
            final target='${temp.path}/masanawa-photo-${DateTime.now().microsecondsSinceEpoch}-$index.jpg';
            final compressed=await FlutterImageCompress.compressAndGetFile(
              original.path,target,minWidth:1600,minHeight:1600,
              quality:80,format:CompressFormat.jpeg,keepExif:false);
            if(compressed!=null){
              final result=File(compressed.path);
              final resultSize=await result.length();
              if(resultSize>0 && resultSize<size){
                file=result;size=resultSize;
                name='Photo-${index+1}.jpg';
              }else{
                await result.delete().catchError((_)=>result);
              }
            }
          }catch(_){
            // Compression is an optimization; preserve usable original media.
          }
        }
        if(size>8*1024*1024)continue;
        attachments.add(ChatAttachment(
          kind:'image',path:file.path,name:name,sizeBytes:size));
      }
      if (!mounted) return;
      final currentSession = ref.read(sessionProvider);
      if (currentSession is! SessionSignedIn || currentSession.user.id != ownerId) return;
      _stageAttachments(attachments);
      if (attachments.length < selected.length) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Some photos exceeded 8 MB or could not be opened.'),
        ));
      }
    } catch (_) {
      if (mounted) _pickerFailed('Photos');
    }
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final directory = ref.watch(agentDirectoryProvider);
    final agent = directory.find(widget.characterId);
    final chat = ref.watch(aiChatProvider);
    final thread = chat.threads[widget.characterId];
    final shellConfig = chat.shellConfigs[widget.characterId];
    final updateRequired = shellConfig?.requiresUpdate() ?? false;
    final liveVoiceEnabled =
        shellConfig?.feature('liveVoice', fallback: true) ?? true;
    final allMessages = thread?.messages ?? const <AiChatMessage>[];
    final query = _search.text.trim().toLowerCase();
    // Old clients stored the editorial greeting as an AI bubble. A profile
    // introduction is disclosure, never an authored conversation turn.
    final first = allMessages.isEmpty ? null : allMessages.first;
    final messages = first != null && !first.isUser &&
            first.parts.isEmpty && first.allAttachments.isEmpty &&
            first.text.trim() == (agent?.greeting?.trim() ?? '')
        ? allMessages.skip(1).toList(growable: false)
        : allMessages;
    final showLoadOlder = !_olderHistoryExhausted &&
        messages.where((m) => m.requestId != null).length >= 180;
    final searchMatches = query.isEmpty
        ? const <AiChatMessage>[]
        : allMessages
            .where((m) => !m.deleted && m.text.toLowerCase().contains(query))
            .toList();
    if (_searchIndex >= searchMatches.length && searchMatches.isNotEmpty) {
      _searchIndex = searchMatches.length - 1;
    }
    final highlightedSearchId = searchMatches.isEmpty
        ? null
        : searchMatches[_searchIndex].id;
    final sending = chat.sendingIn.contains(widget.characterId);
    final userMessages = allMessages.where((m) => m.isUser).toList();
    final lastUser = userMessages.isEmpty ? null : userMessages.last;

    if (agent == null) {
      return Scaffold(
        appBar: AppBar(title: Text(thread?.title ?? 'Unavailable Masana')),
        body: Column(children: [
          Padding(padding: const EdgeInsets.all(16),
            child: Column(children: [
              Text(directory.error ?? 'Masana profile unavailable. '
                'Saved history is visible; sending is disabled.',
                textAlign: TextAlign.center),
              TextButton.icon(
                onPressed: () => ref.read(agentDirectoryProvider.notifier).refresh(),
                icon: const Icon(Icons.refresh), label: const Text('Retry profile')),
            ])),
          Expanded(child: ListView(children: [
            for (final message in messages) ListTile(
              title: Text(message.deleted ? 'Hidden on this device' : message.text),
              subtitle: Text('${message.isUser ? 'You' : 'AI persona'} · '
                '${formatChatTime(message.createdAt)}')),
          ])),
        ]),
      );
    }

    ref.watch(voiceReplyAutoplayProvider);
    final hasVisibleAgentOutput = allMessages.any((m) =>
        !m.isUser && m.deliveryStatus == 'streaming' && m.text.trim().isNotEmpty);
    // A submitted voice note does not prove the agent is recording, and a
    // locally queued text is not proof that inference/typing has started.
    final workingLabel = !sending
        ? agent.presenceLabel
        : hasVisibleAgentOutput
        ? 'Replying…'
        : lastUser?.allAttachments.any((a) => a.kind == 'voice' || a.kind == 'audio') == true
        ? 'Processing voice note…'
        : lastUser?.allAttachments.isNotEmpty == true
        ? 'Uploading attachment…'
        : 'Waiting for reply…';

    if (!_initialEntryHandled) {
      _initialEntryHandled = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        final prompt = widget.initialPrompt?.trim();
        if (prompt != null && prompt.isNotEmpty) {
          unawaited(
            ref.read(aiChatProvider.notifier).sendText(
                  widget.characterId,
                  prompt,
                  transportPrompt: widget.entryMode == AiChatEntryMode.study
                      ? '<masanawa_study>$prompt'
                      : null,
                ),
          );
        }
        switch (widget.entryMode) {
          case AiChatEntryMode.chat:
          case AiChatEntryMode.teach:
            break;
          case AiChatEntryMode.study:
            break;
          case AiChatEntryMode.liveTalk:
            unawaited(_startInlineLiveVoice(agent));
            break;
          case AiChatEntryMode.liveVoice:
            unawaited(_openLiveVoice(agent));
            break;
          case AiChatEntryMode.cafe:
            break;
        }
      });
    }

    ref.listen(aiChatProvider, (prev, next) {
      // Only a fully finalized audio attachment may autoplay. Historical
      // messages and partial generation never trigger playback.
      final prior = prev?.threads[widget.characterId]?.messages ?? const <AiChatMessage>[];
      for (final message in next.threads[widget.characterId]?.messages ?? const <AiChatMessage>[]) {
        final wasGenerating = prior.any((m) => m.id == message.id && m.deliveryStatus == 'streaming');
        final audio = message.attachment;
        if (_voiceSequence.current == null && wasGenerating && message.deliveryStatus == 'delivered' && audio?.kind == 'voice' &&
            ref.read(voiceReplyAutoplayProvider).asData?.value == true &&
            _inlineVoiceSession == null && _modalVoiceSession == null && !LiveCallForeground.active) {
          _pendingVoiceAutoplay = audio!.path;
        }
      }
      final before = prev?.threads[widget.characterId]?.messages.length ?? 0;
      final after = next.threads[widget.characterId]?.messages.length ?? 0;
      if (after > before) {
        if (_nearBottom) {
          Future.delayed(const Duration(milliseconds: 100), _scrollToBottom);
        } else {
          setState(() => _newBelow += after - before);
        }
      } else if (prev?.sendingIn != next.sendingIn && _nearBottom) {
        Future.delayed(const Duration(milliseconds: 100), _scrollToBottom);
      }
    });

    return PopScope(
      canPop: _editingMessage == null || _allowEditExit,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop && _editingMessage != null) {
          unawaited(_confirmDiscardEditAndExit());
          return;
        }
        if (didPop) {
          _stopVoiceSequence();
          unawaited(_activeVoiceBubble?._pauseFromAnotherBubble() ?? Future<void>.value());
          _showEmoji = false;
        }
      },
      child: Scaffold(
        backgroundColor: u.chatBg,
        appBar: AppBar(
          backgroundColor: u.surfaceCard,
          foregroundColor: u.textPrimary,
          elevation: 0,
          leadingWidth: 40,
          titleSpacing: 0,
          leading: _showSearch
              ? IconButton(tooltip: 'Close search', icon: const Icon(Icons.arrow_back),
                  onPressed: () => setState(() { _showSearch=false; _search.clear(); }))
              : widget.embeddedInShell
              ? IconButton(
                  tooltip: 'New chat',
                  icon: const Icon(Icons.smart_toy_outlined),
                  onPressed:
                      widget.onOpenAgents ?? () => context.push('/masana'),
                )
              : IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => context.canPop()
                      ? context.pop()
                      : context.go('/home?tab=chats'),
                ),
          title: _selectedMessageIds.isNotEmpty
              ? Text('${_selectedMessageIds.length} selected')
              : _showSearch
              ? TextField(
                  controller: _search,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: ChatUiCopy.of(context, 'Search this chat'),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    filled: true,
                    fillColor: u.fieldSurface,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide.none),
                  ),
                  onChanged: (_) {
                    setState(() => _searchIndex = 0);
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _scrollToSearchMatch();
                    });
                  },
                )
              : Semantics(
            button: true, excludeSemantics: true,
            label: 'Open ${agent.displayName} AI profile',
            onTap: () => _openMasanaProfile(agent),
            child: InkWell(
            onTap: () => _openMasanaProfile(agent),
            child: ConstrainedBox(constraints: const BoxConstraints(minHeight: 48),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MasanaPortraitAvatar(agent: agent, size: 42),
                const SizedBox(width: 8),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        agent.displayName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: u.textPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '${ChatUiCopy.of(context, agent.publicOfficialSimulation ? 'AI simulation' : 'AI persona')} · $workingLabel',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: u.textMuted,
                          fontSize: 11.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
            ),
          ),
          actions: _showSearch ? const [] : [
            if (_selectedMessageIds.isNotEmpty) ...[
              IconButton(
                tooltip: 'Copy selected',
                icon: const Icon(Icons.copy_outlined),
                onPressed: () => _copySelected(allMessages),
              ),
              IconButton(
                tooltip: 'Delete selected',
                icon: const Icon(Icons.delete_outline),
                onPressed: () => _deleteSelected(),
              ),
              IconButton(
                tooltip: 'Clear selection',
                icon: const Icon(Icons.close),
                onPressed: () => setState(_selectedMessageIds.clear),
              ),
            ] else ...[
            if (MediaQuery.sizeOf(context).width >= 430)
              IconButton(
                tooltip: ChatUiCopy.of(context, 'Search this chat'),
                icon: const Icon(Icons.search),
                onPressed: () => setState(() { _showSearch = true; _searchIndex = 0; }),
              ),
            IconButton(
              tooltip: ChatUiCopy.of(context, 'Wallet'),
              icon: const Icon(Icons.account_balance_wallet_outlined),
              onPressed: () => context.push('/wallet'),
            ),
            IconButton(
              tooltip: ChatUiCopy.of(context, 'Call'),
              icon: const Icon(Icons.call_outlined),
              onPressed: updateRequired || !liveVoiceEnabled
                  ? null
                  : () => _openLiveVoice(agent),
            ),
            ],
            if (_selectedMessageIds.isEmpty) PopupMenuButton<String>(
              tooltip: ChatUiCopy.of(context, 'More'),
              onSelected: (value) async {
                final ctl = ref.read(aiChatProvider.notifier);
                if (value == 'voice-autoplay') {
                  try {
                    final enabled=ref.read(voiceReplyAutoplayProvider).asData?.value??false;
                    await ref.read(voiceReplyAutoplayProvider.notifier).setEnabled(!enabled);
                  } catch (_) {
                    if(context.mounted)ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Could not save automatic playback preference. Automatic speech is off.')));
                  }
                }
                if (!context.mounted) return;
                if (value == 'activity') widget.onOpenActivity?.call();
                if (value == 'wallet') context.push('/wallet');
                if (value == 'search') setState(() { _showSearch = true; _searchIndex = 0; });
                if (value == 'profile') _openMasanaProfile(agent);
                if (value == 'clear') _confirmClear(agent);
                if (value == 'new') await ctl.newContext(widget.characterId);
                if (value == 'pin') ctl.togglePin(widget.characterId);
                if (value == 'archive') ctl.toggleArchive(widget.characterId);
                if (value == 'rename') _renameConversation();
                if (value == 'block') await _blockAgent(agent);
                if (value == 'report') await _reportAgent(agent);
              },
              itemBuilder: (_) => [
                PopupMenuItem(value: 'search',
                  child: Text(ChatUiCopy.of(context, 'Search chat'))),
                PopupMenuItem(value: 'wallet',
                  child: Text(ChatUiCopy.of(context, 'Wallet'))),
                PopupMenuItem(value:'voice-autoplay',enabled:!ref.read(voiceReplyAutoplayProvider).isLoading,child:Text(ref.read(voiceReplyAutoplayProvider).asData?.value==true?'Turn off automatic speech':'Turn on automatic speech')),
                if (widget.embeddedInShell) ...const [
                  PopupMenuItem(value: 'activity', child: Text('Activity')),
                  PopupMenuItem(value: 'profile', child: Text('Profile')),
                  PopupMenuDivider(),
                ],
                const PopupMenuItem(value: 'new', child: Text('New context')),
                const PopupMenuItem(value: 'rename', child: Text('Rename chat')),
                const PopupMenuItem(value: 'pin', child: Text('Pin / unpin')),
                const PopupMenuItem(value: 'archive', child: Text('Archive / unarchive')),
                if (!agent.supportAgent) ...const [
                  PopupMenuDivider(),
                  PopupMenuItem(value: 'block', child: Text('Block')),
                  PopupMenuItem(value: 'report', child: Text('Report')),
                ],
                const PopupMenuDivider(),
                const PopupMenuItem(value: 'clear', child: Text('Clear chat')),
              ],
            ),
          ],
          bottom: _showSearch ? PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: SizedBox(height: 40, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(searchMatches.isEmpty ? 'No matches' : '${_searchIndex + 1}/${searchMatches.length}'),
              IconButton(tooltip:'Previous result',icon:const Icon(Icons.keyboard_arrow_up),onPressed:searchMatches.isEmpty?null:()=>_moveSearch(-1,searchMatches)),
              IconButton(tooltip:'Next result',icon:const Icon(Icons.keyboard_arrow_down),onPressed:searchMatches.isEmpty?null:()=>_moveSearch(1,searchMatches)),
            ])),
          ) : null,
        ),
        body: Column(
          children: [
            if (updateRequired)
              MaterialBanner(
                content: Text(
                  'This Masanawa service now requires app version '
                  '${shellConfig!.minimumAppVersion} or newer.',
                ),
                actions: const [SizedBox.shrink()],
              ),
            if (!chat.online)
              Semantics(
                liveRegion: true,
                child: Container(
                  width: double.infinity,
                  color: u.warning.withValues(alpha: .14),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 7,
                  ),
                  child: Text(
                    'Offline · messages will send when your connection returns',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: u.textPrimary, fontSize: 12),
                  ),
                ),
              ),
            if (widget.entryMode == AiChatEntryMode.cafe && _showCafeSuggestions)
              _CafeSuggestionBar(
                selectedKey: _cafeCategory,
                onTap: _sendCafeSuggestion,
                onDismiss: () => setState(() => _showCafeSuggestions = false),
              ),
            Expanded(
              child: CustomPaint(
                painter: _ChatTexturePainter(u.textMuted.withValues(alpha: .055)),
                child: SuperListView.builder(
                      controller: _scroll,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      itemCount: messages.length + 1 + (showLoadOlder ? 1 : 0) +
                          (sending &&
                                  !messages.any((m) =>
                                      !m.isUser &&
                                      m.deliveryStatus == 'streaming')
                              ? 1
                              : 0),
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return _PersonaChatDisclosure(
                            name: agent.displayName,
                            publicOfficial: agent.publicOfficialSimulation,
                          );
                        }
                        if (showLoadOlder && index == 1) {
                          return Center(child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: TextButton.icon(
                              onPressed: _loadingOlder ? null : _loadEarlierMessages,
                              icon: _loadingOlder ? const SizedBox(width: 18, height: 18,
                                  child: CircularProgressIndicator(strokeWidth: 2))
                                  : const Icon(Icons.history),
                              label: Text(_olderHistoryError ? 'Retry earlier messages'
                                  : 'Load earlier messages'))));
                        }
                        final messageIndex = index - 1 - (showLoadOlder ? 1 : 0);
                        if (messageIndex >= messages.length) {
                          return const _TypingBubble(waiting: true);
                        }
                        final message = messages[messageIndex];
                        if (!message.isUser && message.deliveryStatus == 'streaming' &&
                            message.text.trim().isEmpty && message.parts.isEmpty) {
                          return const _TypingBubble(waiting: true);
                        }
                        // Render streamed text as it arrives, not a spinner for
                        // the entire inference; the first delta is actual proof
                        // the agent has begun responding.
                        final failedParts = message.parts.where(
                          (p) =>
                              p.kind == AgentMessagePartKind.status &&
                              p.status == 'failed',
                        );
                        final failure = failedParts.isEmpty
                            ? null
                            : failedParts.first;
                        final previous = messageIndex > 0 ? messages[messageIndex - 1] : null;
                        final showDate = previous == null ||
                            !_sameDay(previous.createdAt, message.createdAt);
                        final grouped = previous != null && !showDate &&
                            previous.isUser == message.isUser &&
                            previous.parts.isEmpty && message.parts.isEmpty &&
                            previous.replyToId == null && message.replyToId == null &&
                            !previous.deleted && !message.deleted &&
                            message.createdAt.difference(previous.createdAt)
                                .inMinutes.abs() < 5;
                        final next = messageIndex + 1 < messages.length
                            ? messages[messageIndex + 1] : null;
                        final continuingGroup = next != null &&
                            next.isUser == message.isUser &&
                            !next.deleted && !message.deleted &&
                            next.parts.isEmpty && message.parts.isEmpty &&
                            next.replyToId == null && message.replyToId == null &&
                            _sameDay(next.createdAt, message.createdAt) &&
                            next.createdAt.difference(message.createdAt)
                                .inMinutes.abs() < 5;
                        final showMeta = !continuingGroup ||
                            message.editedAt != null ||
                            {'queued', 'failed', 'stopped', 'sending', 'uploading'}
                                .contains(message.deliveryStatus);
                        return _VoicePlaybackScope(
                          message: message,
                          onStart: _beginVoiceSequence,
                          onComplete: _voiceNoteCompleted,
                          onStop: _stopVoiceSequence,
                          child: Column(
                          children: [
                            if (showDate) _DateSeparator(date: message.createdAt),
                            KeyedSubtree(
                              key: _messageKeys.putIfAbsent(
                                message.id,
                                () => GlobalKey(),
                              ),
                              child: Dismissible(
                                key: ValueKey('swipe-reply-${message.id}'),
                                direction: DismissDirection.startToEnd,
                                confirmDismiss: (direction) async {
                                  HapticFeedback.lightImpact();
                                  setState(() => _replyingTo = message);
                                  return false;
                                },
                                background: Container(
                                  alignment: AlignmentDirectional.centerStart,
                                   padding: const EdgeInsetsDirectional.only(start: 14),
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: u.brand.withValues(alpha: 0.18),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.reply_rounded,
                                      color: u.brand,
                                      size: 19,
                                    ),
                                  ),
                                ),
                                child: _ChatBubble(
                                  message: message,
                                  grouped: grouped,
                                  showMeta: showMeta,
                                  agent: agent,
                                  selected: _selectedMessageIds.contains(message.id),
                                  highlighted: highlightedSearchId == message.id,
                                  searchQuery: query,
                                  onSelect: () => setState(() {
                                    if (!_selectedMessageIds.add(message.id)) {
                                      _selectedMessageIds.remove(message.id);
                                    }
                                  }),
                                  onReply: () => setState(() => _replyingTo = message),
                                  quickReaction: _quickReaction,
                                   onQuickReactionChosen: (emoji) => setState(() => _quickReaction = emoji),
                                   onReact: (emoji) => ref
                                      .read(aiChatProvider.notifier)
                                      .reactToMessage(widget.characterId, message.id,
                                        message.reaction == emoji ? null : emoji),
                                  onJumpToReply: () => _jumpToMessage(message.replyToId),
                                  onEdit: message.isUser
                                      ? () => _editMessage(message)
                                      : null,
                                  onDelete: () => _confirmDeleteMessages([message]),
                                  onCopy: () => Clipboard.setData(
                                    ClipboardData(text: message.text),
                                  ),
                                  onForward: () => _forwardMessage(message),
                                  onShare: () => _shareMessage(message),
                                  onSaveMedia: message.allAttachments.isEmpty
                                      ? null
                                      : () => _saveMessageMedia(message),
                                  onAgentAction: message.isUser
                                      ? null
                                      : (action) => _runAgentAction(message, action),
                                  onShellAction: message.isUser
                                      ? null
                                      : (action) => ref
                                          .read(aiChatProvider.notifier)
                                          .submitShellAction(widget.characterId, action),
                                  onRetry: failure == null || sending
                                      ? null
                                      : () async {
                                          if (failure.actionLabel == 'Add MB') {
                                            context.push('/wallet/add');
                                          } else if (failure.actionLabel == 'Sign in') {
                                            await ref
                                                .read(sessionProvider.notifier)
                                                .logout();
                                          } else if (failure.actionLabel ==
                                              'Reconnect') {
                                            await ref
                                                .read(agentDirectoryProvider.notifier)
                                                .refresh();
                                            if (failure.referenceId != null) {
                                              await ref
                                                  .read(aiChatProvider.notifier)
                                                  .retryMessage(
                                                    widget.characterId,
                                                    failure.referenceId!,
                                                  );
                                            }
                                          } else if (failure.referenceId != null) {
                                            await ref
                                                .read(aiChatProvider.notifier)
                                                .retryMessage(
                                                  widget.characterId,
                                                  failure.referenceId!,
                                                );
                                          }
                                        },
                                ),
                              ),
                            ),
                          ],
                        ),
                        );
                      },
                    ),
              ),
            ),
            if (!_nearBottom)
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 12, bottom: 8),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      FloatingActionButton.small(
                        heroTag: 'chat-bottom',
                        tooltip: _newBelow > 0
                            ? 'Jump to $_newBelow new messages'
                            : 'Jump to latest messages',
                        backgroundColor: u.surfaceCard,
                        foregroundColor: u.textMuted,
                        elevation: 3,
                        onPressed: () {
                          setState(() => _newBelow = 0);
                          _scrollToBottom();
                        },
                        child: const Icon(Icons.keyboard_arrow_down_rounded, size: 24),
                      ),
                      if (_newBelow > 0)
                        PositionedDirectional(
                          top: -4,
                          end: -4,
                          child: Semantics(liveRegion: true,
                            label: '$_newBelow new messages',
                            child: ExcludeSemantics(child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: u.brand,
                              shape: BoxShape.circle,
                            ),
                            constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
                            child: Center(
                              child: Text(
                                _newBelow > 99 ? '99+' : '$_newBelow',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ))),
                        ),
                    ],
                  ),
                ),
              ),
            if (_inlineVoiceSession != null)
              _InlineVoicePanel(
                agentName: agent.displayName,
                state: _inlineVoiceState,
                onStop: () => unawaited(
                  _stopInlineLiveVoice(outcome: 'completed'),
                ),
              ),
            if (widget.entryMode == AiChatEntryMode.study && _showStudyHint)
              Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(12, 6, 12, 2),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
                decoration: BoxDecoration(
                  color: u.brand.withValues(alpha: .08),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: u.brand.withValues(alpha: .18)),
                ),
                child: Row(children: [
                  Expanded(child: Text(
                    'Study · ask, answer, or speak naturally. Your learning progress is saved privately.',
                    style: TextStyle(color: u.textMuted, fontSize: 12, height: 1.35))),
                  IconButton(tooltip: 'Dismiss study hint',
                    onPressed: () => setState(() => _showStudyHint = false),
                    icon: const Icon(Icons.close_rounded, size: 18)),
                ]),
              ),
            if (_pendingAttachments.isNotEmpty && _editingMessage == null)
              Column(mainAxisSize: MainAxisSize.min, children: [
                Align(alignment: AlignmentDirectional.centerEnd,
                  child: TextButton.icon(
                    key: const ValueKey('review-chat-attachments'),
                    onPressed: _reviewPendingAttachments,
                    icon: const Icon(Icons.preview_outlined, size: 18),
                    label: Text('Review ${_pendingAttachments.length} attachments'))),
                _PendingAttachmentStrip(
                  attachments: _pendingAttachments,
                  onRemove: _removePendingAttachment),
              ]),
            if (_editingMessage != null)
              _ReplyComposerPreview(
                message: _editingMessage!,
                senderName: 'Editing message',
                onClose: _cancelEditing,
              ),
            if (_replyingTo != null && _editingMessage == null)
              _ReplyComposerPreview(
                message: _replyingTo!,
                senderName: _replyingTo!.isUser ? 'You' : agent.displayName,
                onClose: () => setState(() => _replyingTo = null),
              ),
            if (_continuationNoteId != null && _sequenceNotes[_continuationNoteId] != null)
              Builder(builder: (context) {
                final noteId = _continuationNoteId!;
                final generation = _continuationGeneration;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: _VoicePlaybackScope(
                    noteId: noteId,
                    onStart: _beginVoiceSequence,
                    onComplete: _voiceNoteCompleted,
                    onStop: _stopVoiceSequence,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Text('Next voice note', style: TextStyle(color: u.textMuted, fontSize: 12)),
                      _VoiceBubble(
                        key: ValueKey('continuation-$noteId'),
                        attachment: _sequenceNotes[noteId]!,
                        agent: agent,
                        continuationGeneration: generation,
                        canContinue: () => _canContinueVoiceNotes &&
                            _voiceSequence.isCurrent(noteId, generation) &&
                            _sequenceNoteStillAvailable(noteId),
                      ),
                    ]),
                  ),
                );
              }),
            _Composer(
                controller: _input,
                focusNode: _composerFocus,
                emojiSelected: _showEmoji,
                onTextTap: () { if (_showEmoji) setState(() => _showEmoji = false); },
                hasText: _hasText || _pendingAttachments.isNotEmpty,
                sending: sending,
                blocked: updateRequired,
                editing: _editingMessage != null,
                onSend: _sendText,
                onStop: () async {
                  await _activeVoiceBubble?._pauseFromAnotherBubble();
                  ref.read(aiChatProvider.notifier).stopGeneration(widget.characterId);
                },
                onAttach: _editingMessage == null ? _openAttachSheet : () {},
                onCamera: _editingMessage == null
                    ? () => _pickImage(ImageSource.camera) : () {},
                onMic: updateRequired || _editingMessage != null
                    ? () {}
                    : () => unawaited(_startInlineRecording()),
                onHoldStart: updateRequired || _editingMessage != null ? null : () async {
                  _voiceHoldActive=true;
                  await _startInlineRecording();
                },
                onHoldLock: () {if(mounted)setState(() { _recordingLocked=true; _voiceHoldActive=false; });},
                holdActive:_voiceHoldActive,recordingLocked:_recordingLocked,
                onReRecord:_rerecordInline,
                onEmojiToggle: () {
                  if (_showEmoji) {
                    setState(() => _showEmoji = false);
                    _composerFocus.requestFocus();
                  } else {
                    FocusScope.of(context).unfocus();
                    setState(() => _showEmoji = true);
                  }
                },
                recorder: _inlineRecorder,
                onCancelRecording: _cancelInlineRecording,
                onStopRecording: _stopInlineRecordingToPreview,
                onSendVoiceNote: _sendInlineVoiceNote,
                onTogglePreview: _toggleInlinePreview,
                previewProgress: _inlinePreviewProgress,
                onSeekPreview: (fraction) => unawaited(_seekInlinePreview(fraction)),
                previewPlaying: _inlinePreviewPlaying,
              ),
            if (_showEmoji && _inlineRecorder == null)
              ChatEmojiPanel(controller: _input, onClose: () {
                setState(() => _showEmoji = false);
                _composerFocus.requestFocus();
              }),

          ],
        ),
      ),
    );
  }

  bool _sameDay(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;

  void _moveSearch(int delta, List<AiChatMessage> matches) {
    if (matches.isEmpty) return;
    setState(() {
      _searchIndex = (_searchIndex + delta) % matches.length;
      if (_searchIndex < 0) _searchIndex += matches.length;
    });
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToSearchMatch());
  }

  void _scrollToSearchMatch() {
    final query = _search.text.trim().toLowerCase();
    if (query.isEmpty) return;
    final messages = ref
        .read(aiChatProvider.notifier)
        .threadOf(widget.characterId)
        .messages
        .where((m) => !m.deleted && m.text.toLowerCase().contains(query))
        .toList();
    if (messages.isEmpty) return;
    final index = _searchIndex.clamp(0, messages.length - 1).toInt();
    final key = _messageKeys[messages[index].id];
    final target = key?.currentContext;
    if (target != null) {
      Scrollable.ensureVisible(
        target,
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOut,
        alignment: 0.35,
      );
    }
  }

  void _copySelected(List<AiChatMessage> messages) {
    final text = messages
        .where((m) => _selectedMessageIds.contains(m.id) && !m.deleted)
        .map((m) {
          if (m.text.isNotEmpty) return m.text;
          if (m.allAttachments.isNotEmpty) {
            return m.allAttachments.map((item) => item.label).join(' · ');
          }
          return '';
        })
        .where((value) => value.isNotEmpty)
        .join('\n\n');
    if (text.isNotEmpty) Clipboard.setData(ClipboardData(text: text));
    setState(_selectedMessageIds.clear);
  }

  Future<void> _deleteSelected() async {
    final originals = ref.read(aiChatProvider.notifier)
        .threadOf(widget.characterId).messages
        .where((m) => _selectedMessageIds.contains(m.id) && !m.deleted).toList();
    await _confirmDeleteMessages(originals);
    if (mounted) setState(_selectedMessageIds.clear);
  }

  Future<void> _confirmDeleteMessages(List<AiChatMessage> originals) async {
    if (originals.isEmpty) return;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(originals.length == 1
            ? 'Hide message?' : 'Hide ${originals.length} messages?'),
        content: const Text('This hides messages on this device only. '
            'Server history is not deleted.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.pop(dialogContext, true),
            child: const Text('Hide on this device')),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;
    final ctl = ref.read(aiChatProvider.notifier);
    for (final item in originals) {
      ctl.deleteMessage(widget.characterId, item.id);
    }
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('${originals.length} hidden on this device'),
      action: SnackBarAction(label: 'Undo', onPressed: () {
        ref.read(aiChatProvider.notifier)
            .restoreDeletedMessages(widget.characterId, originals);
      }),
    ));
  }

  Future<void> _shareMessage(AiChatMessage message) async {
    final unavailable = message.allAttachments.any(
      (item) => !File(item.path).existsSync());
    if (unavailable) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Download the original attachment before sharing.')));
      return;
    }
    final attachments = message.allAttachments
        .where((item) => File(item.path).existsSync())
        .toList();
    if (message.text.isEmpty && attachments.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('No local text or media is available to share.')));
      return;
    }
    try { await SharePlus.instance.share(
      ShareParams(
        text: message.text.isEmpty ? null : message.text,
        files: [
          for (final attachment in attachments)
            XFile(
              attachment.path,
              name: attachment.name,
              mimeType: lookupMimeType(attachment.path),
            ),
        ],
      ),
    ); } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Sharing is unavailable. Try again.')));
    }
  }

  Future<void> _saveMessageMedia(AiChatMessage message) async {
    final items = message.allAttachments
        .where((item) => File(item.path).existsSync())
        .toList();
    final unavailable = message.allAttachments.length - items.length;
    if (items.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Download this media before saving it.')));
      return;
    }

    var saved = 0;
    var failed = unavailable;
    var cancelled = false;
    for (final item in items) {
      try {
        final fallbackName = item.kind == 'image'
            ? 'masanawa-photo.jpg'
            : item.kind == 'voice'
            ? 'masanawa-voice.m4a'
            : item.kind == 'video'
            ? 'masanawa-video.mp4'
            : 'masanawa-file';
        final bytes = await File(item.path).readAsBytes();
        final output = await FilePicker.saveFile(
          dialogTitle: 'Save from Masanawa',
          fileName: item.name ?? fallbackName,
          bytes: bytes,
          mimeType:
              lookupMimeType(item.path) ?? 'application/octet-stream',
        );
        if (output == null) { cancelled = true; break; }
        saved++;
      } catch (_) { failed++; }
    }
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$saved saved through the device file picker'
              '${failed > 0 ? ' · $failed unavailable or failed' : ''}'
              '${cancelled ? ' · remaining saves cancelled' : ''}'),
        ),
      );
    }
  }

  Future<void> _forwardMessage(AiChatMessage message) async {
    final owner = ref.read(sessionProvider);
    final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    if (owner is! SessionSignedIn) return;
    final agents = ref.read(agentDirectoryProvider).agents;
    final search = TextEditingController();
    final target = await showModalBottomSheet<AgentDirectoryEntry>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (sheetContext) => StatefulBuilder(
        builder: (sheetContext, refresh) {
          final visible = agents.where((agent) =>
            '${agent.displayName} ${agent.roleLabel}'
                .toLowerCase().contains(search.text.trim().toLowerCase())).toList();
          return SafeArea(child: SizedBox(
            height: MediaQuery.sizeOf(sheetContext).height * .67,
            child: Column(children: [
              const ListTile(title: Text('Forward to Masana'),
                subtitle: Text('Choose an AI conversation')),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  controller: search, autofocus: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search), hintText: 'Search Masana'),
                  onChanged: (_) => refresh(() {}))),
              Expanded(child: ListView(children: [
              for (final entry in visible)
                ListTile(
                leading: MasanaPortraitAvatar(agent: entry, size: 40),
                title: Text(entry.displayName),
                subtitle: Text(entry.roleLabel),
                onTap: () => Navigator.pop(sheetContext, entry),
              ),
              if (visible.isEmpty) const ListTile(title: Text('No matching Masana')),
              ])),
            ]),
          ));
        },
      ),
    );
    search.dispose();
    if (target == null || !mounted ||
        !identical(owner, ref.read(sessionProvider)) ||
        epoch != ref.read(sessionProvider.notifier).authorizationEpoch) return;
    final confirmed = await showDialog<bool>(context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Forward to ${target.displayName}?'),
        content: const Text('Forwarding starts a new AI turn. A successful '
            'Masana reply may use 1 MB from your eligible balance.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.pop(dialogContext, true),
            child: const Text('Forward')),
        ],
      ));
    if (confirmed != true || !mounted ||
        !identical(owner, ref.read(sessionProvider)) ||
        epoch != ref.read(sessionProvider.notifier).authorizationEpoch) return;
    final ctl = ref.read(aiChatProvider.notifier);
    try {
      // Download private originals only after the user confirms forwarding.
      // Fence account changes and never transmit a remote token as a file.
      for (final item in message.allAttachments) {
        if (item.path.startsWith('masanawa-remote|')) {
          await ctl.downloadRemoteChatMedia(item.path);
          if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
              epoch != ref.read(sessionProvider.notifier).authorizationEpoch) return;
        }
      }
      var originals = message.allAttachments;
      for (final current in ctl.threadOf(widget.characterId).messages) {
        if (current.id == message.id) {
          originals = current.allAttachments;
          break;
        }
      }
      if (originals.any((item) =>
          item.path.startsWith('masanawa-remote|') ||
          !File(item.path).existsSync())) {
        if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Original media unavailable. Download before forwarding.')));
        return;
      }
      if (originals.isNotEmpty) {
        await ctl.sendAttachments(target.characterId, originals,
          caption: message.text);
      } else if (message.text.isNotEmpty) {
        await ctl.sendText(target.characterId, message.text);
      }
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Forward failed. Review the target chat before retrying.')));
      return;
    }
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Forward request sent to ${target.displayName}')),
      );
    }
  }

  Future<void> _blockAgent(AgentDirectoryEntry agent) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Block ${agent.displayName}?'),
                content: const Text('They will no longer be available to you until you unblock them.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('Block'),
          ),
        ],
      ),
    );
    if (confirmed != true) return;
    final ok = await ref.read(twinSafetyControllerProvider.notifier).block(agent.characterId);
    if (!mounted) return;
    if (ok) {
      unawaited(ref.read(agentDirectoryProvider.notifier).refresh());
      context.go('/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not block this Masana.')),
      );
    }
  }

  Future<void> _reportAgent(AgentDirectoryEntry agent) async {
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) return;
    final expectedAccount = session.user.id;
    final submitted = await Navigator.of(context).push<bool>(
      MaterialPageRoute<bool>(
        settings: const RouteSettings(name: '/masana/report'),
        builder: (_) => Consumer(
          builder: (routeContext, routeRef, _) {
            final current = routeRef.watch(sessionProvider);
            if (current is! SessionSignedIn ||
                current.user.id != expectedAccount) {
              return Scaffold(
                appBar: AppBar(title: const Text('Report Masana')),
                body: const Center(
                  child: Text('Your session changed. Sign in again to report.'),
                ),
              );
            }
            return MasanaReportScreen(
              displayName: agent.displayName,
              onSubmit: (reason, detail) async {
                final active = routeRef.read(sessionProvider);
                if (active is! SessionSignedIn ||
                    active.user.id != expectedAccount) return false;
                final ok = await routeRef
                    .read(twinSafetyControllerProvider.notifier)
                    .report(
                      characterId: agent.characterId,
                      reason: reason,
                      detail: detail,
                    );
                final after = routeRef.read(sessionProvider);
                return ok && after is SessionSignedIn &&
                    after.user.id == expectedAccount;
              },
            );
          },
        ),
      ),
    );
    if (!mounted || submitted != true) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Masana report submitted.')),
    );
  }
  MbCallFlow _captureMbCallFlow(
    CallLifecycleOwner owner, CallLifecycleReporter reporter,
  ) {
    final api = ref.read(apiClientProvider);
    return MbCallFlow(
      ownerId: owner.accountId,
      journal: MbCallIntentJournal(SecureMbCallIntentStore(ownerId: owner.accountId)),
      transport: MbCallTransport(
        dio: api.dio,
        baseUrl: api.dio.options.baseUrl,
        accessToken: owner.accessToken,
        accountId: owner.accountId,
        currentAccountId: () => reporter.captureOwner()?.accountId,
      ),
    );
  }

  Future<void> _showVoiceStartFailure(Object error) async {
    if (!mounted) return;
    final permissionDenied = error is PlatformException &&
        (error.code.toLowerCase().contains('permission') ||
         error.code.toLowerCase().contains('microphone'));
    final feedback = permissionDenied
        ? const AgentFeedback('Microphone access is needed to make a voice call.',
            recovery: AgentRecovery.microphone)
        : AgentFeedback.fromError(error);
    await showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        icon: Icon(feedback.recovery == AgentRecovery.addMb
            ? Icons.account_balance_wallet_outlined
            : feedback.recovery == AgentRecovery.microphone
                ? Icons.mic_off_outlined : Icons.info_outline_rounded),
        title: const Text('Call could not start', textAlign: TextAlign.center),
        content: Text(feedback.message, textAlign: TextAlign.center),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Close')),
          if (feedback.recovery == AgentRecovery.addMb)
            FilledButton(onPressed: () {
              Navigator.pop(dialogContext);
              context.push('/wallet/add');
            }, child: const Text('Add MB')),
        ],
      ),
    );
  }

  Future<void> _showVoiceNoteFailure(String reason) async {
    if (!mounted) return;
    final permission = reason.toLowerCase().contains('permission') ||
        reason.toLowerCase().contains('microphone access');
    final shortage = reason.toLowerCase().contains('not enough mb');
    await showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        icon: Icon(permission ? Icons.mic_off_rounded :
          shortage ? Icons.account_balance_wallet_outlined : Icons.info_outline_rounded),
        title: const Text('Voice note unavailable', textAlign: TextAlign.center),
        content: Text(reason, textAlign: TextAlign.center),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Close')),
          if (permission) FilledButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              AppPermissions.openSettings();
            }, child: const Text('Microphone settings')),
          if (shortage) FilledButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              context.push('/wallet/add');
            }, child: const Text('Add MB')),
        ],
      ),
    );
  }

  Future<MbCallAdmission?> _reviewAndAdmitMbCall(
    AgentDirectoryEntry agent, MbCallFlow flow, bool Function() stillOwner,
  ) async {
    // The one-to-one server review is the only authority for purchased and
    // restricted welcome MB. Even support Masana uses the reviewed MB rail.
    final review = await flow.review(agent.characterId);
    if (!stillOwner()) {
      await flow.decline(review);
      return null;
    }
    final accepted = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Voice with ${agent.displayName}'),
        content: Text(
          'Reserve up to ${review.budgetMb} MB for this call. '
          'Only server-confirmed connected seconds are charged at 1 MB '
          'per started second. Ringing and setup do not cost MB. '
          'Unused reserved MB is released.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('Not now'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('Reserve MB & call'),
          ),
        ],
      ),
    );
    if (!stillOwner() || accepted != true) {
      await flow.decline(review);
      return null;
    }
    final admission = await flow.confirm(review);
    if (admission.characterId != agent.characterId || !admission.active) {
      throw StateError('The call admission cannot be used. Check its receipt.');
    }
    return admission;
  }

  Future<AgentLiveVoiceGrant> _renewMbGrant(
    MbCallFlow flow, MbCallAdmission original, bool Function() stillOwner,
  ) async {
    if (!stillOwner()) {
      throw StateError('The signed-in call account changed.');
    }
    final current = await flow.transport.read(original.id);
    if (!stillOwner() || current.id != original.id ||
        current.characterId != original.characterId || !current.active) {
      throw StateError('The original MB call admission is no longer active.');
    }
    return flow.transport.grant(current);
  }

  Future<void> _finishMbAdmission(
    MbCallFlow flow, MbCallAdmission admission,
  ) async {
    bool sameOwner() {
      final current=ref.read(sessionProvider);
      return current is SessionSignedIn && current.user.id==flow.ownerId;
    }
    try {
      final result = await flow.finish(admission);
      if (result.state != 'completed' && result.state != 'failed') {
        throw StateError('Call settlement is still pending.');
      }
    } catch (_) {
      if (mounted && sameOwner()) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            'Call settlement is unconfirmed. Your original call is saved '
            'for safe readback before another call.',
          ),
        ));
      }
    }
    if (mounted && sameOwner()) {
      ref.read(callHistoryRevisionProvider.notifier).state++;
      unawaited(ref.read(walletProvider.notifier).refresh());
    }
  }

  Future<void> _disposeInlineVoice() async {
    if (_inlineVoiceClosing) return;
    final session = _inlineVoiceSession;
    if (session == null) return;
    _inlineVoiceClosing = true;
    final admission = _inlineMbAdmission;
    final flow = _inlineMbFlow;
    final shellTransport = _inlineShellTransport;
    final characterId = _inlineVoiceCharacterId;
    try {
      await _inlineVoiceStateSub?.cancel();
      _inlineVoiceStateSub = null;
      await session.close();
      if (admission != null && flow != null) {
        await _finishMbAdmission(flow, admission);
      }
      if (shellTransport != null && characterId != null) {
        await shellTransport.setPresence(
          characterId: characterId,
          state: 'available',
          durationMs: 60 * 1000,
        ).catchError((_) {});
      }
    } finally {
      _inlineVoiceSession = null;
      _inlineMbAdmission = null;
      _inlineMbFlow = null;
      _inlineShellTransport = null;
      _inlineVoiceCharacterId = null;
      _inlineVoiceClosing = false;
    }
  }

  Future<void> _startInlineLiveVoice(AgentDirectoryEntry agent) async {
    if (_mbCallStarting) return;
    if (_inlineVoiceSession != null) {
      await _stopInlineLiveVoice(outcome: 'completed');
      return;
    }
    _mbCallStarting = true;
    try {
      await _prepareCallAudio();
      if (!mounted || !await _ensurePermission(AppPermission.microphone, 'Microphone')) {
        return;
      }
      final transport = ref.read(agentTransportProvider);
      if (transport is! AgentShellTransport) {
        throw StateError('Live voice is unavailable. Please try again.');
      }
      final shellTransport = transport as AgentShellTransport;
      final reporter = ref.read(callLifecycleReporterProvider);
      final owner = reporter.captureOwner();
      if (owner == null) return;
      final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
      bool stillOwner() => mounted &&
          reporter.captureOwner()?.accountId == owner.accountId &&
          ref.read(sessionProvider.notifier).authorizationEpoch == epoch;
      final flow = _captureMbCallFlow(owner, reporter);
      final admission = await _reviewAndAdmitMbCall(agent, flow, stillOwner);
      if (admission == null) return;
      LiveVoiceSession? session;
      CallLifecycleBinding? history;
      try {
        if (!stillOwner()) throw StateError('Call account changed before connection.');
        await _activeVoiceBubble?._pauseFromAnotherBubble();
        await shellTransport.setPresence(
          characterId: agent.characterId,
          state: 'on_call',
          durationMs: 5 * 60 * 1000,
        );
        if (!stillOwner()) throw StateError('Call account changed before grant.');
        final grant = await flow.transport.grant(admission);
        // The trusted MB relay owns connection evidence and history timestamps.
        // Legacy lifecycle outbox writes must not use an admission as a UUID.
        history = reporter.bind(owner, null);
        if (!stillOwner()) throw StateError('Call account changed before connection.');
        session = LiveVoiceSession(
          grant: grant,
          characterName: agent.displayName,
          renewConnectionGrant: () => _renewMbGrant(flow, admission, stillOwner),
          onConnected: history.connected,
          onClosed: () => history!.closed(reason: session?.endReason),
          captureInputTranscription: false,
          endAt: admission.expiresAt,
          maxDuration: paidNativeCallMaxDuration(
            estimatedSeconds: admission.budgetMb,
            admissionExpiresAt: admission.expiresAt,
            now: DateTime.now(),
          ),
        );
        _inlineVoiceStateSub?.cancel();
        _inlineVoiceStateSub = session.states.listen((state) {
          if (!mounted) return;
          setState(() => _inlineVoiceState = state);
          if (state == LiveVoiceState.failed || state == LiveVoiceState.ended) {
            unawaited(_stopInlineLiveVoice(outcome: 'interrupted'));
          }
        });
        setState(() {
          _inlineVoiceSession = session;
          _inlineMbAdmission = admission;
          _inlineMbFlow = flow;
          _inlineShellTransport = shellTransport;
          _inlineVoiceCharacterId = agent.characterId;
          _inlineVoiceState = LiveVoiceState.connecting;
        });
        await Future.wait<void>([session.start(), session.ready]);
        if (!stillOwner()) {
          throw StateError('Call account changed during connection.');
        }
        // The trusted relay, not the mobile timer, proves chargeable seconds.
      } catch (_) {
        await session?.close();
        await history?.closed();
        if (identical(_inlineVoiceSession, session)) {
          await _inlineVoiceStateSub?.cancel();
          _inlineVoiceStateSub = null;
          _inlineVoiceSession = null;
          _inlineMbAdmission = null;
          _inlineMbFlow = null;
          _inlineShellTransport = null;
          _inlineVoiceCharacterId = null;
        }
        await _finishMbAdmission(flow, admission);
        await shellTransport.setPresence(characterId: agent.characterId,
          state: 'available', durationMs: 60 * 1000).catchError((_) {});
        rethrow;
      }
    } catch (error) {
      if (mounted) {
        setState(() => _inlineVoiceState = LiveVoiceState.failed);
        await _showVoiceStartFailure(error);
      }
    } finally {
      _mbCallStarting = false;
    }
  }

  Future<void> _stopInlineLiveVoice({required String outcome}) async {
    if (_inlineVoiceClosing) return;
    final session = _inlineVoiceSession;
    if (session == null) return;
    _inlineVoiceClosing = true;
    final admission = _inlineMbAdmission;
    final flow = _inlineMbFlow;
    final shellTransport = _inlineShellTransport;
    final characterId = _inlineVoiceCharacterId;
    try {
      await _inlineVoiceStateSub?.cancel();
      _inlineVoiceStateSub = null;
      session.endReason ??= CallEndReason.userEnded;
      await session.close();
      if (admission != null && flow != null) {
        await _finishMbAdmission(flow, admission);
      }
      if (shellTransport != null && characterId != null) {
        await shellTransport.setPresence(characterId: characterId,
          state: 'available', durationMs: 60 * 1000).catchError((_) {});
      }
    } finally {
      if (mounted) {
        setState(() {
          _inlineVoiceSession = null;
          _inlineMbAdmission = null;
          _inlineMbFlow = null;
          _inlineShellTransport = null;
          _inlineVoiceCharacterId = null;
          _inlineVoiceState = LiveVoiceState.idle;
        });
      }
      _inlineVoiceClosing = false;
    }
  }

  Future<void> _openLiveVoice(AgentDirectoryEntry agent) async {
    if (_mbCallStarting) return;
    _mbCallStarting = true;
    try {
      await _prepareCallAudio();
      if (!mounted || !await _ensurePermission(AppPermission.microphone, 'Microphone')) {
        return;
      }
      final transport = ref.read(agentTransportProvider);
      if (transport is! AgentShellTransport) {
        throw StateError('Live voice is unavailable.');
      }
      final shellTransport = transport as AgentShellTransport;
      final reporter = ref.read(callLifecycleReporterProvider);
      final owner = reporter.captureOwner();
      if (owner == null) return;
      final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
      bool stillOwner() => mounted &&
          reporter.captureOwner()?.accountId == owner.accountId &&
          ref.read(sessionProvider.notifier).authorizationEpoch == epoch;
      final flow = _captureMbCallFlow(owner, reporter);
      final admission = await _reviewAndAdmitMbCall(agent, flow, stillOwner);
      if (admission == null) return;
      LiveVoiceSession? session;
      CallLifecycleBinding? history;
      try {
        if (!stillOwner()) throw StateError('Call account changed before connection.');
        await _activeVoiceBubble?._pauseFromAnotherBubble();
        await shellTransport.setPresence(characterId: agent.characterId,
          state: 'on_call', durationMs: 5 * 60 * 1000);
        unawaited(ref.read(agentDirectoryProvider.notifier).refresh());
        if (!stillOwner()) throw StateError('Call account changed before grant.');
        final grant = await flow.transport.grant(admission);
        // The trusted MB relay owns connection evidence and history timestamps.
        // Legacy lifecycle outbox writes must not use an admission as a UUID.
        history = reporter.bind(owner, null);
        if (!stillOwner()) throw StateError('Call account changed before connection.');
        session = LiveVoiceSession(
          grant: grant,
          characterName: agent.displayName,
          renewConnectionGrant: () => _renewMbGrant(flow, admission, stillOwner),
          onConnected: history.connected,
          onClosed: () => history!.closed(reason: session?.endReason),
          endAt: admission.expiresAt,
          maxDuration: paidNativeCallMaxDuration(
            estimatedSeconds: admission.budgetMb,
            admissionExpiresAt: admission.expiresAt,
            now: DateTime.now(),
          ),
        );
        _modalVoiceSession = session;
        await Navigator.of(context).push<void>(MaterialPageRoute<void>(
          settings: RouteSettings(name: '/calls/live/${agent.characterId}'),
          builder: (_) => MasanaLiveCallScreen(
            agent: agent,
            session: session!,
            recordingOwnerId: owner.accountId,
            isRecordingOwnerCurrent: () {
              if (!mounted) return false;
              final current = ref.read(sessionProvider);
              return current is SessionSignedIn &&
                  current.user.id == owner.accountId &&
                  ref.read(sessionProvider.notifier).authorizationEpoch == epoch;
            },
            maxDuration: Duration(seconds: admission.budgetMb),
          ),
        ));
      } finally {
        await session?.close();
        await history?.closed();
        if (identical(_modalVoiceSession, session)) _modalVoiceSession = null;
        await _finishMbAdmission(flow, admission);
        await shellTransport.setPresence(characterId: agent.characterId,
          state: 'available', durationMs: 60 * 1000).catchError((_) {});
        if (mounted) {
          unawaited(ref.read(agentDirectoryProvider.notifier).refresh());
        }
      }
    } catch (error) {
      if (mounted) {
        await _showVoiceStartFailure(error);
      }
    } finally {
      _mbCallStarting = false;
    }
  }
  Future<void> _runAgentAction(AiChatMessage message, String action) async {
    final ctl = ref.read(aiChatProvider.notifier);
    final quoted = message.text;
    final prompt = switch (action) {
      'regenerate' => 'Answer my previous request again. Improve the answer and avoid unnecessary repetition.',
      'shorter' => 'Make this answer much shorter while preserving the important points:\n\n$quoted',
      'detail' => 'Expand this answer with more useful detail and practical steps:\n\n$quoted',
      'simple' => 'Explain this much more simply:\n\n$quoted',
      'translate' => 'Translate this answer into the language I am currently using, preserving meaning:\n\n$quoted',
      'continue' => 'Continue this answer exactly from where it stopped:\n\n$quoted',
      'audio' => 'Repeat this answer faithfully so I can listen to the native audio version:\n\n$quoted',
      _ => '',
    };
    if (prompt.isEmpty) return;
    await ctl.sendText(
      widget.characterId,
      prompt,
      replyToId: message.id,
      replyPreview: quoted.isEmpty ? 'Masana response' : quoted,
    );
  }

  void _cancelEditing() {
    final draft = _draftBeforeEdit ?? '';
    setState(() { _editingMessage = null; _draftBeforeEdit = null; });
    _input.text = draft;
    _composerFocus.requestFocus();
  }

  Future<void> _confirmDiscardEditAndExit() async {
    if (!mounted || _editingMessage == null) return;
    final confirmed = await showDialog<bool>(context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Discard message edit?'),
        content: const Text('Your previous unsent draft will be restored.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('Keep editing')),
          FilledButton(onPressed: () => Navigator.pop(dialogContext, true),
            child: const Text('Discard edit')),
        ],
      ));
    if (confirmed != true || !mounted) return;
    _cancelEditing();
    setState(() => _allowEditExit = true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) Navigator.of(context).maybePop();
    });
  }

  Future<void> _editMessage(AiChatMessage message) async {
    if (!message.isUser || message.deleted) return;
    _draftBeforeEdit = _input.text;
    setState(() {
      _editingMessage = message;
      _replyingTo = null;
      _showEmoji = false;
    });
    _input.text = message.text;
    _input.selection = TextSelection.collapsed(offset: _input.text.length);
    _composerFocus.requestFocus();
  }

  Future<void> _renameConversation() async {
    final thread = ref.read(aiChatProvider.notifier).threadOf(widget.characterId);
    final editor = TextEditingController(text: thread.title ?? '');
    final result = await showDialog<String>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Rename conversation'),
        content: TextField(controller: editor, autofocus: true),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(dialogContext, editor.text),
            child: const Text('Save'),
          ),
        ],
      ),
    );
    editor.dispose();
    if (result != null) {
      ref.read(aiChatProvider.notifier).renameThread(widget.characterId, result);
    }
  }

  void _confirmClear(AgentDirectoryEntry agent) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Clear chat with ${agent.displayName}?'),
        content: const Text(
          'All messages in this conversation will be removed.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              ref.read(aiChatProvider.notifier).clearThread(widget.characterId);
              Navigator.of(dialogContext).pop();
            },
            child: const Text('Clear'),
          ),
        ],
      ),
    );
  }
}

class MasanaLiveCallScreen extends StatefulWidget {
  const MasanaLiveCallScreen({
    super.key,
    required this.agent,
    required this.session,
    this.maxDuration,
    this.onMediaStarted,
    this.recordingOwnerId,
    this.isRecordingOwnerCurrent,
  });

  final String? recordingOwnerId;
  final bool Function()? isRecordingOwnerCurrent;
  final AgentDirectoryEntry agent;
  final LiveVoiceSession session;
  final Duration? maxDuration;
  final Future<void> Function()? onMediaStarted;

  @override
  State<MasanaLiveCallScreen> createState() => _MasanaLiveCallScreenState();
}

class _MasanaLiveCallScreenState extends State<MasanaLiveCallScreen> {
  final _tone = CallSignalingTone();
  bool _ringing = true;
  bool _muted = false;
  bool _speaker = true;
  String? _error;
  Timer? _durationTimer;
  Timer? _elapsedTimer;
  final Stopwatch _elapsed = Stopwatch();
  bool _connected = false;
  CallRecorder? _recording;
  StreamSubscription<String>? _errors;

  @override
  void initState() {
    super.initState();
    final owner = widget.recordingOwnerId;
    if (owner != null && widget.isRecordingOwnerCurrent != null) {
      _recording = CallRecorder(store:CallRecordingStore(owner),agentName:widget.agent.displayName,
        isCurrentAccount:widget.isRecordingOwnerCurrent!,onChanged:(){if(mounted)setState((){});});
      widget.session.audioObserver = _recording;
    }
    _errors = widget.session.errors.listen((message) {
      unawaited(_tone.update(null));
      if (mounted) setState(() => _error = message);
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(_beginCallExperience());
    });
  }

  Future<void> _beginCallExperience() async {
    await _tone.update(CallTone.outgoing);
    if (!mounted) return;
    await _startVerifiedSession();
  }

  Future<void> _startVerifiedSession() async {
    try {
      await Future.wait<void>([
        widget.session.start(),
        widget.session.ready,
      ]);
      await _tone.update(null);
      if (!mounted) return;
      setState(() => _ringing = false);
      await widget.onMediaStarted?.call();
      if (!mounted) return;
      _elapsed.start();
      setState(() => _connected = true);
      _elapsedTimer = Timer.periodic(const Duration(seconds:1), (_) {if(mounted)setState((){});});
      final maxDuration = widget.maxDuration;
      if (maxDuration != null) {
        _durationTimer?.cancel();
        _durationTimer = Timer(maxDuration, () async {
          widget.session.endReason??=CallEndReason.durationLimit;
          await widget.session.close();
          if (mounted) Navigator.of(context).pop();
        });
      }
    } catch (_) {
      await _tone.update(null);
      await widget.session.close();
      if (!mounted) return;
      setState(() {
        _error ??= 'Voice session could not be verified.';
      });
      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    _durationTimer?.cancel();
    _elapsedTimer?.cancel();
    _elapsed.stop();
    unawaited(_tone.close());
    _errors?.cancel();
    _recording?.ended();
    widget.session.endReason??=CallEndReason.userEnded;
    widget.session.close();
    super.dispose();
  }

  String _label(LiveVoiceState state) {
    if (_ringing) return 'Calling…';
    if (widget.session.audioInterrupted) return 'Audio paused';
    if (state==LiveVoiceState.connecting && widget.session.reconnecting) return 'Reconnecting…';
    return switch (state) {
        LiveVoiceState.connecting => 'Connecting…',
        LiveVoiceState.listening => _muted ? 'Muted' : 'Listening…',
        LiveVoiceState.speaking => 'Speaking…',
        LiveVoiceState.interrupted => widget.session.audioInterrupted ? 'Audio paused' : 'Listening…',
        LiveVoiceState.failed => 'Connection problem',
        LiveVoiceState.ended => 'Call ended',
        LiveVoiceState.idle => 'Ready',
      };
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Scaffold(
      key: const ValueKey('masanawa-live-call-screen'),
      backgroundColor: u.surfaceBg,
      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 14),
          decoration: BoxDecoration(color:u.surfaceCard,
            borderRadius:const BorderRadius.vertical(top:Radius.circular(28))),
          child: Wrap(alignment:WrapAlignment.center,spacing:20,runSpacing:12,children:[
            _CallControl(label:_speaker?'Speaker':'Earpiece',
              icon:_speaker?Icons.volume_up:Icons.hearing,selected:_speaker,
              onTap:() async {final next=!_speaker;await widget.session.setSpeaker(next);
                if(mounted)setState(()=>_speaker=next);}),
            _CallControl(label:_muted?'Unmute':'Mute',
              icon:_muted?Icons.mic_off:Icons.mic,selected:_muted,
              onTap:() async {final next=!_muted;await widget.session.mute(next);
                if(mounted)setState(()=>_muted=next);}),
            _CallControl(key:const ValueKey('live-call-end-action'),label:'End call',
              icon:Icons.call_end_rounded,danger:true,onTap:() async {
                widget.session.endReason??=CallEndReason.userEnded;
                await widget.session.close();
                if(context.mounted)Navigator.of(context).pop();}),
          ]),
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          final compact = MediaQuery.sizeOf(context).height < 560;
          final portraitSize = compact ? 128.0
              : constraints.maxWidth < 360 ? 176.0 : 200.0;
          final verticalPadding = compact ? 16.0 : 24.0;
          final minContentHeight = constraints.maxHeight > 2 * verticalPadding
              ? constraints.maxHeight - 2 * verticalPadding : 0.0;
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 20, vertical: verticalPadding),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: minContentHeight),
              child: StreamBuilder<LiveVoiceState>(
          stream: widget.session.states,
          initialData: LiveVoiceState.connecting,
          builder: (context, snapshot) {
            final state = snapshot.data ?? LiveVoiceState.connecting;
            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child:SizedBox(width:portraitSize,height:portraitSize,
                  child:MasanaPortraitAvatar(
                    key: const ValueKey('live-call-masana-portrait'),
                    agent: widget.agent, size: portraitSize))),
                const SizedBox(height: 18),
                Text(
                  widget.agent.displayName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: u.textPrimary,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if(widget.agent.publicOfficialSimulation) const Padding(
                  padding:EdgeInsets.only(top:7),
                  child:Text('AI simulation · Not the official or their office',textAlign:TextAlign.center)),
                const SizedBox(height: 7),
                Semantics(
                  liveRegion: true,
                  child: Text(
                    _error ?? _label(state),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _error == null ? u.textMuted : u.emergency,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                if (_connected) ...[
                  const SizedBox(height:12),
                  Text('${_elapsed.elapsed.inMinutes.toString().padLeft(2,'0')}:${(_elapsed.elapsed.inSeconds%60).toString().padLeft(2,'0')}',
                    semanticsLabel:'Connected call duration ${_elapsed.elapsed.inMinutes} minutes ${_elapsed.elapsed.inSeconds % 60} seconds',
                    style: TextStyle(color:u.textPrimary, fontSize:20,
                      fontWeight:FontWeight.w600, letterSpacing:1)),
                ],
                if (widget.session.audioInterrupted)
                  TextButton.icon(onPressed:widget.session.resumeAudio,icon:const Icon(Icons.play_arrow),label:const Text('Resume audio')),
                if (_recording != null && _connected) ...[
                  const SizedBox(height:12),
                  TextButton.icon(
                    onPressed:_recording!.saving?null:() async {
                      if(_recording!.recording){await _recording!.stop();}else{await _recording!.start();}
                    },
                    icon:Icon(_recording!.recording?Icons.stop_circle_outlined:Icons.fiber_manual_record,color:_recording!.recording?u.emergency:u.textPrimary),
                    label:Text(_recording!.recording?'Stop recording':_recording!.saving?'Saving recording…':'Record call'),
                  ),
                  if(_recording!.recording)Text('Recording · saved on this device',style:TextStyle(color:u.emergency)),
                  if(_recording!.error!=null)Text(_recording!.error!,textAlign:TextAlign.center),
                ],

              ],
            );
          },
              ),
            ),
          );
        }),
      ),
    );
  }
}

class _CallControl extends StatelessWidget {
  const _CallControl({
    super.key,
    this.danger = false,
    required this.label,
    required this.icon,
    required this.onTap,
    this.selected = false,
  });
  final String label;
  final IconData icon;
  final VoidCallback onTap;
  final bool selected;
  final bool danger;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final color = danger ? u.emergency : selected ? u.brand : u.surfaceMuted;
    return Tooltip(message:label,child:Semantics(button:true,label:label,
      onTap:onTap,toggled:danger?null:selected,child:ExcludeSemantics(child:Material(
        color:Colors.transparent,child:InkWell(onTap:onTap,borderRadius:BorderRadius.circular(20),
          child:SizedBox(width:72,child:Column(mainAxisSize:MainAxisSize.min,children:[
            Container(width:60,height:60,decoration:BoxDecoration(color:color,shape:BoxShape.circle),
              child:Icon(icon,size:26,color:selected||danger?Colors.white:u.textPrimary)),
            const SizedBox(height:5),
            Text(label,textAlign:TextAlign.center,style:TextStyle(color:u.textMuted,fontSize:13,fontWeight:FontWeight.w500)),
          ])))))));

  }
}

class _AttachOption extends StatelessWidget {
  const _AttachOption({
    required this.icon,
    required this.gradient,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final Gradient gradient;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  u.brand.withValues(alpha: .16),
                  u.brand.withValues(alpha: .07),
                ]),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: u.brandStrong, size: 25),
            ),
            const SizedBox(height: 7),
            Text(
              label,
              style: TextStyle(
                color: u.textPrimary,
                fontSize: 12.5,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InlineVoicePanel extends StatelessWidget {
  const _InlineVoicePanel({
    required this.agentName,
    required this.state,
    required this.onStop,
  });

  final String agentName;
  final LiveVoiceState state;
  final VoidCallback onStop;

  String get _status => switch (state) {
        LiveVoiceState.connecting => 'Connecting…',
        LiveVoiceState.listening => 'Listening…',
        LiveVoiceState.speaking => 'Speaking…',
        LiveVoiceState.interrupted => 'Listening…',
        LiveVoiceState.failed => 'Connection problem',
        LiveVoiceState.ended => 'Ended',
        LiveVoiceState.idle => 'Ready',
      };

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 6, 10, 2),
      padding: const EdgeInsets.fromLTRB(12, 10, 8, 10),
      decoration: BoxDecoration(
        color: u.surfaceCard,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: u.structuralBorder),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            state == LiveVoiceState.speaking
                ? Icons.graphic_eq_rounded
                : Icons.mic_rounded,
            color: u.brand,
          ),
          const SizedBox(width: 9),
          Expanded(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 112),
              child: SingleChildScrollView(
                reverse: true,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    '$agentName · $_status',
                    style: TextStyle(
                      color: u.textMuted,
                      fontSize: 13,
                      height: 1.35,
                    ),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            tooltip: 'Stop voice',
            onPressed: onStop,
            icon: const Icon(Icons.stop_circle_outlined),
          ),
        ],
      ),
    );
  }
}

class _CafeSuggestionBar extends StatelessWidget {
  const _CafeSuggestionBar({
    required this.selectedKey,
    required this.onTap,
    required this.onDismiss,
  });

  final String? selectedKey;
  final ValueChanged<CafeSuggestion> onTap;
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(8, 7, 8, 5),
      decoration: BoxDecoration(
        color: u.surfaceCard,
        border: Border(
          bottom: BorderSide(color: u.structuralBorder),
        ),
      ),
      child: Row(children: [
        Expanded(child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final suggestion in kCafeSuggestions) ...[
                ChoiceChip(
                  label: Text(suggestion.label),
                  selected: selectedKey == suggestion.key,
                  onSelected: (_) => onTap(suggestion),
                  showCheckmark: false,
                  visualDensity: VisualDensity.compact,
                ),
                const SizedBox(width: 6),
              ],
            ],
          ),
        )),
        IconButton(tooltip: 'Dismiss suggestions', onPressed: onDismiss,
          icon: const Icon(Icons.close_rounded, size: 18)),
      ]),
    );
  }
}

class _Composer extends StatelessWidget {
  const _Composer({
    required this.controller,
    required this.hasText,
    required this.sending,
    required this.blocked,
    required this.editing,
    required this.onSend,
    required this.onStop,
    required this.onAttach,
    required this.onCamera,
    required this.onMic,
    required this.onEmojiToggle,
    required this.focusNode,
    required this.emojiSelected,
    required this.onTextTap,
    this.onHoldStart,
    this.onHoldLock,
    this.onReRecord,
    this.holdActive=false,
    this.recordingLocked=false,
    this.recorder,
    this.onCancelRecording,
    this.onStopRecording,
    this.onSendVoiceNote,
    this.onTogglePreview,
    this.onSeekPreview,
    this.previewProgress = 0,
    this.previewPlaying = false,
  });

  final TextEditingController controller;
  final bool hasText;
  final bool sending;
  final bool blocked;
  final bool editing;
  final VoidCallback onSend;
  final VoidCallback onStop;
  final VoidCallback onAttach;
  final VoidCallback onCamera;
  final VoidCallback onMic;
  final Future<void> Function()? onHoldStart, onReRecord;
  final VoidCallback? onHoldLock;
  final bool holdActive,recordingLocked;
  final VoidCallback onEmojiToggle;
  final FocusNode focusNode;
  final bool emojiSelected;
  final VoidCallback onTextTap;
  final VoiceNoteRecorder? recorder;
  final Future<void> Function()? onCancelRecording;
  final Future<void> Function()? onStopRecording;
  final VoidCallback? onSendVoiceNote;
  final VoidCallback? onTogglePreview;
  final ValueChanged<double>? onSeekPreview;
  final double previewProgress;
  final bool previewPlaying;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final isRecording = recorder != null && recorder!.state == VoiceNoteState.recording;
    final isPaused = recorder != null && recorder!.state == VoiceNoteState.paused;
    final isReady = recorder != null && recorder!.state == VoiceNoteState.ready;
    final hasActiveVoice = isRecording || isPaused || isReady;

    final textComposer = SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 6, 8, 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: ListenableBuilder(
                listenable: focusNode,
                builder: (context, _) => AnimatedContainer(
                  duration: const Duration(milliseconds: 130),
                  constraints: const BoxConstraints(minHeight: 48),
                  decoration: BoxDecoration(
                    color: u.surfaceMuted,
                    borderRadius: BorderRadius.circular(26),
                    border: Border.all(color: focusNode.hasFocus
                        ? u.brand.withValues(alpha: .55)
                        : u.structuralBorder.withValues(alpha: .7)),
                  ),
                  child: _buildTextBar(context, u),
                ),
              ),
            ),
            const SizedBox(width: 6),
            Semantics(
              button: true,
              label: blocked ? 'App update required' : editing
                  ? 'Save message edit' : hasText ? 'Send message' : 'Record voice note',
              child: VoiceNoteHoldRegion(
                enabled:!blocked&&!editing&&!sending&&!hasText&&onHoldStart!=null,
                onStart:onHoldStart??()async{},onPreview:onStopRecording??()async{},
                onCancel:onCancelRecording??()async{},onLock:onHoldLock??(){},
                child: Material(
                color: u.brand,
                shape: const CircleBorder(),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: blocked ? null : sending ? onStop
                      : (hasText || editing ? onSend : onMic),
                  child: SizedBox(
                    width: 48,
                    height: 48,
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 160),
                      child: Icon(
                        blocked ? Icons.system_update_outlined
                            : editing ? Icons.check_rounded
                            : sending
                                ? Icons.stop_rounded
                                : hasText
                                    ? Icons.send_rounded
                                    : Icons.mic_rounded,
                        key: ValueKey('$sending-$hasText'),
                        color: Colors.white,
                        size: 23,
                      ),
                    ),
                  ),
                ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
    // Keep the original hold recognizer mounted until the finger lifts. A
    // recording panel that replaces this subtree would lose the gesture end
    // event and leave the microphone recording unexpectedly.
    return Stack(alignment: Alignment.bottomCenter, children: [
      ExcludeSemantics(excluding: hasActiveVoice, child: textComposer),
      if (hasActiveVoice) _buildExpandedVoicePanel(context, u, isRecording, isPaused),
    ]);
  }

  Widget _buildExpandedVoicePanel(BuildContext context, MasanawaColors u,
      bool isRecording, bool isPaused) {
    final active = isRecording || isPaused;
    final narrowLargeText = MediaQuery.sizeOf(context).width <= 360 &&
        MediaQuery.textScalerOf(context).scale(1) > 1.3;
    final durationMs = active
        ? recorder!.elapsed.inMilliseconds
        : recorder!.note?.durationMs ?? recorder!.elapsed.inMilliseconds;
    final controls = <Widget>[
      if (active) IconButton(
        tooltip: ChatUiCopy.of(context,
            isPaused ? 'Resume recording' : 'Pause recording'),
        onPressed: () => unawaited(isPaused
            ? recorder!.resume() : recorder!.pause()),
        icon: Icon(isPaused ? Icons.play_arrow_rounded : Icons.pause_rounded)),
      IconButton(
        tooltip: ChatUiCopy.of(context,
            active ? 'Cancel recording' : 'Discard'),
        onPressed: onCancelRecording,
        icon: Icon(Icons.delete_outline, color: u.emergency, size: 22)),
      IconButton.filledTonal(
        tooltip: ChatUiCopy.of(context, active ? 'Stop & review'
            : previewPlaying ? 'Pause preview' : 'Play preview'),
        onPressed: active ? onStopRecording : onTogglePreview,
        icon: Icon(active ? Icons.stop_rounded :
            previewPlaying ? Icons.pause_rounded
                : Icons.play_arrow_rounded, size: 22)),
      const SizedBox(width: 3),
      Semantics(container: true, button: true,
        label: ChatUiCopy.of(context, 'Send voice note'),
        child: ExcludeSemantics(child: IconButton.filled(
          tooltip: ChatUiCopy.of(context, 'Send voice note'),
          onPressed: sending || active ? null : onSendVoiceNote,
          icon: const Icon(Icons.send_rounded, size: 22)))),
    ];
    return SafeArea(
      top: false,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(8, 6, 8, 8),
        decoration: BoxDecoration(
          color: u.surfaceCard,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          boxShadow: [BoxShadow(
            color: Colors.black.withValues(alpha: .06), blurRadius: 7,
            offset: const Offset(0, -2))],
        ),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(children: [
            if (active) ...[
              const _BlinkingRedDot(),
              const SizedBox(width: 6),
            ],
            Text(formatDurationMs(durationMs), style: TextStyle(
              color: u.textPrimary, fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFeatures: const [FontFeature.tabularFigures()])),
            const SizedBox(width: 6),
            if (!narrowLargeText) Expanded(child: SizedBox(height: 30, child: _VoiceWaveform(
              values: recorder!.waveform,
              progress: active ? 1 : previewProgress,
              enabled: !active && onSeekPreview != null,
              onSeek: onSeekPreview ?? (_) {}))),
            if (!narrowLargeText) ...controls,
          ]),
          if (narrowLargeText) Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: controls),
          if (narrowLargeText)
            Padding(padding: const EdgeInsets.symmetric(vertical: 4),
              child: SizedBox(height: 30, child: _VoiceWaveform(
                values: recorder!.waveform,
                progress: active ? 1 : previewProgress,
                enabled: !active && onSeekPreview != null,
                onSeek: onSeekPreview ?? (_) {}))),
          if (active)
            Text(isPaused ? 'Recording paused · resume or stop to review'
                : recordingLocked ? 'Recording locked · stop to review'
                : holdActive ? 'Slide to cancel · up to lock'
                : 'Recording voice note',
                textAlign: TextAlign.center,
                style: TextStyle(color: u.textMuted, fontSize: 11)),
          if (!active)
            Center(child: Tooltip(message: ChatUiCopy.of(context, 'Record again'),
              child: TextButton.icon(
                onPressed: onReRecord,
                icon: const Icon(Icons.replay_rounded, size: 16),
                label: Text(ChatUiCopy.of(context, 'Record again'))))),
        ]),
      ),
    );
  }

  Widget _buildTextBar(BuildContext context, MasanawaColors u) {
    final longDraft = controller.text.length > 240 ||
        '\n'.allMatches(controller.text).length >= 4;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _ComposerIcon(tooltip: ChatUiCopy.of(context,
            emojiSelected ? 'Keyboard' : 'Emoji'),
          icon: emojiSelected ? Icons.keyboard_rounded : Icons.emoji_emotions_outlined,
          onPressed: onEmojiToggle),

        Expanded(
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            onTap: onTextTap,
            minLines: 1,
            maxLines: 5,
            keyboardType: TextInputType.multiline,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              hintText: ChatUiCopy.of(context, 'Message'),
              filled: false,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              isDense: true,
              contentPadding: const EdgeInsets.fromLTRB(4, 15, 4, 14),
            ),
          ),
        ),
        if (longDraft)
          _ComposerIcon(tooltip: ChatUiCopy.of(context, 'Expand draft'),
            icon: Icons.open_in_full_rounded,
            onPressed: () => unawaited(_openExpandedDraft(context))),
        if (!editing) _ComposerIcon(
          tooltip: ChatUiCopy.of(context, 'Attach'),
          icon: Icons.attach_file,
          onPressed: onAttach,
        ),
        // Camera remains one tap away in Attach on compact handsets. Keep
        // the text input wide enough for Hausa/Arabic and 200% text scaling.
        if (!hasText && !editing &&
            MediaQuery.sizeOf(context).width >= 380 &&
            MediaQuery.textScalerOf(context).scale(1) <= 1.3)
          _ComposerIcon(
            tooltip: ChatUiCopy.of(context, 'Camera'),
            icon: Icons.camera_alt_outlined,
            onPressed: onCamera,
          ),
      ],
    );
  }

  Future<void> _openExpandedDraft(BuildContext context) async {
    final expanded = TextEditingController(text: controller.text);
    try {
      final result = await showModalBottomSheet<String>(context: context,
        isScrollControlled: true, showDragHandle: true,
        builder: (sheetContext) => SafeArea(top: false, child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.viewInsetsOf(sheetContext).bottom),
          child: SizedBox(height: MediaQuery.sizeOf(sheetContext).height * .72,
            child: Column(children: [
              ListTile(title: Text(ChatUiCopy.of(sheetContext, 'Expanded draft')),
                leading: IconButton(tooltip: ChatUiCopy.of(sheetContext,
                    'Discard expanded edits'),
                  onPressed: () => Navigator.pop(sheetContext),
                  icon: const Icon(Icons.close)),
                trailing: TextButton(onPressed: () =>
                    Navigator.pop(sheetContext, expanded.text),
                  child: Text(ChatUiCopy.of(sheetContext, 'Apply')))),
              Expanded(child: Padding(padding: const EdgeInsets.all(16),
                child: TextField(controller: expanded, autofocus: true,
                  keyboardType: TextInputType.multiline,
                  textCapitalization: TextCapitalization.sentences,
                  minLines: null, maxLines: null, expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    hintText: ChatUiCopy.of(sheetContext,
                        'Compose a longer message'),
                    border: const OutlineInputBorder())))),
            ]),
          ),
        )),
      );
      if (result != null && context.mounted) {
        controller.value = TextEditingValue(text: result,
          selection: TextSelection.collapsed(offset: result.length));
        focusNode.requestFocus();
      }
    } finally { expanded.dispose(); }
  }
}

class _BlinkingRedDot extends StatefulWidget {
  const _BlinkingRedDot();

  @override
  State<_BlinkingRedDot> createState() => _BlinkingRedDotState();
}

class _BlinkingRedDotState extends State<_BlinkingRedDot>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _ctrl.value = 1;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (MediaQuery.maybeOf(context)?.disableAnimations == true ||
        Platform.environment.containsKey('FLUTTER_TEST')) {
      _ctrl.stop(); _ctrl.value = 1;
    } else if (!_ctrl.isAnimating) {
      _ctrl.repeat(reverse: true);
    }
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _ctrl,
      child: Container(
        width: 10,
        height: 10,
        decoration: const BoxDecoration(
          color: Colors.redAccent,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class _ComposerIcon extends StatelessWidget {
  const _ComposerIcon({
    required this.tooltip,
    required this.icon,
    required this.onPressed,
  });

  final String tooltip;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return SizedBox(
      width: 36,
      height: 48,
      child: IconButton(
        tooltip: tooltip,
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        icon: Icon(icon, color: u.textMuted, size: 22),
        onPressed: onPressed,
      ),
    );
  }
}

class _PendingAttachmentStrip extends StatelessWidget {
  const _PendingAttachmentStrip({
    required this.attachments,
    required this.onRemove,
  });

  final List<ChatAttachment> attachments;
  final ValueChanged<int> onRemove;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Container(
      height: 92,
      margin: const EdgeInsets.fromLTRB(8, 4, 8, 0),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      decoration: BoxDecoration(
        color: u.surfaceCard,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: u.structuralBorder),
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: attachments.length,
        separatorBuilder: (_, _) => const SizedBox(width: 6),
        itemBuilder: (_, index) {
          final attachment = attachments[index];
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: attachment.kind == 'image' ? 74 : 120,
                height: 78,
                decoration: BoxDecoration(
                  color: u.surfaceMuted,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: u.structuralBorder),
                ),
                clipBehavior: Clip.antiAlias,
                child: attachment.kind == 'image'
                    ? Image.file(
                        File(attachment.path),
                        fit: BoxFit.cover,
                        errorBuilder: (_, _, _) =>
                            const Center(child: Icon(Icons.broken_image_outlined)),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              attachment.kind == 'video'
                                  ? Icons.videocam_outlined
                                  : Icons.insert_drive_file_outlined,
                              color: u.brand,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              attachment.name ?? attachment.label,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: u.textPrimary,
                                fontSize: 10.5,
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
              Positioned(
                top: -4,
                right: -4,
                child: Material(
                  color: u.surfaceCard,
                  shape: const CircleBorder(),
                  child: InkWell(
                    customBorder: const CircleBorder(),
                    onTap: () => onRemove(index),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Icon(
                        Icons.close,
                        size: 15,
                        color: u.textPrimary,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _ReplyComposerPreview extends StatelessWidget {
  const _ReplyComposerPreview({
    required this.message,
    required this.onClose,
    this.senderName = 'Replying to message',
  });

  final AiChatMessage message;
  final VoidCallback onClose;
  final String senderName;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final isVoice = message.attachment?.kind == 'voice';
    final isImage = message.attachment?.kind == 'image';
    final isVideo = message.attachment?.kind == 'video';
    final hasDoc = message.attachment?.kind == 'doc';

    final previewText = message.text.isNotEmpty
        ? message.text
        : (message.attachment?.label ?? 'Message');

    return Container(
      margin: const EdgeInsets.fromLTRB(10, 4, 10, 2),
      decoration: BoxDecoration(
        color: u.surfaceCard,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: u.structuralBorder),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 4,
              color: u.brand,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      senderName,
                      style: TextStyle(
                        color: u.brand,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        if (isVoice) ...[
                          Icon(Icons.mic_rounded, size: 14, color: u.brand),
                          const SizedBox(width: 4),
                        ] else if (isImage) ...[
                          Icon(Icons.photo_outlined, size: 14, color: u.brand),
                          const SizedBox(width: 4),
                        ] else if (isVideo) ...[
                          Icon(Icons.videocam_outlined, size: 14, color: u.brand),
                          const SizedBox(width: 4),
                        ] else if (hasDoc) ...[
                          Icon(Icons.description_outlined, size: 14, color: u.brand),
                          const SizedBox(width: 4),
                        ],
                        Expanded(
                          child: Text(
                            previewText,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: u.textMuted,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              visualDensity: VisualDensity.compact,
              icon: Icon(Icons.close_rounded, size: 18, color: u.textMuted),
              tooltip: 'Cancel reply',
              onPressed: onClose,
            ),
          ],
        ),
      ),
    );
  }
}

/// WhatsApp-style informational marker: not a message, not authored by the
/// simulated person and never included in unread counts or persisted history.
class _PersonaChatDisclosure extends StatelessWidget {
  const _PersonaChatDisclosure({required this.name, required this.publicOfficial});
  final String name;
  final bool publicOfficial;

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    return Center(child: Container(
      key: const ValueKey('masana-ai-chat-disclosure'),
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 20),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      constraints: const BoxConstraints(maxWidth: 320),
      decoration: BoxDecoration(
        color: colors.surfaceMuted,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Semantics(
        label: 'AI persona disclosure',
        child: Text(
          publicOfficial
              ? 'I am an AI persona based on the public profile of $name. '
                  'I am not the real person or their official representative. '
                  'Contact the administrator for enquiries.'
              : 'I am an AI persona called $name, not a real person. '
                  'Contact the administrator for enquiries.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            fontSize: 11, color: colors.textMuted, height: 1.45),
        ),
      ),
    ));
  }
}

class _ChatBubbleTokens {
  const _ChatBubbleTokens._();
  static const groupedGap = 1.0;
  static const regularGap = 4.0;
  static const insetX = 9.0;
  static const insetY = 6.0;
  static const maxWidth = 430.0;
  static const screenFraction = .86;
  static const radius = 13.0;
  static const firstCorner = 4.0;
}
class _ChatBubble extends StatelessWidget {
  _ChatBubble({
    required this.message,
    required this.grouped,
    required this.showMeta,
    required this.agent,
    required this.selected,
    required this.highlighted,
    required this.searchQuery,
    required this.onSelect,
    required this.onReply,
    required this.onReact,
    required this.quickReaction,
    required this.onQuickReactionChosen,
    required this.onJumpToReply,
    required this.onDelete,
    required this.onCopy,
    required this.onForward,
    required this.onShare,
    this.onSaveMedia,
    this.onEdit,
    this.onRetry,
    this.onAgentAction,
    this.onShellAction,
  });

  final AiChatMessage message;
  final bool grouped;
  final bool showMeta;
  final AgentDirectoryEntry agent;
  final bool selected;
  final bool highlighted;
  final String searchQuery;
  final VoidCallback onSelect;
  final VoidCallback onReply;
  final ValueChanged<String> onReact;
  final String quickReaction;
  final ValueChanged<String> onQuickReactionChosen;
  final VoidCallback onJumpToReply;
  final VoidCallback onDelete;
  final VoidCallback onCopy;
  final VoidCallback onForward;
  final VoidCallback onShare;
  final VoidCallback? onSaveMedia;
  final VoidCallback? onEdit;
  final VoidCallback? onRetry;
  final ValueChanged<String>? onAgentAction;
  final ShellActionHandler? onShellAction;

  final GlobalKey _bubbleAnchor = GlobalKey();
  Future<void> _showActions(BuildContext context) async {
    final overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
    final anchor = _bubbleAnchor.currentContext?.findRenderObject() ??
        context.findRenderObject();
    final rect = anchor is RenderBox
        ? Rect.fromPoints(
            anchor.localToGlobal(Offset.zero, ancestor: overlay),
            anchor.localToGlobal(anchor.size.bottomRight(Offset.zero),
                ancestor: overlay))
        : Rect.fromLTWH(24, 96, overlay.size.width - 48, 44);
    // Compact, message-anchored reactions and actions. No human-chat claims.
    final action = await showMenu<String>(
      context: context,
      position: RelativeRect.fromRect(rect, Offset.zero & overlay.size),
      constraints: const BoxConstraints(maxWidth: 300),
      items: [
        PopupMenuItem<String>(
          height: 106,
          child: Wrap(spacing: 4, runSpacing: 4, children: [
            for (final emoji in const ['👍', '❤️', '😂', '😮', '😢', '🙏'])
              Semantics(button: true, excludeSemantics: true,
                label: 'React with $emoji',
                onTap: () => Navigator.of(context).pop('react:$emoji'),
                child: InkWell(borderRadius: BorderRadius.circular(22),
                  onTap: () => Navigator.of(context).pop('react:$emoji'),
                  child: SizedBox(width: 44, height: 44,
                    child: Center(child: Text(emoji,
                      style: const TextStyle(fontSize: 22))))),
              ),
            Semantics(button: true, excludeSemantics: true,
              label: 'More reactions',
              onTap: () => Navigator.of(context).pop('more-reactions'),
              child: InkWell(borderRadius: BorderRadius.circular(22),
                onTap: () => Navigator.of(context).pop('more-reactions'),
                child: const SizedBox(width: 44, height: 44,
                  child: Center(child: Icon(Icons.add_rounded)))),
            ),
          ]),
        ),
        const PopupMenuDivider(),
        const PopupMenuItem(value: 'reply', child: Text('Reply')),
         const PopupMenuItem(value: 'quick-reaction',
           child: Text('Set double-tap reaction')),
        const PopupMenuItem(value: 'copy', child: Text('Copy')),
        if (onEdit != null)
          const PopupMenuItem(value: 'edit', child: Text('Edit on this device')),
        const PopupMenuItem(value: 'forward', child: Text('Forward')),
        const PopupMenuItem(value: 'share', child: Text('Share')),
        if (onSaveMedia != null)
          const PopupMenuItem(value: 'save', child: Text('Save media')),
        const PopupMenuItem(value: 'select', child: Text('Select')),
        const PopupMenuItem(value: 'delete', child: Text('Hide on this device')),
        if (!message.isUser) ...[
          const PopupMenuDivider(),
          for (final item in const [
            ('regenerate', 'Regenerate'),
            ('shorter', 'Shorter'),
            ('detail', 'More detailed'),
            ('simple', 'Explain simply'),
            ('translate', 'Translate'),
            ('audio', 'Read aloud'),
            ('continue', 'Continue'),
          ])
            PopupMenuItem<String>(
              value: 'agent:${item.$1}', child: Text(item.$2)),
        ],
      ],
    );
    if (action == null) return;
    if (action == 'reply') onReply();
    if (action == 'copy') onCopy();
    if (action == 'forward') onForward();
    if (action == 'share') onShare();
    if (action == 'save') onSaveMedia?.call();
    if (action == 'select') onSelect();
    if (action == 'edit') onEdit?.call();
    if (action == 'delete') onDelete();
    if (action == 'more-reactions' || action == 'quick-reaction') {
      if (!context.mounted) return;
      final emoji = await showModalBottomSheet<String>(
        context: context, showDragHandle: true,
        builder: (sheetContext) => SafeArea(child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            const Text('Choose a reaction'),
            const SizedBox(height: 12),
            Wrap(spacing: 4, runSpacing: 4, children: [
              for (final choice in const ['👍','❤️','😂','😮','😢','🙏',
                '👏','😍','🔥','🎉','😊','🤔','💯','🙌','🤲','✅','😅','💚'])
                SizedBox(width: 52, height: 52, child: TextButton(
                  onPressed: () => Navigator.pop(sheetContext, choice),
                  child: Text(choice, style: const TextStyle(fontSize: 24)))),
            ]),
          ]),
        )),
      );
      if (emoji != null) {
         if (action == 'quick-reaction') {
           onQuickReactionChosen(emoji);
         } else {
           onReact(emoji);
         }
       }
    }
    if (action.startsWith('react:')) onReact(action.substring(6));
    if (action.startsWith('agent:')) {
      onAgentAction?.call(action.substring(6));
    }
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final isUser = message.isUser;
    final failedParts = message.parts.where(
      (p) => p.kind == AgentMessagePartKind.status && p.status == 'failed',
    );
    final failure = failedParts.isEmpty ? null : failedParts.first;
    final attachments = message.allAttachments;
    return Align(
      alignment: failure != null ? Alignment.center : isUser ? AlignmentDirectional.centerEnd : AlignmentDirectional.centerStart,
      child: Semantics(container: true,
        label: '${isUser ? 'You' : agent.displayName}, '
            '${formatClock(message.createdAt)}, '
            '${message.deleted ? 'hidden on this device' : message.text}, '
            '${message.deliveryStatus}${message.reaction == null ? '' : ', reaction ${message.reaction}'}',
        child: GestureDetector(
        onLongPress: () => _showActions(context),
        onDoubleTap: () => onReact(quickReaction),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              key: _bubbleAnchor,
              margin: EdgeInsets.symmetric(vertical: grouped
                  ? _ChatBubbleTokens.groupedGap : _ChatBubbleTokens.regularGap),
              padding: const EdgeInsets.symmetric(
                horizontal: _ChatBubbleTokens.insetX,
                vertical: _ChatBubbleTokens.insetY),
              constraints: BoxConstraints(
                maxWidth: math.min(_ChatBubbleTokens.maxWidth,
                  MediaQuery.sizeOf(context).width * _ChatBubbleTokens.screenFraction),
              ),
              decoration: BoxDecoration(
                color: failure != null ? u.surfaceMuted
                    : isUser ? u.bubbleOut : u.surfaceCard,
                borderRadius: failure != null ? BorderRadius.circular(12)
                    : BorderRadiusDirectional.only(
                        topStart: Radius.circular(isUser || grouped
                            ? _ChatBubbleTokens.radius : _ChatBubbleTokens.firstCorner),
                        topEnd: Radius.circular(!isUser || grouped
                            ? _ChatBubbleTokens.radius : _ChatBubbleTokens.firstCorner),
                        bottomStart: const Radius.circular(13),
                        bottomEnd: const Radius.circular(13),
                      ),
                boxShadow: selected || highlighted
                    ? [BoxShadow(color: (highlighted ? u.warning : u.brand)
                        .withValues(alpha: .3), spreadRadius: 2)]
                    : null,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (message.replyPreview case final preview?
                      when preview.trim().isNotEmpty)
                    InkWell(
                      onTap: onJumpToReply,
                      child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 7),
                      padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
                      decoration: BoxDecoration(
                        color: u.surfaceBg.withValues(alpha: .65),
                        borderRadius: BorderRadius.circular(7),
                        border: BorderDirectional(
                          start: BorderSide(color: u.brand, width: 3)),
                      ),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(message.isUser ? 'Reply to Masana' : 'Reply to you',
                            style: TextStyle(color: u.brand, fontSize: 11,
                              fontWeight: FontWeight.w600)),
                          Text(preview, maxLines: 2, overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: u.textMuted, fontSize: 12)),
                        ]),
                      ),
                    ),
                  if (message.deleted)
                    Text(
                      'Hidden on this device',
                      style: TextStyle(
                        color: u.textMuted,
                        fontStyle: FontStyle.italic,
                      ),
                    )
                  else ...[
                    if (attachments.isNotEmpty) ...[
                      _AttachmentGallery(attachments: attachments,
                        senderIsUser: isUser, agent: agent,
                        caption: message.text),
                      if (message.text.isNotEmpty) const SizedBox(height: 6),
                    ],
                    if (message.uploadProgress case final progress?
                        when !attachments.any((a) => a.kind == 'voice' || a.kind == 'audio') &&
                            (message.deliveryStatus == 'uploading' || message.deliveryStatus == 'processing')) ...[
                      const SizedBox(height: 6),
                      LinearProgressIndicator(
                        value: message.deliveryStatus == 'processing'
                            ? null
                            : progress,
                        minHeight: 3,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        message.deliveryStatus == 'processing'
                            ? 'Processing attachments…'
                            : 'Uploading ${(progress * 100).round()}%',
                        style: TextStyle(color: u.textMuted, fontSize: 10.5),
                      ),
                    ],
                    if (message.text.isNotEmpty)
                      if (!isUser && attachments.any((a) => a.kind == 'voice'))
                        _CollapsibleTranscript(text: message.text)
                      else
                        failure != null
                          ? Text(message.text, textAlign: TextAlign.center, style: TextStyle(color: u.textMuted))
                          : _RichMessageText(text: message.text,
                              highlightQuery: highlighted ? searchQuery : ''),
                    if (message.parts.any((p) => p != failure))
                      MessagePartsView(
                        parts: message.parts.where((p) => p != failure).toList(),
                        onAction: onShellAction,
                      ),
                  ],
                  if (failure != null)
                    Center(child: TextButton.icon(
                      onPressed: onRetry,
                      icon: const Icon(Icons.refresh, size: 18),
                      label: Text(failure.actionLabel ?? 'Try again'),
                    )),
                  if (showMeta) const SizedBox(height: 3),
                  if (showMeta) Align(alignment: AlignmentDirectional.centerEnd,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (message.editedAt != null)
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Text(
                            'edited',
                            style: TextStyle(color: u.textMuted, fontSize: 10),
                          ),
                        ),
                      Text(
                        formatClock(message.createdAt),
                        style: TextStyle(color: u.textMuted, fontSize: 10.5),
                      ),
                      if (isUser) ...[
                        const SizedBox(width: 3),
                        Icon(
                          switch (message.deliveryStatus) {
                            'sending' || 'uploading' || 'processing' =>
                              Icons.schedule,
                            'queued' => Icons.cloud_off_outlined,
                            'failed' => Icons.error_outline,
                            'stopped' => Icons.stop_circle_outlined,
                            'sent' => Icons.done,
                            'delivered' || 'read' => Icons.done_all,
                            _ => Icons.schedule,
                          },
                          size: 14,
                          color: message.deliveryStatus == 'failed'
                              ? u.emergency
                              : message.deliveryStatus == 'queued'
                              ? u.warning
                              : message.deliveryStatus == 'read'
                              ? u.tickRead
                              : u.textMuted,
                        ),
                      ],
                    ],
                  ),
                  ),
                ],
              ),
            ),
            if (!grouped && failure == null)
              PositionedDirectional(
                top: 4,
                start: isUser ? null : -6,
                end: isUser ? -6 : null,
                child: CustomPaint(size: const Size(8, 10),
                  painter: _ChatBubbleNipPainter(
                    isUser ? u.bubbleOut : u.surfaceCard,
                    toRight: isUser !=
                        (Directionality.of(context) == TextDirection.rtl)))),
            if ((message.reaction ?? '').isNotEmpty)
              PositionedDirectional(
                end: isUser ? 8 : null,
                start: isUser ? null : 8,
                bottom: -6,
                child: InkWell(onTap: () => onReact(message.reaction!),
                  borderRadius: BorderRadius.circular(12), child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: u.surfaceCard,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: u.structuralBorder),
                  ),
                  child: Text(message.reaction!, style: const TextStyle(fontSize: 14)),
                )),
              ),
          ],
        ),
      ),
      ),
    );
  }
}

class _ChatBubbleNipPainter extends CustomPainter {
  const _ChatBubbleNipPainter(this.color, {required this.toRight});
  final Color color;
  final bool toRight;
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(toRight ? 0 : size.width, 0)
      ..lineTo(toRight ? size.width : 0, 4)
      ..lineTo(toRight ? 0 : size.width, size.height)
      ..close();
    canvas.drawPath(path, Paint()..color = color);
  }
  @override
  bool shouldRepaint(_ChatBubbleNipPainter old) =>
      old.color != color || old.toRight != toRight;
}

class _CollapsibleTranscript extends StatefulWidget {
  const _CollapsibleTranscript({required this.text});
  final String text;
  @override
  State<_CollapsibleTranscript> createState() => _CollapsibleTranscriptState();
}

class _CollapsibleTranscriptState extends State<_CollapsibleTranscript> {
  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Container(
      margin: const EdgeInsets.only(top: 4),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(color: u.surfaceBg.withValues(alpha: .55),
        borderRadius: BorderRadius.circular(8)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextButton.icon(onPressed: () => setState(() => _expanded = !_expanded),
          icon: Icon(_expanded ? Icons.expand_less : Icons.subtitles_outlined, size: 16),
          label: Text(_expanded ? 'Hide transcript' : 'Show transcript')),
        if (_expanded) Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: _RichMessageText(text: widget.text)),
      ]),
    );
  }
}

/// A quiet Masanawa texture gives the conversation depth without reusing a
/// third-party wallpaper asset or competing with message text.
class _ChatTexturePainter extends CustomPainter {
  const _ChatTexturePainter(this.color);
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final pen = Paint()..color = color..style = PaintingStyle.stroke..strokeWidth = 1;
    for (double y = 18; y < size.height + 72; y += 76) {
      for (double x = 20; x < size.width + 72; x += 76) {
        final shiftedX = x + ((y ~/ 76).isEven ? 0 : 30);
        canvas.drawCircle(Offset(shiftedX, y), 11, pen);
        canvas.drawCircle(Offset(shiftedX, y), 3, pen);
        canvas.drawLine(Offset(shiftedX + 26, y + 19),
          Offset(shiftedX + 40, y + 19), pen);
        canvas.drawLine(Offset(shiftedX + 33, y + 12),
          Offset(shiftedX + 33, y + 26), pen);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _ChatTexturePainter oldDelegate) =>
      oldDelegate.color != color;
}

class _DateSeparator extends StatelessWidget {
  const _DateSeparator({required this.date});
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final now = DateTime.now();
    final label = _label(now, date);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: u.surfaceCard,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: u.structuralBorder),
          ),
          child: Text(ChatUiCopy.of(context, label),
              style: TextStyle(color: u.textMuted, fontSize: 11)),
        ),
      ),
    );
  }

  String _label(DateTime now, DateTime date) {
    date = date.toLocal();
    final today = DateTime(now.year, now.month, now.day);
    final day = DateTime(date.year, date.month, date.day);
    final diff = today.difference(day).inDays;
    if (diff == 0) return 'Today';
    if (diff == 1) return 'Yesterday';
    return '${date.day}/${date.month}/${date.year}';
  }
}

class _RichMessageText extends StatelessWidget {
  const _RichMessageText({required this.text, this.highlightQuery = ''});
  final String text;
  final String highlightQuery;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final matching = highlightQuery.trim().toLowerCase();
    if (matching.isNotEmpty && text.toLowerCase().contains(matching)) {
      final spans = <TextSpan>[];
      final lower = text.toLowerCase();
      var offset = 0;
      while (offset < text.length) {
        final found = lower.indexOf(matching, offset);
        if (found < 0) {
          spans.add(TextSpan(text: text.substring(offset)));
          break;
        }
        if (found > offset) spans.add(TextSpan(text: text.substring(offset, found)));
        spans.add(TextSpan(text: text.substring(found, found + matching.length),
          style: TextStyle(backgroundColor: u.warning.withValues(alpha: .45),
            fontWeight: FontWeight.w700)));
        offset = found + matching.length;
      }
      return SelectableText.rich(TextSpan(
        style: TextStyle(color: u.textPrimary, fontSize: 15, height: 1.4),
        children: spans));
    }
    if (isEmojiOnlyChatText(text)) {
      return SelectableText(text, style: const TextStyle(fontSize: 38, height: 1.3,
        fontFamilyFallback: ['Noto Color Emoji', 'Apple Color Emoji', 'Segoe UI Emoji']));
    }
    if (!RegExp(r'(^|\n)\s*(#{1,6} |[-*] |\d+\. |> |\|)|\*\*|\[.+?\]\(|```')
        .hasMatch(text)) {
      return SelectableText(text,
        style: TextStyle(color: u.textPrimary, fontSize: 15, height: 1.4));
    }
    final chunks = text.split('```');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < chunks.length; i++)
          if (i.isEven)
            if (chunks[i].trim().isNotEmpty)
              MarkdownBody(
                data: chunks[i],
                selectable: true,
                onTapLink: (_, href, _) async {
                  if (href == null) return;
                  final uri = Uri.tryParse(href);
                  if (uri != null &&
                      (uri.scheme == 'https' || uri.scheme == 'http')) {
                    await launchUrl(
                      uri,
                      mode: LaunchMode.externalApplication,
                    );
                  }
                },
                styleSheet: MarkdownStyleSheet(
                  p: TextStyle(
                    color: u.textPrimary,
                    fontSize: 15,
                    height: 1.4,
                  ),
                  h1: TextStyle(
                    color: u.textPrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  h2: TextStyle(
                    color: u.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  h3: TextStyle(
                    color: u.textPrimary,
                    fontSize: 16.5,
                    fontWeight: FontWeight.w700,
                  ),
                  code: TextStyle(
                    color: u.textPrimary,
                    fontFamily: 'monospace',
                    fontSize: 12.5,
                  ),
                  tableBorder: TableBorder.all(color: u.structuralBorder),
                  tableCellsPadding: const EdgeInsets.all(6),
                ),
              )
          else
            _CodeBlock(raw: chunks[i]),
      ],
    );
  }
}

class _CodeBlock extends StatelessWidget {
  const _CodeBlock({required this.raw});
  final String raw;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final firstBreak = raw.indexOf('\n');
    final language = firstBreak > 0 &&
        RegExp(r'^[a-zA-Z0-9_+#.-]+$').hasMatch(raw.substring(0, firstBreak))
        ? raw.substring(0, firstBreak) : '';
    final value = firstBreak > 0 &&
            RegExp(r'^[a-zA-Z0-9_+#.-]+$').hasMatch(raw.substring(0, firstBreak))
        ? raw.substring(firstBreak + 1).trimRight()
        : raw.trim();
    if (value.isEmpty) return const SizedBox.shrink();

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.fromLTRB(10, 10, 4, 10),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: .07),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            if (language.isNotEmpty) Expanded(child: Text(language.toUpperCase(),
              style: TextStyle(color: u.textMuted, fontSize: 10)))
            else const Spacer(),
            IconButton(tooltip: 'Copy code',
              icon: const Icon(Icons.copy, size: 16),
              onPressed: () => Clipboard.setData(ClipboardData(text: value))),
          ]),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: SelectableText(
              value,
              style: TextStyle(
                color: u.textPrimary,
                fontFamily: 'monospace',
                fontSize: 12.5,
                height: 1.35,
              ),
            )),
        ],
      ),
    );
  }
}

class _AttachmentGallery extends StatelessWidget {
  const _AttachmentGallery({required this.attachments,
    required this.senderIsUser, required this.agent,
    this.caption = ''});
  final List<ChatAttachment> attachments;
  final bool senderIsUser;
  final AgentDirectoryEntry agent;
  final String caption;

  @override
  Widget build(BuildContext context) {
    final imageAttachments =
        attachments.where((item) => item.kind == 'image').toList();
    final imagePaths = imageAttachments.map((item) => item.path).toList();

    if (attachments.length == 1) {
      return _AttachmentView(
        attachment: attachments.first,
        senderIsUser: senderIsUser,
        agent: agent,
        imagePaths: imagePaths,
        imageIndex: 0,
        caption: caption,
      );
    }
    if (imageAttachments.length == attachments.length) {
      // Show a bounded album rather than a potentially tall 8-photo wrap.
      // The last cell opens the full ordered viewer, including hidden photos.
      return LayoutBuilder(builder: (context, constraints) {
        final width = math.min(300.0, constraints.maxWidth.isFinite
            ? constraints.maxWidth : MediaQuery.sizeOf(context).width * .76);
        final gap = 3.0;
        final half = (width - gap) / 2;
        final height = math.min(240.0, width * .82);
        Widget photo(int index, double tileHeight) => _AlbumPhotoTile(
          path: imagePaths[index], paths: imagePaths, index: index,
          caption: caption, height: tileHeight,
          remaining: imagePaths.length > 4 && index == 3
              ? imagePaths.length - 4 : 0,
        );
        if (imagePaths.length == 2) {
          return SizedBox(width: width, child: Row(children: [
            Expanded(child: photo(0, height * .72)),
            SizedBox(width: gap),
            Expanded(child: photo(1, height * .72)),
          ]));
        }
        if (imagePaths.length == 3) {
          return SizedBox(width: width, height: height, child: Row(children: [
            SizedBox(width: half, child: photo(0, height)),
            SizedBox(width: gap),
            Expanded(child: Column(children: [
              photo(1, (height - gap) / 2),
              SizedBox(height: gap),
              photo(2, (height - gap) / 2),
            ])),
          ]));
        }
        return SizedBox(width: width, height: height, child: Column(children: [
          Row(children: [
            Expanded(child: photo(0, (height - gap) / 2)),
            SizedBox(width: gap),
            Expanded(child: photo(1, (height - gap) / 2)),
          ]),
          SizedBox(height: gap),
          Row(children: [
            Expanded(child: photo(2, (height - gap) / 2)),
            SizedBox(width: gap),
            Expanded(child: photo(3, (height - gap) / 2)),
          ]),
        ]));
      });
    }
    return LayoutBuilder(builder: (context, constraints) {
      final width = math.min(300.0, constraints.maxWidth.isFinite
          ? constraints.maxWidth : MediaQuery.sizeOf(context).width * .76);
      final tileWidth = (width - 4) / 2;
      return SizedBox(width: width, child: Wrap(
        spacing: 4,
        runSpacing: 4,
        children: [
          for (final attachment in attachments)
            SizedBox(
              width: attachment.kind == 'image' ? tileWidth : width,
              child: _AttachmentView(
                attachment: attachment,
                senderIsUser: senderIsUser,
                agent: agent,
                imagePaths: imagePaths,
                imageIndex: attachment.kind == 'image'
                    ? imageAttachments.indexOf(attachment)
                    : 0,
                caption: caption,
              ),
            ),
        ],
      ));
    });
  }
}

class _AlbumPhotoTile extends StatelessWidget {
  const _AlbumPhotoTile({required this.path, required this.paths,
    required this.index, required this.caption, required this.height,
    required this.remaining});
  final String path;
  final List<String> paths;
  final int index;
  final String caption;
  final double height;
  final int remaining;

  @override
  Widget build(BuildContext context) => Semantics(
    button: true,
    label: 'Open photo ${index + 1} of ${paths.length}',
    child: GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (_) => _ImageGalleryViewer(
          paths: paths, initialIndex: index, caption: caption),
      )),
      child: ClipRRect(borderRadius: BorderRadius.circular(7),
        child: SizedBox(height: height, width: double.infinity,
          child: Stack(fit: StackFit.expand, children: [
            Image.file(File(path), fit: BoxFit.cover,
              errorBuilder: (_, _, _) => ColoredBox(
                color: Colors.black12,
                child: const Center(child: Icon(Icons.broken_image_outlined)))),
            if (remaining > 0) ColoredBox(
              color: Colors.black.withValues(alpha: .58),
              child: Center(child: Text('+$remaining', style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700,
                fontSize: 27)))),
          ])),
      ),
    ),
  );
}

class _AttachmentView extends StatelessWidget {
  const _AttachmentView({
    required this.attachment,
    required this.senderIsUser,
    required this.agent,
    this.imagePaths = const [],
    this.imageIndex = 0,
    this.caption = '',
  });

  final ChatAttachment attachment;
  final bool senderIsUser;
  final AgentDirectoryEntry agent;
  final List<String> imagePaths;
  final int imageIndex;
  final String caption;

  @override
  Widget build(BuildContext context) {
    if (attachment.kind == 'video') {
      final u = context.masanawa;
      return Semantics(label: 'Historic video attachment unavailable',
        child: Container(
          constraints: const BoxConstraints(maxWidth: 280),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(color: u.surfaceMuted,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: u.structuralBorder)),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Icon(Icons.videocam_off_outlined, color: u.textMuted),
            const SizedBox(width: 8),
            Flexible(child: Text('Historic video · preview unavailable',
              style: TextStyle(color: u.textMuted, fontSize: 12))),
          ])));
    }
    if (attachment.path.startsWith('masanawa-remote|')) {
      return _RemoteChatMediaTile(attachment: attachment);
    }
    switch (attachment.kind) {
      case 'image':
        return _ImageAttachment(
          path: attachment.path,
          galleryPaths: imagePaths.isEmpty ? [attachment.path] : imagePaths,
          initialIndex: imageIndex,
          caption: caption,
        );
      case 'voice':
      case 'audio':
        return _VoiceBubble(attachment: attachment,
          senderIsUser: senderIsUser, agent: agent);
      default:
        return _DocTile(attachment: attachment);
    }
  }
}

/// Older media stays on the authenticated Gateway without an automatic
/// expensive download. Tapping fetches its exact original bytes into this
/// signed-in account's private cache; the usual player then replaces this tile.
class _RemoteChatMediaTile extends ConsumerStatefulWidget {
  const _RemoteChatMediaTile({required this.attachment});
  final ChatAttachment attachment;

  @override
  ConsumerState<_RemoteChatMediaTile> createState() =>
      _RemoteChatMediaTileState();
}

class _RemoteChatMediaTileState extends ConsumerState<_RemoteChatMediaTile> {
  bool _loading = false;
  bool _downloadFailed = false;

  Future<void> _download() async {
    if (_loading) return;
    setState(() { _loading = true; _downloadFailed = false; });
    try {
      await ref.read(aiChatProvider.notifier)
          .downloadRemoteChatMedia(widget.attachment.path);
    } catch (_) {
      if (!mounted) return;
      setState(() => _downloadFailed = true);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final kind = widget.attachment.kind;
    final label = widget.attachment.name ??
        (kind == 'voice' || kind == 'audio' ? 'Voice note' :
         kind == 'image' ? 'Photo' :
         kind == 'video' ? 'Video' : 'Document');
    return Semantics(
      button: true,
      label: 'Download $label securely',
      child: Column(mainAxisSize: MainAxisSize.min, children: [
      if (widget.attachment.sizeBytes case final bytes? when bytes > 0)
        Padding(padding: const EdgeInsets.only(bottom: 4),
          child: Text('${kind.toUpperCase()} · ${(bytes / 1024).ceil()} KB',
            maxLines: 1, overflow: TextOverflow.ellipsis,
            style: TextStyle(color: context.masanawa.textMuted, fontSize: 11))),
      OutlinedButton.icon(
        onPressed: _loading ? null : _download,
        icon: _loading
            ? const SizedBox(width: 17, height: 17,
                child: CircularProgressIndicator(strokeWidth: 2))
            : const Icon(Icons.download_for_offline_outlined),
        label: Text(_loading ? 'Downloading...' :
            _downloadFailed ? 'Retry $label' : label,
          maxLines: 2, overflow: TextOverflow.ellipsis),
      ),
      if (_downloadFailed) const Text(
        'Download failed · check connection and try again',
        textAlign: TextAlign.center),
      ]),
    );
  }
}

class _ImageAttachment extends StatelessWidget {
  const _ImageAttachment({
    required this.path,
    required this.galleryPaths,
    required this.initialIndex,
    required this.caption,
  });

  final String path;
  final List<String> galleryPaths;
  final int initialIndex;
  final String caption;

  @override
  Widget build(BuildContext context) {
    final file = File(path);
    final singleImage = galleryPaths.length <= 1;
    final photoWidth = math.min(280.0, MediaQuery.sizeOf(context).width * .7);
    return Semantics(button: true, label: 'Open photo', child: GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute<void>(
          fullscreenDialog: true,
          builder: (_) => _ImageGalleryViewer(
            paths: galleryPaths,
            initialIndex: initialIndex,
            caption: caption,
          ),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: photoWidth,
            maxHeight: singleImage ? 340 : 260),
          child: Image.file(
          file,
          width: photoWidth,
          height: singleImage ? null : 126,
          fit: singleImage ? BoxFit.contain : BoxFit.cover,
          errorBuilder: (_, _, _) => Container(
            width: photoWidth,
            height: 120,
            color: Colors.black12,
            alignment: Alignment.center,
            child: const Icon(Icons.broken_image_outlined),
          ),
        ),
        ),
      ),
    ));
  }
}

class _ImageGalleryViewer extends StatefulWidget {
  const _ImageGalleryViewer({
    required this.paths,
    required this.initialIndex,
    this.caption = '',
  });

  final List<String> paths;
  final int initialIndex;
  final String caption;

  @override
  State<_ImageGalleryViewer> createState() => _ImageGalleryViewerState();
}

class _ImageGalleryViewerState extends State<_ImageGalleryViewer> {
  late final PageController _controller;
  late int _index;
  bool _saving = false, _sharing = false;

  Future<void> _shareCurrent() async {
    if (_sharing) return;
    final path = widget.paths[_index];
    if (!await File(path).exists()) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('This photo is unavailable on this device.')));
      return;
    }
    setState(() => _sharing = true);
    try {
      await SharePlus.instance.share(ShareParams(
        text: widget.caption.isEmpty ? null : widget.caption,
        files: [XFile(path)]));
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Could not open sharing for this photo.')));
    } finally {
      if (mounted) setState(() => _sharing = false);
    }
  }

  Future<void> _saveCurrent() async {
    if (_saving) return;
    setState(() => _saving = true);
    try {
      final path = widget.paths[_index];
      final bytes = await File(path).readAsBytes();
      final filename = path.split(Platform.pathSeparator).last;
      final output = await FilePicker.saveFile(
        dialogTitle: 'Save photo from Masanawa',
        fileName: filename.isEmpty ? 'masanawa-photo.jpg' : filename,
        bytes: bytes, mimeType: lookupMimeType(path) ?? 'image/jpeg');
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(output == null ? 'Save cancelled'
            : 'Photo saved through the device file picker')));
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Could not save this photo. Try again.')));
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  void initState() {
    super.initState();
    _index = widget.initialIndex
        .clamp(0, widget.paths.length - 1)
        .toInt();
    _controller = PageController(initialPage: _index);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            children: [
              PageView.builder(
                controller: _controller,
                itemCount: widget.paths.length,
                onPageChanged: (index) => setState(() => _index = index),
                itemBuilder: (_, index) => Center(
                  child: InteractiveViewer(
                    minScale: 0.7,
                    maxScale: 5,
                    child: Image.file(
                      File(widget.paths[index]),
                      fit: BoxFit.contain,
                      errorBuilder: (_, _, _) => const Padding(
                        padding: EdgeInsets.all(24),
                        child: Text(
                          'Photo no longer available on this device.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              PositionedDirectional(
                top: 8,
                start: 8,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  tooltip: 'Close photo viewer',
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              if (widget.paths.length > 1)
                Positioned(
                  top: 16,
                  left: 0,
                  right: 0,
                  child: IgnorePointer(
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Text(
                          '${_index + 1}/${widget.paths.length}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              Align(alignment: AlignmentDirectional.bottomCenter,
                child: Container(
                  width: double.infinity,
                  color: Colors.black.withValues(alpha: .68),
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 12),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    if (widget.caption.trim().isNotEmpty)
                      Padding(padding: const EdgeInsets.only(bottom: 6),
                        child: Text(widget.caption, maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white))),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton.icon(onPressed: _sharing ? null :
                            () => unawaited(_shareCurrent()),
                          icon: const Icon(Icons.share_outlined),
                          label: Text(_sharing ? 'Sharing…' : 'Share'),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            minimumSize: const Size(96, 48))),
                        TextButton.icon(onPressed: _saving ? null :
                            () => unawaited(_saveCurrent()),
                          icon: const Icon(Icons.download_outlined),
                          label: Text(_saving ? 'Saving…' : 'Save'),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            minimumSize: const Size(96, 48))),
                      ]),
                  ]),
                ),
              ),
            ],
          ),
        ),
      );
}

class _DocTile extends StatelessWidget {
  const _DocTile({required this.attachment});
  final ChatAttachment attachment;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final name = attachment.name ?? 'Document';
    final dot = name.lastIndexOf('.');
    final typeLabel = dot > 0 && dot < name.length - 1
        ? name.substring(dot + 1).toUpperCase()
        : (lookupMimeType(attachment.path)?.split('/').last.toUpperCase() ??
              'FILE');
    final meta = [
      typeLabel,
      if (attachment.sizeBytes != null) formatBytes(attachment.sizeBytes!),
    ].join(' · ');
    return Container(
      width: math.min(280.0, MediaQuery.sizeOf(context).width * .74),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.insert_drive_file, size: 34, color: u.brand),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  attachment.name ?? 'Document',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: u.textPrimary,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  meta,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: u.textMuted, fontSize: 11.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _VoiceWaveform extends StatelessWidget {
  const _VoiceWaveform({
    required this.values,
    required this.progress,
    required this.enabled,
    required this.onSeek,
  });

  final List<double> values;
  final double progress;
  final bool enabled;
  final ValueChanged<double> onSeek;

  void _seekFromDx(double dx, double width, bool rtl) {
    if (!enabled || width <= 0) return;
    onSeek(((rtl ? width - dx : dx) / width).clamp(0.0, 1.0).toDouble());
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    if(values.isEmpty)return SizedBox(height:28,child:Slider(
      value:progress.clamp(0.0,1.0).toDouble(),onChanged:enabled?onSeek:null,
      semanticFormatterCallback:(value)=>'${(value*100).round()} percent',
    ));
    final bars = values;
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final rtl = Directionality.of(context) == TextDirection.rtl;
        return Semantics(label: 'Voice playback position',
          value: '${(progress * 100).round()} percent',
          increasedValue: enabled
              ? '${((progress + .05).clamp(0.0, 1.0) * 100).round()} percent'
              : null,
          decreasedValue: enabled
              ? '${((progress - .05).clamp(0.0, 1.0) * 100).round()} percent'
              : null,
          onIncrease: enabled ? () => onSeek((progress + .05).clamp(0.0, 1.0).toDouble()) : null,
          onDecrease: enabled ? () => onSeek((progress - .05).clamp(0.0, 1.0).toDouble()) : null,
          child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapDown: (details) => _seekFromDx(details.localPosition.dx, width, rtl),
          onHorizontalDragUpdate: (details) =>
              _seekFromDx(details.localPosition.dx, width, rtl),
          child: SizedBox(
            height: 28,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (var i = 0; i < bars.length; i++) ...[
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 2.2,
                            height:
                                (4 + bars[i].clamp(0.0, 1.0) * 18).toDouble(),
                            decoration: BoxDecoration(
                              color: (i / bars.length) <= progress
                                  ? u.brand
                                  : u.textMuted.withValues(alpha: .35),
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                      ),
                      if (i != bars.length - 1) const SizedBox(width: 1),
                    ],
                  ],
                ),
                if (progress > 0.01 && progress < 0.99)
                  PositionedDirectional(
                    start: ((width - 8) * progress).clamp(0.0, width - 8).toDouble(),
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: u.brand,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: u.brand.withValues(alpha: 0.45),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ));
      },
    );
  }
}

class _VoicePlaybackScope extends InheritedWidget {
  const _VoicePlaybackScope({this.message, this.noteId, required this.onStart,
    required this.onComplete, required this.onStop, required super.child});
  final AiChatMessage? message;
  final String? noteId;
  final int? Function(String) onStart;
  final void Function(String, int?) onComplete;
  final VoidCallback onStop;
  String? idFor(ChatAttachment attachment) {
    if (noteId != null) return noteId;
    final index = message?.allAttachments.indexOf(attachment) ?? -1;
    return index < 0 ? null : '${message!.id}:$index';
  }
  @override
  bool updateShouldNotify(_VoicePlaybackScope oldWidget) => message != oldWidget.message || noteId != oldWidget.noteId;
}

String? _pendingVoiceAutoplay;
_VoiceBubbleState? _activeVoiceBubble;
_AiChatScreenState? _activeComposerPreviewScreen;
double _sharedVoiceSpeed = 1.0;
// Serialize native route changes: disposal of an old bubble must finish before
// a new bubble activates its route, and must never deactivate its successor.
Future<void> _voiceRouteWork = Future<void>.value();
Future<T> _withVoiceRoute<T>(Future<T> Function() work) {
  final result = Completer<T>();
  _voiceRouteWork = _voiceRouteWork.then((_) async {
    try {
      result.complete(await work());
    } catch (error, stack) {
      result.completeError(error, stack);
    }
  });
  return result.future;
}

class _VoiceBubble extends StatefulWidget {
  const _VoiceBubble({super.key, required this.attachment,
    required this.agent, this.senderIsUser=false,
    this.continuationGeneration, this.canContinue});
  final ChatAttachment attachment;
  final AgentDirectoryEntry agent;
  final bool senderIsUser;
  final int? continuationGeneration;
  final bool Function()? canContinue;

  @override
  State<_VoiceBubble> createState() => _VoiceBubbleState();
}

class _VoiceBubbleState extends State<_VoiceBubble> {
  AudioPlayer? _player;
  _VoicePlaybackScope? _sequenceScope;
  String? _noteId;
  int? _sequenceGeneration;
  int _playRequest = 0;
  bool _finishing = false;
  StreamSubscription<AudioInterruptionEvent>? _interruptionSub;
  StreamSubscription<PlayerState>? _stateSub;
  StreamSubscription<Duration>? _positionSub;
  bool _playing = false;
  bool _broken = false;
  bool _speakerOn = true;
  Duration _position = Duration.zero;
  Duration _duration = Duration.zero;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && widget.continuationGeneration != null) {
        if (widget.canContinue?.call() == true && !LiveCallForeground.active) {
          unawaited(_toggle(continuing: true));
        }
      } else if (mounted && _pendingVoiceAutoplay == widget.attachment.path) {
        _pendingVoiceAutoplay = null;
        if (!LiveCallForeground.active) unawaited(_toggle(userInitiated: false));
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _sequenceScope = context.dependOnInheritedWidgetOfExactType<_VoicePlaybackScope>();
    _noteId = _sequenceScope?.idFor(widget.attachment);
  }

  @override
  void dispose() {
    _playRequest++;
    if (identical(_activeVoiceBubble, this)) {
      _sequenceScope?.onStop();
      _activeVoiceBubble = null;
      unawaited(_releaseAudioRoute());
    }
    _interruptionSub?.cancel();
    _stateSub?.cancel();
    _positionSub?.cancel();
    _player?.dispose();
    super.dispose();
  }

  Future<void> _finishPlayback(AudioPlayer player) async {
    _finishing = true;
    final request = _playRequest;
    try {
      await player.pause();
      await player.seek(Duration.zero);
      if (!identical(_activeVoiceBubble, this)) return;
      await _releaseAudioRoute();
      if (!identical(_activeVoiceBubble, this)) return;
      _activeVoiceBubble = null;
      if (mounted && request == _playRequest && _noteId != null) {
        _sequenceScope?.onComplete(_noteId!, _sequenceGeneration);
      }
    } catch (_) {
      if (identical(_activeVoiceBubble, this)) {
        _sequenceScope?.onStop();
        await _releaseAudioRoute();
        if (identical(_activeVoiceBubble, this)) _activeVoiceBubble = null;
      }
    } finally {
      _finishing = false;
    }
  }

  Future<void> _releaseAudioRoute() => _withVoiceRoute(() async {
    bool ownsRoute() => !LiveCallForeground.active &&
        (_activeVoiceBubble == null || identical(_activeVoiceBubble, this));
    if (!ownsRoute()) return;
    try {
      await LivePcmAudio.release();
      if (!ownsRoute()) return;
      final session = await AudioSession.instance;
      if (ownsRoute()) await session.setActive(false);
    } catch (_) {}
  });

  Future<void> _pauseFromAnotherBubble() async {
    _playRequest++;
    _sequenceScope?.onStop();
    if (!_playing) return;
    if (mounted) setState(() => _playing = false);
    try { await _player?.pause(); } catch (_) {}
    await _releaseAudioRoute();
    if (identical(_activeVoiceBubble, this)) _activeVoiceBubble = null;
  }

  Future<void> _ensurePlayer() async {
    if (_player != null) return;
    final player = AudioPlayer();
    await player.setLoopMode(LoopMode.off);
    _player = player;
    _stateSub = player.playerStateStream.listen((state) {
      if (!mounted) return;
      if (state.processingState == ProcessingState.completed && _playing) {
        setState(() {
          _playing = false;
          _position = Duration.zero;
        });
        unawaited(_finishPlayback(player));
      } else if (!state.playing && _playing && state.processingState != ProcessingState.completed) {
        _sequenceScope?.onStop();
        setState(() => _playing = false);
        unawaited(_releaseAudioRoute());
      }
    });
    _positionSub = player.positionStream.listen((value) {
      if (mounted) setState(() => _position = value);
    });

    final path = widget.attachment.path;
    Duration? duration;
    try {
      if (path.startsWith('http://') || path.startsWith('https://')) {
        duration = await player.setUrl(path);
      } else if (File(path).existsSync()) {
        duration = await player.setFilePath(path);
      } else {
        try {
          duration = await player.setFilePath(path);
        } catch (_) {
          duration = await player.setUrl(path);
        }
      }
    } catch (_) {
      duration = null;
    }

    _duration = duration ??
        Duration(milliseconds: widget.attachment.durationMs ?? 0);
    await player.setSpeed(_sharedVoiceSpeed);
  }

  Future<void> _toggle({bool continuing = false, bool userInitiated = true}) async {
    if (_finishing) return;
    final request = ++_playRequest;
    bool validRequest() => mounted && request == _playRequest &&
        !LiveCallForeground.active && ModalRoute.of(context)?.isCurrent != false;
    try {
      if (_broken && mounted) setState(() => _broken = false);

      final other = _activeVoiceBubble;
      if (other != null && !identical(other, this)) {
        await other._pauseFromAnotherBubble();
      }
      await _activeComposerPreviewScreen?._pauseInlinePreviewFromAnotherPlayer();

      if (!validRequest()) return;
      _activeVoiceBubble = this;
      await _ensurePlayer();
      if (!validRequest()) return;

      if (_playing) {
        _sequenceScope?.onStop();
        if (mounted) setState(() => _playing = false);
        await _player!.pause();
        await _releaseAudioRoute();
        return;
      }

      if (!validRequest() ||
          (continuing && widget.canContinue?.call() != true)) return;
      final session = await AudioSession.instance;
      _interruptionSub ??= session.interruptionEventStream.listen((event) {
        if (event.begin) unawaited(_pauseFromAnotherBubble());
      });
      await _withVoiceRoute(() async {
        if (!validRequest()) return;
        await session.configure(
          const AudioSessionConfiguration(
            avAudioSessionCategory: AVAudioSessionCategory.playback,
            avAudioSessionMode: AVAudioSessionMode.spokenAudio,
            androidAudioAttributes: AndroidAudioAttributes(
              contentType: AndroidAudioContentType.speech,
              usage: AndroidAudioUsage.media,
            ),
            androidAudioFocusGainType: AndroidAudioFocusGainType.gainTransientMayDuck,
            androidWillPauseWhenDucked: true,
          ),
        );
        if (!validRequest()) return;
        if (!await session.setActive(true)) {
          throw StateError('Audio session could not be activated');
        }

        if (!_speakerOn && validRequest()) {
          await LivePcmAudio.setSpeaker(false);
        }
      });

      if (!validRequest() ||
          (continuing && widget.canContinue?.call() != true)) {
        await _releaseAudioRoute();
        return;
      }
      _sequenceGeneration = continuing ? widget.continuationGeneration :
          (!userInitiated || _noteId == null ? null : _sequenceScope?.onStart(_noteId!));
      _activeVoiceBubble = this;
      if (_position >= _duration && _duration > Duration.zero) {
        await _player!.seek(Duration.zero);
      }
      if (!validRequest()) return;
      setState(() => _playing = true);
      unawaited(_player!.play().catchError((Object error) {
        if (mounted && request == _playRequest) {
          _sequenceScope?.onStop();
          setState(() { _playing = false; _broken = true; });
        }
      }));
    } catch (_) {
      if (!mounted || request != _playRequest) return;
      _sequenceScope?.onStop();
      await _player?.dispose();
      _player = null;
      await _stateSub?.cancel();
      _stateSub = null;
      await _positionSub?.cancel();
      _positionSub = null;
      unawaited(_releaseAudioRoute());
      if (mounted) {
        setState(() {
          _playing = false;
          _broken = true;
        });
      }
    }
  }

  Future<void> _seek(double fraction) async {
    _playRequest++;
    _sequenceScope?.onStop();
    try {
      await _ensurePlayer();
      final totalMs = _duration.inMilliseconds;
      if (totalMs <= 0) return;
      final target = Duration(milliseconds: (totalMs * fraction).round());
      setState(() => _position = target);
      await _player!.seek(target);
    } catch (_) {}
  }

  Future<void> _toggleAudioRoute() async {
    final request = _playRequest;
    final next = !_speakerOn;
    bool current() => mounted && request == _playRequest &&
        !LiveCallForeground.active &&
        (!_playing || identical(_activeVoiceBubble, this));
    await _withVoiceRoute(() async {
      if (!current()) return;
      if (_playing) {
        if (next) {
          await LivePcmAudio.release();
        } else {
          await LivePcmAudio.setSpeaker(false);
        }
      }
      if (current()) setState(() => _speakerOn = next);
    });
  }

  Future<void> _cycleSpeed() async {
    final next = _sharedVoiceSpeed == 1.0
        ? 1.5
        : _sharedVoiceSpeed == 1.5
        ? 2.0
        : 1.0;
    _sharedVoiceSpeed = next;
    if (mounted) setState(() {});
    try {
      await _ensurePlayer();
      await _player!.setSpeed(next);
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final fallbackMs = widget.attachment.durationMs ?? 0;
    final totalMs = _duration.inMilliseconds > 0
        ? _duration.inMilliseconds
        : fallbackMs;
    final progress = totalMs <= 0
        ? 0.0
        : (_position.inMilliseconds / totalMs)
              .clamp(0.0, 1.0)
              .toDouble();
    final remaining = totalMs <= 0
        ? formatDurationMs(fallbackMs)
        : formatDurationMs(
            (totalMs - _position.inMilliseconds)
                .clamp(0, totalMs)
                .toInt(),
          );

    final avatar = widget.senderIsUser
        ? CircleAvatar(radius: 18,
            backgroundColor: u.brand.withValues(alpha: .16),
            child: Icon(Icons.person_rounded, size: 23, color: u.brand))
        : MasanaPortraitAvatar(agent: widget.agent, size: 36);
    return SizedBox(
      width: math.min(274.0,
          math.max(190.0, MediaQuery.sizeOf(context).width * .86 - 24)),
      child: Row(
        children: [
          if (widget.senderIsUser) ...[avatar, const SizedBox(width: 4)],
          IconButton(
            tooltip: _broken ? 'Retry voice note' : _playing ? 'Pause voice note' : 'Play voice note',
            onPressed: _toggle,
            visualDensity: VisualDensity.compact,
            constraints: const BoxConstraints(minWidth: 42, minHeight: 48),
            padding: EdgeInsets.zero,
            icon: Icon(
                _broken
                    ? Icons.refresh
                    : _playing
                    ? Icons.pause
                    : Icons.play_arrow,
                color: u.textMuted,
                size: 30,
            ),
          ),
          const SizedBox(width: 2),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _VoiceWaveform(
                  values: widget.attachment.waveform,
                  progress: progress,
                  enabled: !_broken,
                  onSeek: _seek,
                ),
                Row(
                  children: [
                    Text(
                      _broken ? 'Tap to retry' : remaining,
                      style: TextStyle(color: u.textMuted, fontSize: 11.5,
                        fontFeatures: const [FontFeature.tabularFigures()]),
                    ),
                    const Spacer(),
                    InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: _cycleSpeed,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 2,
                        ),
                        child: Text(
                          '${_sharedVoiceSpeed.toStringAsFixed(_sharedVoiceSpeed == 1 ? 0 : 1)}×',
                          style: TextStyle(
                            color: u.textMuted,
                            fontSize: 11.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (!widget.senderIsUser) ...[const SizedBox(width: 4), avatar],
          IconButton(
            tooltip: _speakerOn ? 'Use earpiece' : 'Use speaker',
            visualDensity: VisualDensity.compact,
            constraints: const BoxConstraints(minWidth: 28, minHeight: 40),
            padding: EdgeInsets.zero,
            iconSize: 17,
            onPressed: _toggleAudioRoute,
            icon: Icon(
              _speakerOn ? Icons.volume_up_outlined : Icons.hearing_outlined,
              color: u.textMuted,
            ),
          ),
        ],
      ),
    );
  }
}

class _TypingBubble extends StatelessWidget {
  const _TypingBubble({this.waiting = false});
  final bool waiting;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 3),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: u.surfaceCard,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
            bottomRight: Radius.circular(14),
            bottomLeft: Radius.circular(4),
          ),
          border: Border.all(color: u.structuralBorder),
        ),
        child: Semantics(
          liveRegion: true,
          label: waiting ? 'Waiting for agent reply' : 'Agent replying',
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Icon(waiting ? Icons.hourglass_empty : Icons.more_horiz, color: u.brand, size: 20),
            const SizedBox(width: 6),
            Text(waiting ? 'Waiting for reply…' : 'Replying…', style: TextStyle(color: u.textMuted, fontSize: 13)),
          ]),
        ),
      ),
    );
  }
}



