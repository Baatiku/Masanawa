import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mime/mime.dart';

import '../agents/agent_session.dart';
import '../agents/masanawa_transport.dart';
import '../agents/agent_feedback.dart';
import '../chat/chat_format.dart';
import '../chat/message_parts.dart';
import '../core/providers.dart';
import '../core/live_pcm_audio.dart';
import '../core/agent_audio_attachment.dart';
import '../core/network/api_client.dart';
import '../core/request_id.dart';
import '../agents/agent_shell.dart';
import '../core/mobile_push.dart';
import '../core/startup_metrics.dart';
import '../chat/shell_action_coordinator.dart';
import '../chat/shell_action_journal.dart';
import '../chat/shell_document.dart';
import '../chat/shell_secure_storage.dart';
import 'session_state.dart';
import 'agent_directory_state.dart';

const String _kThreadsFile = 'masanawa_threads_v2.json';
const _draftVault=FlutterSecureStorage(
  aOptions:AndroidOptions(),
  iOptions:IOSOptions(accessibility:KeychainAccessibility.first_unlock_this_device),
);

/// Opaque local placeholder, never an unauthenticated URL. The signed-in
/// account must authorize every requested download from the Gateway.
String chatRemoteMediaReference(String characterId, String requestId, int slot) =>
    'masanawa-remote|$characterId|$requestId|$slot';


/// A user-selected local attachment. Local paths are only upload/cache inputs;
/// canonical agent-produced files arrive back as durable AgentFileRef parts.
class ChatAttachment {
  const ChatAttachment({
    required this.kind,
    required this.path,
    this.name,
    this.sizeBytes,
    this.durationMs,
    this.waveform = const [],
  });

  final String kind;
  final String path;
  final String? name;
  final int? sizeBytes;
  final int? durationMs;
  final List<double> waveform;

  String get label => switch (kind) {
    'image' => '📷 Photo',
    'voice' => '🎤 Voice note (${formatDurationMs(durationMs ?? 0)})',
    'video' => '🎬 ${name ?? 'Video'}',
    'audio' => '🎵 ${name ?? 'Audio'}',
    _ => '📄 ${name ?? 'Document'}',
  };

  Map<String, dynamic> toJson() => {
    'kind': kind,
    'path': path,
    if (name != null) 'name': name,
    if (sizeBytes != null) 'sizeBytes': sizeBytes,
    if (durationMs != null) 'durationMs': durationMs,
    if (waveform.isNotEmpty) 'waveform': waveform,
  };

  factory ChatAttachment.fromJson(Map<String, dynamic> json) => ChatAttachment(
    kind: json['kind'] as String? ?? 'doc',
    path: json['path'] as String? ?? '',
    name: json['name'] as String?,
    sizeBytes: json['sizeBytes'] as int?,
    durationMs: json['durationMs'] as int?,
    waveform: [
      for (final value in (json['waveform'] as List? ?? const []))
        if (value is num) value.toDouble().clamp(0.0, 1.0).toDouble(),
    ],
  );
}

/// Preserve the actual type for imported audio. Only native recorded .m4a
/// voice notes have the special Gemini MIME mapping.
String chatAttachmentMimeType(ChatAttachment attachment, List<int> headerBytes) {
  if ((attachment.kind == 'voice' || attachment.kind == 'audio') &&
      attachment.path.toLowerCase().endsWith('.m4a')) {
    return 'audio/m4a';
  }
  return lookupMimeType(
        attachment.path,
        headerBytes: headerBytes.take(16).toList(),
      ) ??
      switch (attachment.kind) {
        'image' => 'image/jpeg',
        'video' => 'video/mp4',
        _ => 'application/octet-stream',
      };
}

/// One preview-first draft for all pickers, bounded by the server media limit.
/// Callers must show rejected selections rather than silently sending them.
const maxChatAttachmentSetEncodedBytes = 16_000_000;
int chatAttachmentEncodedBytes(int bytes) => ((bytes + 2) ~/ 3) * 4;

class ChatAttachmentDraftSelection {
  const ChatAttachmentDraftSelection(this.attachments, this.rejectedCount);

  final List<ChatAttachment> attachments;
  final int rejectedCount;
}

ChatAttachmentDraftSelection selectChatDraftAttachments(
  List<ChatAttachment> existing,
  List<ChatAttachment> selected,
) {
  const maxItemBytes = 8 * 1024 * 1024;
  const maxTotalBytes = maxChatAttachmentSetEncodedBytes;
  const maxItems = 8;
  final accepted = <ChatAttachment>[];
  var bytes = 0;
  var rejected = 0;
  for (final item in [...existing, ...selected]) {
    final size = item.sizeBytes ?? 0;
    if (item.path.isEmpty ||
        size <= 0 ||
        size > maxItemBytes ||
        accepted.length >= maxItems ||
        bytes + chatAttachmentEncodedBytes(size) > maxTotalBytes) {
      rejected++;
      continue;
    }
    accepted.add(item);
    bytes += chatAttachmentEncodedBytes(size);
  }
  return ChatAttachmentDraftSelection(List.unmodifiable(accepted), rejected);
}

 
/// Copies picker paths into private per-account app support storage before
/// queuing or sending. This is a local retry cache, not server media history.
Future<List<ChatAttachment>> retainOutgoingChatMedia({
  required Directory ownerFolder,
  required String requestId,
  required List<ChatAttachment> attachments,
}) async {
  if (attachments.isEmpty || attachments.length > 8) {
    throw const ApiException('Select 1 to 8 attachments',
        code: 'ATTACHMENT_INVALID');
  }
  final token = base64Url.encode(utf8.encode(requestId)).replaceAll('=', '');
  final copied = <File>[];
  final saved = <ChatAttachment>[];
  var total = 0;
  try {
    await ownerFolder.create(recursive: true);
    for (var index = 0; index < attachments.length; index++) {
      final attachment = attachments[index];
      final source = File(attachment.path);
      final bytes = await source.length();
      if (bytes < 1 || bytes > 8 * 1024 * 1024 ||
          total + chatAttachmentEncodedBytes(bytes) > maxChatAttachmentSetEncodedBytes) {
        throw const ApiException('Attachments exceed allowed size',
            code: 'ATTACHMENT_TOO_LARGE');
      }
      total += chatAttachmentEncodedBytes(bytes);
      final suffix = RegExp(r'\.([a-zA-Z0-9]{1,8})$')
          .firstMatch(attachment.path)?.group(1)?.toLowerCase();
      final extension = suffix == null ? '' : '.$suffix';
      final file = File('${ownerFolder.path}/${token}_$index$extension');
      if (source.absolute.path != file.absolute.path) {
        copied.add(file);
        await source.copy(file.path);
      }
      saved.add(ChatAttachment(
        kind: attachment.kind,
        path: file.path,
        name: attachment.name,
        sizeBytes: bytes,
        durationMs: attachment.durationMs,
        waveform: attachment.waveform,
      ));
    }
    return List.unmodifiable(saved);
  } catch (_) {
    for (final file in copied) {
      try { await file.delete(); } catch (_) {}
    }
    rethrow;
  }
}

 
/// Durable private local playback for an agent's PCM/WAV/audio response.
/// Provider output remains authoritative; this file contains no user IDs.
Future<File> retainAgentReplyAudio({
  required Directory ownerFolder,
  required String requestId,
  required String extension,
  required List<int> bytes,
}) async {
  if (bytes.isEmpty || bytes.length > 8 * 1024 * 1024) {
    throw const ApiException('Audio reply exceeds local cache limit',
        code: 'ATTACHMENT_TOO_LARGE');
  }
  if (!RegExp(r'^[a-zA-Z0-9]{1,8}$').hasMatch(extension)) {
    throw const ApiException('Invalid audio reply format',
        code: 'ATTACHMENT_INVALID');
  }
  final token = base64Url.encode(utf8.encode(requestId)).replaceAll('=', '');
  await ownerFolder.create(recursive: true);
  final file = File('${ownerFolder.path}/${token}_assistant_reply.$extension');
  try {
    await file.writeAsBytes(bytes, flush: true);
    return file;
  } catch (_) {
    try { await file.delete(); } catch (_) {}
    rethrow;
  }
}

class AiChatMessage {
  const AiChatMessage({
    required this.id,
    required this.isUser,
    required this.text,
    required this.createdAt,
    this.attachment,
    this.attachments = const [],
    this.parts = const [],
    this.replyToId,
    this.replyPreview,
    this.reaction,
    this.editedAt,
    this.deleted = false,
    this.deliveryStatus = 'sent',
    this.uploadProgress,
    this.requestId,
  });

  final String id;
  final bool isUser;
  final String text;
  final DateTime createdAt;
  final ChatAttachment? attachment;
  final List<ChatAttachment> attachments;
  final List<AgentMessagePart> parts;
  final String? replyToId;
  final String? replyPreview;
  final String? reaction;
  final DateTime? editedAt;
  final bool deleted;
  final String deliveryStatus;
  final double? uploadProgress;
  final String? requestId;

  List<ChatAttachment> get allAttachments => [
    if (attachment != null) attachment!,
    ...attachments,
  ];

  AiChatMessage copyWith({
    String? text,
    ChatAttachment? attachment,
    List<ChatAttachment>? attachments,
    List<AgentMessagePart>? parts,
    String? replyToId,
    String? replyPreview,
    String? reaction,
    DateTime? editedAt,
    bool? deleted,
    String? deliveryStatus,
    double? uploadProgress,
    String? requestId,
  }) => AiChatMessage(
    id: id,
    isUser: isUser,
    text: text ?? this.text,
    createdAt: createdAt,
    attachment: attachment ?? this.attachment,
    attachments: attachments ?? this.attachments,
    parts: parts ?? this.parts,
    replyToId: replyToId ?? this.replyToId,
    replyPreview: replyPreview ?? this.replyPreview,
    reaction: reaction ?? this.reaction,
    editedAt: editedAt ?? this.editedAt,
    deleted: deleted ?? this.deleted,
    deliveryStatus: deliveryStatus ?? this.deliveryStatus,
    uploadProgress: uploadProgress ?? this.uploadProgress,
    requestId: requestId ?? this.requestId,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'isUser': isUser,
    'text': text,
    'createdAt': createdAt.toIso8601String(),
    if (attachment != null) 'attachment': attachment!.toJson(),
    if (attachments.isNotEmpty)
      'attachments': [for (final item in attachments) item.toJson()],
    if (parts.isNotEmpty) 'parts': [for (final part in parts) part.toJson()],
    if (replyToId != null) 'replyToId': replyToId,
    if (replyPreview != null) 'replyPreview': replyPreview,
    if (reaction != null) 'reaction': reaction,
    if (editedAt != null) 'editedAt': editedAt!.toIso8601String(),
    if (deleted) 'deleted': true,
    if (deliveryStatus != 'sent') 'deliveryStatus': deliveryStatus,
    if (uploadProgress != null) 'uploadProgress': uploadProgress,
    if (requestId != null) 'requestId': requestId,
  };

  factory AiChatMessage.fromJson(Map<String, dynamic> json) => AiChatMessage(
    id: json['id'] as String? ?? '',
    isUser: json['isUser'] as bool? ?? false,
    text: json['text'] as String? ?? '',
    createdAt:
        DateTime.tryParse(json['createdAt'] as String? ?? '') ?? DateTime.now(),
    attachment: json['attachment'] == null
        ? null
        : ChatAttachment.fromJson(
            (json['attachment'] as Map).cast<String, dynamic>(),
          ),
    attachments: [
      for (final raw in (json['attachments'] as List? ?? const []))
        if (raw is Map) ChatAttachment.fromJson(raw.cast<String, dynamic>()),
    ],
    parts: [
      for (final raw in (json['parts'] as List? ?? const []))
        if (raw is Map) AgentMessagePart.fromJson(raw.cast<String, dynamic>()),
    ],
    replyToId: json['replyToId'] as String?,
    replyPreview: json['replyPreview'] as String?,
    reaction: json['reaction'] as String?,
    editedAt: DateTime.tryParse(json['editedAt'] as String? ?? ''),
    deleted: json['deleted'] as bool? ?? false,
    deliveryStatus: json['deliveryStatus'] as String? ?? 'sent',
    uploadProgress: (json['uploadProgress'] as num?)?.toDouble(),
    requestId: json['requestId'] as String?,
  );
}

/// A process crash may interrupt a send between the local 'sent' status and
/// the server receipt. Reconcile by the original requestId before resending;
/// never generate a new financial/service operation on app restart.
String recoveredChatDeliveryStatus(AiChatMessage message) {
  if (!message.isUser ||
      !{'sending', 'sent'}.contains(message.deliveryStatus)) {
    return message.deliveryStatus;
  }
  // Legacy messages lack the original idempotency key: do not replay, and
  // do not relabel their historically visible 'sent' status as a failure.
  if (message.requestId == null) {
    return message.deliveryStatus == 'sending' ? 'failed' : 'sent';
  }
  return 'queued';
}

enum ChatQueuedTurnResolution { resend, delivered, processing, failed, wait }

ChatQueuedTurnResolution resolveChatQueuedTurn(AgentTurnStatus status) =>
    switch (status.state) {
      'missing' => ChatQueuedTurnResolution.resend,
      'completed' => ChatQueuedTurnResolution.delivered,
      'pending' => ChatQueuedTurnResolution.processing,
      'failed' => ChatQueuedTurnResolution.failed,
      _ => ChatQueuedTurnResolution.wait,
    };

/// One conversation per canonical Character.
class ChatThread {
  ChatThread({
    required this.characterId,
    this.messages = const [],
    this.unread = 0,
    DateTime? updatedAt,
    this.characterSessionId,
    this.agentRunId,
    this.draft = '',
    this.title,
    this.pinned = false,
    this.archived = false,
    this.scrollOffset = 0,
    this.draftAttachments = const [],
    this.draftVoice,
  }) : updatedAt = updatedAt ?? DateTime.fromMillisecondsSinceEpoch(0);

  final String characterId;
  final List<AiChatMessage> messages;
  final int unread;
  final DateTime updatedAt;
  final String? characterSessionId;
  final String? agentRunId;
  final String draft;
  final String? title;
  final bool pinned;
  final bool archived;
  final double scrollOffset;
  final List<ChatAttachment> draftAttachments;
  final ChatAttachment? draftVoice;

  AiChatMessage? get lastMessage => messages.isEmpty ? null : messages.last;

  ChatThread copyWith({
    List<AiChatMessage>? messages,
    int? unread,
    DateTime? updatedAt,
    String? characterSessionId,
    String? agentRunId,
    String? draft,
    String? title,
    bool? pinned,
    bool? archived,
    double? scrollOffset,
    List<ChatAttachment>? draftAttachments,
    ChatAttachment? draftVoice,
    bool clearDraftVoice = false,
  }) => ChatThread(
    characterId: characterId,
    messages: messages ?? this.messages,
    unread: unread ?? this.unread,
    updatedAt: updatedAt ?? this.updatedAt,
    characterSessionId: characterSessionId ?? this.characterSessionId,
    agentRunId: agentRunId ?? this.agentRunId,
    draft: draft ?? this.draft,
    title: title ?? this.title,
    pinned: pinned ?? this.pinned,
    archived: archived ?? this.archived,
    scrollOffset: scrollOffset ?? this.scrollOffset,
    draftAttachments: draftAttachments ?? this.draftAttachments,
    draftVoice: clearDraftVoice ? null : (draftVoice ?? this.draftVoice),
  );

  Map<String, dynamic> toJson() => {
    'characterId': characterId,
    'messages': [for (final m in messages) m.toJson()],
    'unread': unread,
    'updatedAt': updatedAt.toIso8601String(),
    if (characterSessionId != null) 'characterSessionId': characterSessionId,
    if (agentRunId != null) 'agentRunId': agentRunId,
    if (draft.isNotEmpty) 'draft': draft,
    if (title != null) 'title': title,
    if (pinned) 'pinned': true,
    if (archived) 'archived': true,
    if (scrollOffset > 0) 'scrollOffset': scrollOffset,
    if (draftAttachments.isNotEmpty)
      'draftAttachments': [for (final item in draftAttachments) item.toJson()],
    if (draftVoice != null) 'draftVoice': draftVoice!.toJson(),
  };

  factory ChatThread.fromJson(Map<String, dynamic> json) {
    final characterId =
        (json['characterId'] ?? json['masanaId']) as String? ?? '';
    return ChatThread(
      characterId: characterId,
      messages: [
        for (final m in (json['messages'] as List? ?? []))
          AiChatMessage.fromJson((m as Map).cast<String, dynamic>()),
      ],
      unread: json['unread'] as int? ?? 0,
      updatedAt: DateTime.tryParse(json['updatedAt'] as String? ?? ''),
      characterSessionId: json['characterSessionId'] as String?,
      agentRunId: json['agentRunId'] as String?,
      draft: json['draft'] as String? ?? '',
      title: json['title'] as String?,
      pinned: json['pinned'] as bool? ?? false,
      archived: json['archived'] as bool? ?? false,
      scrollOffset: (json['scrollOffset'] as num?)?.toDouble() ?? 0,
      draftAttachments: [
        for (final raw in (json['draftAttachments'] as List? ?? const []))
          if (raw is Map) ChatAttachment.fromJson(raw.cast<String, dynamic>()),
      ],
      draftVoice: json['draftVoice'] is Map
          ? ChatAttachment.fromJson(
              (json['draftVoice'] as Map).cast<String, dynamic>(),
            )
          : null,
    );
  }
}

class AiChatState {
  const AiChatState({
    this.threads = const {},
    this.sendingIn = const {},
    this.openThreadId,
    this.online = true,
    this.shellConfigs = const {},
  });

  final Map<String, ChatThread> threads;
  final Set<String> sendingIn;
  final String? openThreadId;
  final bool online;
  final Map<String, AgentShellConfig> shellConfigs;

  List<ChatThread> get chatList {
    final list = threads.values
        .where((t) => t.messages.isNotEmpty && !t.archived)
        .toList();
    list.sort((a, b) {
      if (a.pinned != b.pinned) return a.pinned ? -1 : 1;
      return b.updatedAt.compareTo(a.updatedAt);
    });
    return list;
  }

  int get totalUnread => threads.values.fold(0, (sum, t) => sum + t.unread);

  AiChatState copyWith({
    Map<String, ChatThread>? threads,
    Set<String>? sendingIn,
    String? openThreadId,
    bool clearOpen = false,
    bool? online,
    Map<String, AgentShellConfig>? shellConfigs,
  }) => AiChatState(
    threads: threads ?? this.threads,
    sendingIn: sendingIn ?? this.sendingIn,
    openThreadId: clearOpen ? null : (openThreadId ?? this.openThreadId),
    online: online ?? this.online,
    shellConfigs: shellConfigs ?? this.shellConfigs,
  );
}

/// Only authenticated downloads are disposable. Originals and generated reply
/// audio may have no server copy; drafts and retryable turns are never cache.
class DownloadedChatMediaCleanup {
  const DownloadedChatMediaCleanup(this.state, this.paths);
  final AiChatState state;
  final Set<String> paths;
}

DownloadedChatMediaCleanup planDownloadedChatMediaCleanup(
  AiChatState state, Directory ownerFolder,
) {
  final protected = <String>{};
  bool settled(AiChatMessage message) =>
      const {'sent', 'delivered', 'read'}.contains(message.deliveryStatus);
  for (final thread in state.threads.values) {
    protected.addAll(thread.draftAttachments.map((item) => item.path));
    if (thread.draftVoice != null) protected.add(thread.draftVoice!.path);
    for (final message in thread.messages) {
      if (!settled(message) || state.sendingIn.contains(thread.characterId) ||
          state.openThreadId == thread.characterId) {
        protected.addAll(message.allAttachments.map((item) => item.path));
      }
    }
  }
  final paths = <String>{};
  ChatAttachment remap(ChatThread thread, AiChatMessage message,
      ChatAttachment item) {
    final request = message.requestId;
    if (request == null || request.isEmpty || protected.contains(item.path) ||
        !settled(message) || state.sendingIn.contains(thread.characterId) ||
        state.openThreadId == thread.characterId) return item;
    final file = File(item.path);
    if (file.parent.absolute.path != ownerFolder.absolute.path) return item;
    final safeId = request.replaceAll(RegExp(r'[^A-Za-z0-9_-]'), '');
    final match = RegExp('^remote-${RegExp.escape(safeId)}-([0-8])\\.[a-zA-Z0-9]{1,10}\$')
        .firstMatch(file.uri.pathSegments.last);
    if (match == null) return item;
    final slot = int.parse(match.group(1)!);
    if (message.isUser != (slot < 8)) return item;
    paths.add(item.path);
    return ChatAttachment.fromJson({...item.toJson(), 'path':
      chatRemoteMediaReference(thread.characterId, request, slot)});
  }
  final threads = <String, ChatThread>{};
  for (final entry in state.threads.entries) {
    final thread = entry.value;
    threads[entry.key] = thread.copyWith(messages: [
      for (final message in thread.messages)
        message.copyWith(
          attachment: message.attachment == null ? null
              : remap(thread, message, message.attachment!),
          attachments: [for (final item in message.attachments)
            remap(thread, message, item)],
        ),
    ]);
  }
  return DownloadedChatMediaCleanup(state.copyWith(threads: threads), paths);
}

class AiChatController extends Notifier<AiChatState> {
  int _seq = 0;
  bool _disposed = false;
  final Map<String, AgentSessionBinding> _bindings = {};
  int _connectionGeneration = 0;
  final Map<String, int> _threadGenerations = {};
  StreamSubscription<List<ConnectivityResult>>? _connectivitySub;
  bool _flushingQueue = false;
  final Map<String, StreamSubscription<AgentShellEvent>> _eventSubscriptions = {};
  final Map<String, String> _eventCursors = {};
  final Map<String, ShellActionCoordinator> _actionCoordinators = {};
  final Map<String, EncryptedShellActionJournal> _actionJournals = {};
  String? _cacheOwnerId;
  int _cacheGeneration = 0;
  Future<Directory?>? _documentsDirectoryFuture;
  Future<void> _previousCacheSave = Future<void>.value();

  @override
  AiChatState build() {
    final initialSession = ref.read(sessionProvider);
    _cacheOwnerId =
        initialSession is SessionSignedIn ? initialSession.user.id : null;
    final initialOwner = _cacheOwnerId;
    if (initialOwner != null && initialOwner.isNotEmpty) {
      // Local conversation state is useful immediately. Hydrate it before
      // starting another platform-channel dependency on slower devices.
      unawaited(
        _load(initialOwner, _cacheGeneration)
            .whenComplete(_startConnectivityMonitoring),
      );
    } else {
      scheduleMicrotask(_startConnectivityMonitoring);
    }
    ref.onDispose(() {
      _disposed = true;
      _connectivitySub?.cancel();
      for (final subscription in _eventSubscriptions.values) {
        unawaited(subscription.cancel());
      }
      _eventSubscriptions.clear();
    });
    ref.listen(sessionProvider, (previous, next) {
      final nextOwner = next is SessionSignedIn ? next.user.id : null;
      if (nextOwner == _cacheOwnerId) return;
      final previousOwner = _cacheOwnerId;
      _cacheOwnerId = nextOwner;
      final generation = ++_cacheGeneration;
      unawaited(_handleOwnerChange(previousOwner, nextOwner, generation));
    });
    ref.listen(agentTransportProvider, (previous, _) {
      _connectionGeneration++;
      final bindings = [..._bindings.values];
      _bindings.clear();
      if (previous != null) {
        for (final binding in bindings) {
          unawaited(previous.closeSession(binding).catchError((_) {}));
        }
      }
      for (final subscription in _eventSubscriptions.values) {
        unawaited(subscription.cancel());
      }
      _eventSubscriptions.clear();
      _actionCoordinators.clear();
      _eventCursors.clear();
      state = state.copyWith(shellConfigs: {});
    });
    return const AiChatState();
  }

  void _startConnectivityMonitoring() {
    if (_disposed || _connectivitySub != null) return;
    try {
      _connectivitySub = Connectivity().onConnectivityChanged.listen(
        (results) {
          final online = !results.contains(ConnectivityResult.none);
          if (!_disposed) state = state.copyWith(online: online);
          if (online) {
            unawaited(_flushQueuedMessages());
            final open = state.openThreadId;
            if (open != null) unawaited(syncFromServer(open));
          }
        },
        onError: (_) {},
      );
    } catch (_) {}
  }

  ChatThread threadOf(String characterId) =>
      state.threads[characterId] ?? ChatThread(characterId: characterId);

  void openThread(String characterId) {
    final thread = threadOf(characterId);
    state = state.copyWith(
      threads: {...state.threads, characterId: thread.copyWith(unread: 0)},
      openThreadId: characterId,
    );
    _save();
    unawaited(_flushQueuedMessages());
    unawaited(syncFromServer(characterId));
  }

  void closeThread() => state = state.copyWith(clearOpen: true);

  AgentShellTransport? get _shellTransport {
    final transport = ref.read(agentTransportProvider);
    return transport is AgentShellTransport
        ? transport as AgentShellTransport
        : null;
  }

  Future<void> syncFromServer(String characterId) async {
    final transport = _shellTransport;
    final generation = _connectionGeneration;
    final threadGeneration = _threadGenerations[characterId] ?? 0;
    if (transport == null || await _offlineNow()) return;
    if (_disposed || generation != _connectionGeneration) return;
    try {
      final results = await Future.wait<dynamic>([
        transport.loadShellConfig(characterId),
        transport.loadHistory(characterId, limit: 100),
      ]);
      if (_disposed || generation != _connectionGeneration ||
          threadGeneration != (_threadGenerations[characterId] ?? 0)) return;
      final config = results[0] as AgentShellConfig;
      final history = results[1] as List<AgentHistoryMessage>;
      state = state.copyWith(
        shellConfigs: {...state.shellConfigs, characterId: config},
      );
      // Message text, order and pending receipts must display immediately.
      // Binary vault downloads (up to 32 MB) run independently of the chat's
      // first paint, server turn reconciliation, and live event subscription.
      _mergeServerHistory(characterId, history);
      if (transport is MasanawaAgentTransport) {
        final owner = _cacheOwnerId;
        final ownerGeneration = _cacheGeneration;
        unawaited(_restorePrivateHistoryMedia(
          characterId, history, transport,
        ).then((remoteMedia) {
          if (_disposed || owner != _cacheOwnerId ||
              ownerGeneration != _cacheGeneration ||
              generation != _connectionGeneration ||
              threadGeneration != (_threadGenerations[characterId] ?? 0) ||
              remoteMedia.isEmpty) return;
          final current = threadOf(characterId);
          state = state.copyWith(threads: {
            ...state.threads,
            characterId: current.copyWith(messages: [
              for (final message in current.messages)
                if (message.requestId != null &&
                    remoteMedia.containsKey(
                        '${message.isUser ? 'user' : 'assistant'}:${message.requestId}'))
                  message.copyWith(
                    attachment: remoteMedia[
                      '${message.isUser ? 'user' : 'assistant'}:${message.requestId}']!.length == 1
                        ? remoteMedia[
                          '${message.isUser ? 'user' : 'assistant'}:${message.requestId}']!.first
                        : message.attachment,
                    attachments: remoteMedia[
                      '${message.isUser ? 'user' : 'assistant'}:${message.requestId}']!.length > 1
                        ? remoteMedia[
                          '${message.isUser ? 'user' : 'assistant'}:${message.requestId}']!
                        : message.attachments,
                  )
                else message,
            ]),
          });
          unawaited(_save());
        }).catchError((Object _) {
          // Network failures leave text history and retryable media intact.
        }));
      }
      await _reconcilePendingTurns(characterId, transport);
      if (_disposed || generation != _connectionGeneration ||
          threadGeneration != (_threadGenerations[characterId] ?? 0)) return;
      _startEventStream(characterId, transport);
      if (state.openThreadId == characterId) {
        unawaited(MobilePushService.instance
            .registerForCharacter(transport, characterId).catchError((_) {}));
      }
    } catch (_) {
      // A cached conversation remains usable while the canonical service is unavailable.
    }
  }

  Future<ChatAttachment> _cacheOneRemoteMedia(
    String characterId,
    RemoteChatMedia item,
    MasanawaAgentTransport transport,
    String owner,
    int ownerGeneration,
    int connectionGeneration,
  ) async {
    bool current() => !_disposed && _cacheOwnerId == owner &&
        _cacheGeneration == ownerGeneration &&
        _connectionGeneration == connectionGeneration;
    if (!current()) throw const ApiException('Conversation account changed');
    final folder = await _mediaFolderForOwner(owner);
    await folder.create(recursive: true);
    if (!current()) throw const ApiException('Conversation account changed');
    final safeId = item.requestId.replaceAll(RegExp(r'[^A-Za-z0-9_-]'), '');
    final suffix = RegExp(r'\.([a-zA-Z0-9]{1,10})$')
            .firstMatch(item.name ?? '')?.group(1)?.toLowerCase() ??
        (item.kind == 'voice' || item.kind == 'audio'
            ? 'ogg' : item.kind == 'image' ? 'jpg'
            : item.kind == 'video' ? 'mp4' : 'bin');
    final file = File(
      '${folder.path}/remote-$safeId-${item.slot}.$suffix',
    );
    if (!await file.exists() || await file.length() != item.sizeBytes) {
      final bytes = await transport.downloadPrivateChatMedia(
        characterId, item.requestId, item.slot,
      );
      if (!current()) throw const ApiException('Conversation account changed');
      if (bytes.length != item.sizeBytes) {
        throw const ApiException('Conversation attachment size mismatch');
      }
      final partial = File('${file.path}.partial');
      try {
        await partial.writeAsBytes(bytes, flush: true);
        if (!current()) throw const ApiException('Conversation account changed');
        if (await file.exists()) await file.delete();
        await partial.rename(file.path);
      } finally {
        if (await partial.exists()) await partial.delete();
      }
    }
    if (!current()) throw const ApiException('Conversation account changed');
    return ChatAttachment(
      kind: item.kind,
      path: file.path,
      name: item.name,
      sizeBytes: item.sizeBytes,
    );
  }

  /// Restores recent bytes eagerly and retains an authenticated, on-demand
  /// placeholder for every older or temporarily unavailable attachment.
  Future<Map<String, List<ChatAttachment>>> _restorePrivateHistoryMedia(
    String characterId,
    List<AgentHistoryMessage> history,
    MasanawaAgentTransport transport,
  ) async {
    final owner = _cacheOwnerId;
    final ownerGeneration = _cacheGeneration;
    final connectionGeneration = _connectionGeneration;
    if (owner == null || owner.isEmpty) return const {};
    bool current() => !_disposed && owner == _cacheOwnerId &&
        ownerGeneration == _cacheGeneration &&
        connectionGeneration == _connectionGeneration;
    final ids = history
        .where((m) => m.requestId.isNotEmpty)
        .map((m) => m.requestId)
        .toSet().toList();
    if (ids.isEmpty) return const {};
    final manifest = await transport.listPrivateChatMedia(
      characterId, ids.reversed.take(100).toList(),
    );
    if (!current()) return const {};
    final historyRank = <String,int>{
      for (var i = 0; i < history.length; i++)
        history[i].requestId: i,
    };
    final ordered = [...manifest]..sort((a,b) {
      final rank = (historyRank[b.requestId] ?? 0)
          .compareTo(historyRank[a.requestId] ?? 0);
      return rank != 0 ? rank : a.slot.compareTo(b.slot);
    });
    final existingByRequest = {
      for (final message in threadOf(characterId).messages)
        if (message.requestId != null)
          '${message.isUser ? 'user' : 'assistant'}:${message.requestId}': message.allAttachments,
    };
    final restored = <String, Map<int, ChatAttachment>>{};
    var fetchedBytes = 0;
    var fetchedCount = 0;
    for (final item in ordered) {
      if (!current()) return const {};
      ChatAttachment? local;
      final key = item.slot == 8 ? 'assistant:${item.requestId}' : 'user:${item.requestId}';
      final previously = existingByRequest[key] ?? const [];
      final localSlot = item.slot == 8 ? 0 : item.slot;
      if (localSlot < previously.length) {
        final entry = previously[localSlot];
        if (!entry.path.startsWith('masanawa-remote|')) {
          try {
            if (await File(entry.path).length() == item.sizeBytes) {
              local = entry;
            }
          } catch (_) {}
        }
      }
      if (local == null && fetchedCount < 24 &&
          fetchedBytes + item.sizeBytes <= 32 * 1024 * 1024) {
        try {
          local = await _cacheOneRemoteMedia(
            characterId, item, transport, owner,
            ownerGeneration, connectionGeneration,
          );
          fetchedBytes += item.sizeBytes;
          fetchedCount++;
        } catch (_) {}
      }
      restored.putIfAbsent(key, () => {})[item.slot] =
          local ?? ChatAttachment(
            kind: item.kind,
            path: chatRemoteMediaReference(
              characterId, item.requestId, item.slot,
            ),
            name: item.name,
            sizeBytes: item.sizeBytes,
          );
    }
    return {
      for (final entry in restored.entries)
        entry.key: [
          for (final slot in (entry.value.keys.toList()..sort()))
            entry.value[slot]!,
        ],
    };
  }

  /// An older note/document is fetched only when the user taps it. The
  /// original server identity remains authoritative for bytes and owner.
  Future<void> downloadRemoteChatMedia(String reference) async {
    final pieces = reference.split('|');
    if (pieces.length != 4 || pieces[0] != 'masanawa-remote') {
      throw const ApiException('Invalid private media reference');
    }
    final characterId = pieces[1], requestId = pieces[2];
    final slot = int.tryParse(pieces[3]);
    if (slot == null || slot < 0 || slot > 8) {
      throw const ApiException('Invalid private media slot');
    }
    final owner = _cacheOwnerId;
    final generation = _cacheGeneration;
    final connection = _connectionGeneration;
    final transport = ref.read(agentTransportProvider);
    if (owner == null || transport is! MasanawaAgentTransport) {
      throw const ApiException('Sign in to download conversation media');
    }
    final manifest = await transport.listPrivateChatMedia(
      characterId, [requestId],
    );
    if (_disposed || owner != _cacheOwnerId ||
        generation != _cacheGeneration ||
        connection != _connectionGeneration) return;
    final selected = manifest.where((entry) =>
      entry.requestId == requestId && entry.slot == slot);
    if (selected.isEmpty) {
      throw const ApiException('That attachment is no longer available');
    }
    final attachment = await _cacheOneRemoteMedia(
      characterId, selected.first, transport, owner,
      generation, connection,
    );
    if (_disposed || owner != _cacheOwnerId ||
        generation != _cacheGeneration ||
        connection != _connectionGeneration) return;
    final thread = threadOf(characterId);
    state = state.copyWith(threads: {
      ...state.threads,
      characterId: thread.copyWith(messages: [
        for (final message in thread.messages)
          if (message.isUser == (slot != 8) && message.requestId == requestId)
            message.copyWith(
              attachment: message.attachment?.path == reference
                  ? attachment : message.attachment,
              attachments: [
                for (final part in message.attachments)
                  part.path == reference ? attachment : part,
              ],
            )
          else message,
      ]),
    });
    await _save();
  }

  void _mergeServerHistory(
    String characterId,
    List<AgentHistoryMessage> history,
  ) {
    final thread = threadOf(characterId);
    final local = [...thread.messages];
    final byKey = <String, AiChatMessage>{};
    for (final message in local) {
      final requestId = message.requestId;
      if (requestId != null) {
        byKey['${message.isUser ? 'user' : 'assistant'}:$requestId'] = message;
      }
    }
    for (final item in history) {
      final existing = byKey[item.key];
      if (existing?.deliveryStatus == 'streaming' &&
          state.sendingIn.contains(characterId)) continue;
      final parsedParts = [
        for (final raw in item.parts)
          AgentMessagePart.fromJson(raw),
      ];
      final restored = AiChatMessage(
        id: existing?.id ?? 'server-${item.key}',
        isUser: item.direction == 'user',
        text: item.text,
        createdAt: item.createdAt,
        attachment: existing?.attachment,
        attachments: existing?.attachments ?? const [],
        parts: parsedParts.isEmpty ? (existing?.parts ?? const []) : parsedParts,
        replyToId: existing?.replyToId,
        replyPreview: existing?.replyPreview,
        reaction: existing?.reaction,
        editedAt: existing?.editedAt,
        deleted: existing?.deleted ?? false,
        deliveryStatus: 'delivered',
        requestId: item.requestId,
      );
      byKey[item.key] = restored;
    }
    final unkeyed = local.where((m) => m.requestId == null).toList();
    final merged = [...byKey.values, ...unkeyed]
      ..sort((a, b) => a.createdAt.compareTo(b.createdAt));
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(
          messages: List.unmodifiable(merged),
          updatedAt: merged.isEmpty ? thread.updatedAt : merged.last.createdAt,
        ),
      },
    );
    unawaited(_save());
  }

  Future<void> _reconcilePendingTurns(
    String characterId,
    AgentShellTransport transport,
  ) async {
    final generation = _connectionGeneration;
    final thread = threadOf(characterId);
    final threadGeneration = _threadGenerations[characterId] ?? 0;
    for (final message in thread.messages.where(
      (m) => m.isUser &&
          m.requestId != null &&
          {'sending', 'queued', 'processing', 'failed'}.contains(m.deliveryStatus),
    )) {
      try {
        final status = await transport.turnStatus(characterId, message.requestId!);
        if (_disposed || generation != _connectionGeneration ||
            threadGeneration != (_threadGenerations[characterId] ?? 0)) return;
        if (status.state == 'completed') {
          _setDelivery(characterId, message.id, 'delivered');
          final assistantExists = threadOf(characterId).messages.any(
            (m) => !m.isUser && m.requestId == message.requestId,
          );
          if (!assistantExists) {
            await _appendAi(
              characterId,
              status.reply ?? '',
              parts: [
                for (final raw in status.parts) AgentMessagePart.fromJson(raw),
              ],
              agentRunId: status.agentRunId,
              requestId: message.requestId,
            );
          }
        } else if (status.state == 'pending') {
          _setDelivery(characterId, message.id, 'processing');
        } else if (status.state == 'failed') {
          _setDelivery(characterId, message.id, 'failed');
        } else if (status.state == 'missing' &&
            message.deliveryStatus != 'failed') {
          _setDelivery(characterId, message.id, 'queued');
          unawaited(_flushQueuedMessages());
        }
      } catch (_) {}
    }
  }

  void _startEventStream(
    String characterId,
    AgentShellTransport transport,
  ) {
    final generation = _connectionGeneration;
    if (_eventSubscriptions.containsKey(characterId)) return;
    _eventSubscriptions[characterId] = transport
        .events(characterId, after: _eventCursors[characterId])
        .listen(
      (event) {
        if (_disposed || generation != _connectionGeneration) return;
        if (event.cursor.isNotEmpty) _eventCursors[characterId] = event.cursor;
        _applyShellEvent(characterId, event);
      },
      onError: (_) {
        if (_disposed || generation != _connectionGeneration) return;
        _eventSubscriptions.remove(characterId);
        if (!_disposed && state.online) {
          Future<void>.delayed(
            const Duration(seconds: 2),
            () {
              if (!_disposed && generation == _connectionGeneration) {
                unawaited(syncFromServer(characterId));
              }
            },
          );
        }
      },
      onDone: () {
        if (_disposed || generation != _connectionGeneration) return;
        _eventSubscriptions.remove(characterId);
        if (!_disposed && state.online) {
          Future<void>.delayed(
            const Duration(milliseconds: 400),
            () {
              if (!_disposed && generation == _connectionGeneration) {
                unawaited(syncFromServer(characterId));
              }
            },
          );
        }
      },
    );
  }

  void _applyShellEvent(String characterId, AgentShellEvent event) {
    if (event.type == 'turn.completed' || event.type == 'turn.failed') {
      final transport = _shellTransport;
      if (transport != null) {
        unawaited(_reconcilePendingTurns(characterId, transport));
      }
      return;
    }
    if (event.type == 'presence.updated') {
      unawaited(ref.read(agentDirectoryProvider.notifier).refresh());
      return;
    }

    Map<String, dynamic>? rawDocument;
    if (event.type == 'shell.action.updated') {
      final result = event.payload['result'];
      if (result is Map && result['document'] is Map) {
        rawDocument =
            (result['document'] as Map).cast<String, dynamic>();
      }
    } else if (event.type == 'shell.document.updated' &&
        event.payload['document'] is Map) {
      rawDocument =
          (event.payload['document'] as Map).cast<String, dynamic>();
    }
    if (rawDocument != null) {
      ShellDocument document;
      try {
        document = ShellDocument.fromJson(rawDocument);
      } catch (_) {
        return;
      }
      _replaceShellDocument(characterId, document);
      return;
    }

    if (event.type == 'work.updated' || event.type == 'approval.updated') {
      final rawPart = event.payload['part'];
      final referenceId = event.payload['referenceId'];
      if (rawPart is! Map || referenceId is! String || referenceId.isEmpty) {
        return;
      }
      AgentMessagePart part;
      try {
        part = AgentMessagePart.fromJson(rawPart.cast<String, dynamic>());
      } catch (_) {
        return;
      }
      final thread = threadOf(characterId);
      var changed = false;
      final messages = [
        for (final message in thread.messages)
          message.copyWith(
            parts: [
              for (final existing in message.parts)
                if (existing.referenceId == referenceId) ...[
                  (() {
                    changed = true;
                    return part;
                  })(),
                ] else
                  existing,
            ],
          ),
      ];
      if (!changed) {
        final index = messages.lastIndexWhere((message) => !message.isUser);
        if (index >= 0) {
          messages[index] = messages[index].copyWith(
            parts: [...messages[index].parts, part],
          );
          changed = true;
        }
      }
      if (changed) {
        state = state.copyWith(
          threads: {
            ...state.threads,
            characterId: thread.copyWith(
              messages: messages,
              updatedAt: DateTime.now(),
            ),
          },
        );
        unawaited(_save());
      }
    }
  }

  void _replaceShellDocument(
    String characterId,
    ShellDocument document,
  ) {
    final thread = threadOf(characterId);
    var changed = false;
    final messages = [
      for (final message in thread.messages)
        message.copyWith(
          parts: [
            for (final part in message.parts)
              if (part.document?.id == document.id) ...[
                (() {
                  changed = true;
                  return part.copyWith(document: document);
                })(),
              ] else
                part,
          ],
        ),
    ];
    if (!changed) return;
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(
          messages: messages,
          updatedAt: DateTime.now(),
        ),
      },
    );
    unawaited(_save());
  }

  Future<void> submitShellAction(
    String characterId,
    ShellAction action,
  ) async {
    final transport = _shellTransport;
    if (transport == null) throw StateError('Shell actions unavailable');
    final binding = await _bindingFor(characterId, ref.read(agentTransportProvider));
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn || session.user.id.isEmpty) {
      throw StateError('Authentication required for shell actions');
    }
    final namespace = EncryptedShellActionJournal.namespaceForOwnerSession(
      ownerId: session.user.id,
      sessionId: binding.characterSessionId,
    );
    var coordinator = _actionCoordinators[namespace];
    if (coordinator == null) {
      final journal = EncryptedShellActionJournal(
        store: const FlutterShellEncryptedStore(),
        namespace: namespace,
      );
      _actionJournals[namespace] = journal;
      coordinator = ShellActionCoordinator(
        scope: namespace,
        journal: journal,
        dispatcher: TransportShellActionDispatcher(
          transport: transport,
          characterId: characterId,
          characterSessionId: binding.characterSessionId,
        ),
      );
      _actionCoordinators[namespace] = coordinator;
    }
    await coordinator.submit(action);
  }

  Future<void> clearSecureShellState({String? ownerId}) async {
    final session = ref.read(sessionProvider);
    final userId = ownerId ??
        (session is SessionSignedIn ? session.user.id : null);
    final journals = [..._actionJournals.values];
    _actionJournals.clear();
    _actionCoordinators.clear();
    for (final journal in journals) {
      await journal.clearAndClose().catchError((_) {});
    }
    if (userId != null && userId.isNotEmpty) {
      await EncryptedShellActionJournal.clearOwner(
        store: const FlutterShellEncryptedStore(),
        ownerId: userId,
      ).catchError((_) {});
    }
  }

  Future<bool> _offlineNow() async {
    try {
      final results = await Connectivity().checkConnectivity();
      return results.contains(ConnectivityResult.none);
    } catch (_) {
      return false;
    }
  }

  Future<Directory> _mediaFolderForOwner(String owner) async {
    final support = await getApplicationSupportDirectory();
    final ownerKey = base64Url.encode(utf8.encode(owner)).replaceAll('=', '');
    return Directory('${support.path}/masanawa_chat_media_$ownerKey');
  }

  Future<List<ChatAttachment>> _retainMediaForOwner(
    String? owner,
    String requestId,
    List<ChatAttachment> attachments,
  ) async {
    if (owner == null || owner.isEmpty) {
      throw const ApiException('Sign in to send media', code: 'AUTH_REQUIRED');
    }
    final folder = await _mediaFolderForOwner(owner);
    return retainOutgoingChatMedia(
      ownerFolder: folder,
      requestId: requestId,
      attachments: attachments,
    );
  }

  Future<void> _deleteOwnedMediaCache(String owner) async {
    try {
      final support = await getApplicationSupportDirectory();
      final ownerKey = base64Url.encode(utf8.encode(owner)).replaceAll('=', '');
      await Directory('${support.path}/masanawa_chat_media_$ownerKey')
          .delete(recursive: true);
    } on FileSystemException {
      // Missing or locked files must never block account logout.
    } catch (_) {}
  }

  Future<void> _enqueueMessage(
    String characterId,
    AiChatMessage message,
  ) async {
    final thread = threadOf(characterId);
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(
          messages: [...thread.messages, message.copyWith(deliveryStatus: 'queued')],
          updatedAt: DateTime.now(),
        ),
      },
    );
    await _save();
  }

  Future<void> _flushQueuedMessages() async {
    if (_flushingQueue || _disposed) return;
    final transport = _shellTransport;
    if (transport == null) return;
    final owner = _cacheOwnerId;
    final cacheGeneration = _cacheGeneration;
    final connectionGeneration = _connectionGeneration;
    _flushingQueue = true;
    bool stillCurrent() =>
        !_disposed && owner != null && owner == _cacheOwnerId &&
        cacheGeneration == _cacheGeneration &&
        connectionGeneration == _connectionGeneration;
    try {
      for (final entry in state.threads.entries.toList()) {
        final characterId = entry.key;
        final queued = entry.value.messages
            .where((message) => message.isUser &&
                message.deliveryStatus == 'queued')
            .toList();
        for (final message in queued) {
          if (!stillCurrent()) return;
          if (await _offlineNow()) return;
          if (!stillCurrent()) return;
          if (state.sendingIn.contains(characterId)) break;
          if (!threadOf(characterId).messages.any(
            (current) => current.id == message.id &&
                current.deliveryStatus == 'queued',
          )) continue;

          final requestId = message.requestId;
          if (requestId == null || requestId.isEmpty) {
            // Never replay a customer service/spending operation without
            // the original idempotency key. Keep visible failed status.
            _setDelivery(characterId, message.id, 'failed');
            continue;
          }

          // A crash after server execution but before local receipt is
          // indistinguishable from a lost request. Ask the canonical server
          // first; only a *confirmed missing* turn may be retried with its
          // original requestId and retained private attachment paths.
          AgentTurnStatus status;
          try {
            status = await transport.turnStatus(characterId, requestId);
          } catch (_) {
            return; // Keep queued for next connectivity/history refresh.
          }
          if (!stillCurrent()) return;
          switch (resolveChatQueuedTurn(status)) {
            case ChatQueuedTurnResolution.delivered:
              _setDelivery(characterId, message.id, 'delivered');
              if (!threadOf(characterId).messages.any(
                (item) => !item.isUser && item.requestId == requestId,
              ) && ((status.reply ?? '').isNotEmpty ||
                  status.parts.isNotEmpty)) {
                await _appendAi(
                  characterId,
                  status.reply ?? '',
                  parts: [
                    for (final raw in status.parts)
                      AgentMessagePart.fromJson(raw),
                  ],
                  agentRunId: status.agentRunId,
                  requestId: requestId,
                );
              }
              continue;
            case ChatQueuedTurnResolution.processing:
              _setDelivery(characterId, message.id, 'processing');
              continue;
            case ChatQueuedTurnResolution.failed:
              _setDelivery(characterId, message.id, 'failed');
              continue;
            case ChatQueuedTurnResolution.wait:
              return;
            case ChatQueuedTurnResolution.resend:
              _setDelivery(characterId, message.id, 'sending');
              await _dispatchUserMessage(characterId, message, retry: true);
              continue;
          }
        }
      }
    } finally {
      _flushingQueue = false;
    }
  }

  /// Executes an internal conversational turn in the same Character session
  /// without adding the orchestration prompt or response to the visible chat.
  Future<String> runInternalText(String characterId, String prompt) async {
    final text = prompt.trim();
    if (text.isEmpty) throw ArgumentError.value(prompt, 'prompt');
    if (state.sendingIn.contains(characterId)) {
      throw StateError('A conversation turn is already in progress');
    }
    if (await _offlineNow()) {
      throw const ApiException('Connect to the internet to complete setup');
    }
    final result = await _sendViaTransport(
      characterId,
      text,
      requestId: createRequestId(),
    );
    return result.text.trim();
  }

  Future<void> sendText(
    String characterId,
    String rawText, {
    String? replyToId,
    String? replyPreview,
    String? transportPrompt,
  }) async {
    final text = rawText.trim();
    if (text.isEmpty || state.sendingIn.contains(characterId)) return;
    final threadGeneration = _threadGenerations[characterId] ?? 0;
    final message = AiChatMessage(
      id: _newId(),
      isUser: true,
      text: text,
      createdAt: DateTime.now(),
      replyToId: replyToId,
      replyPreview: replyPreview,
      deliveryStatus: 'sending',
      requestId: createRequestId(),
    );
    final offline = await _offlineNow();
    if (_disposed ||
        threadGeneration != (_threadGenerations[characterId] ?? 0)) {
      return;
    }
    if (offline) {
      await _enqueueMessage(characterId, message);
      return;
    }
    await _dispatchUserMessage(
      characterId,
      message,
      transportPrompt: transportPrompt,
    );
  }

  Future<void> sendAttachment(
    String characterId,
    ChatAttachment attachment, {
    String? caption,
    String? replyToId,
    String? replyPreview,
    Future<void> Function()? onAccepted,
  }) async {
    if (state.sendingIn.contains(characterId)) return;
    final threadGeneration = _threadGenerations[characterId] ?? 0;
    final owner = _cacheOwnerId;
    final generation = _cacheGeneration;
    final requestId = createRequestId();
    final cached = await _retainMediaForOwner(owner, requestId, [attachment]);
    if (_disposed || owner != _cacheOwnerId ||
        generation != _cacheGeneration ||
        threadGeneration != (_threadGenerations[characterId] ?? 0)) return;
    final message = AiChatMessage(
      id: _newId(),
      isUser: true,
      text: (caption ?? '').trim(),
      createdAt: DateTime.now(),
      attachment: cached.single,
      replyToId: replyToId,
      replyPreview: replyPreview,
      deliveryStatus: 'sending',
      requestId: requestId,
    );
    final offline = await _offlineNow();
    if (_disposed ||
        threadGeneration != (_threadGenerations[characterId] ?? 0)) {
      return;
    }
    if (offline) {
      await _enqueueMessage(characterId, message);
      await onAccepted?.call();
      return;
    }
    await _dispatchUserMessage(characterId, message, onAccepted: onAccepted);
  }

  Future<void> sendAttachments(
    String characterId,
    List<ChatAttachment> attachments, {
    String? caption,
    String? replyToId,
    String? replyPreview,
  }) async {
    if (attachments.isEmpty || state.sendingIn.contains(characterId)) return;
    if (attachments.length == 1) {
      await sendAttachment(
        characterId,
        attachments.first,
        caption: caption,
        replyToId: replyToId,
        replyPreview: replyPreview,
      );
      return;
    }
    final threadGeneration = _threadGenerations[characterId] ?? 0;
    final owner = _cacheOwnerId;
    final generation = _cacheGeneration;
    final requestId = createRequestId();
    final bounded = await _retainMediaForOwner(owner, requestId, attachments);
    if (_disposed || owner != _cacheOwnerId ||
        generation != _cacheGeneration ||
        threadGeneration != (_threadGenerations[characterId] ?? 0)) return;
    final message = AiChatMessage(
      id: _newId(),
      isUser: true,
      text: (caption ?? '').trim(),
      createdAt: DateTime.now(),
      attachments: bounded,
      replyToId: replyToId,
      replyPreview: replyPreview,
      deliveryStatus: 'sending',
      uploadProgress: 0,
      requestId: requestId,
    );
    final offline = await _offlineNow();
    if (_disposed ||
        threadGeneration != (_threadGenerations[characterId] ?? 0)) {
      return;
    }
    if (offline) {
      await _enqueueMessage(characterId, message);
      return;
    }
    await _dispatchUserMessage(characterId, message);
  }

  Future<void> _dispatchUserMessage(
    String characterId,
    AiChatMessage userMsg, {
    bool retry = false,
    String? transportPrompt,
    Future<void> Function()? onAccepted,
  }) async {
    final connectionGeneration = _connectionGeneration;
    final threadGeneration = _threadGenerations[characterId] ?? 0;
    final thread = threadOf(characterId);
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(
          messages: retry ? thread.messages : [...thread.messages, userMsg],
          updatedAt: DateTime.now(),
        ),
      },
      sendingIn: {...state.sendingIn, characterId},
    );
    await _save();
    await onAccepted?.call();
    _setDelivery(characterId, userMsg.id, 'sent');
    if (_disposed || threadGeneration != (_threadGenerations[characterId] ?? 0))
      return;
    final audioOwner = _cacheOwnerId;
    final audioGeneration = _cacheGeneration;
    bool currentAudioOwner() => !_disposed && audioOwner == _cacheOwnerId && audioGeneration == _cacheGeneration && connectionGeneration == _connectionGeneration && threadGeneration == (_threadGenerations[characterId] ?? 0);
    try {
      final attachment = userMsg.attachment;
      final attachmentSet = userMsg.attachments;
      final hasMedia = attachment != null || attachmentSet.isNotEmpty;
      final voiceReply = userMsg.allAttachments.any((a) => a.kind == 'voice' || a.kind == 'audio');
      final streamMessageId = _beginAiStream(characterId, requestId: userMsg.requestId);
      final visiblePrompt = userMsg.replyPreview?.trim().isNotEmpty == true
          ? 'Replying to this earlier message:\n"${userMsg.replyPreview}"\n\n${userMsg.text}'
          : userMsg.text;
      final promptText =
          transportPrompt?.trim().isNotEmpty == true
              ? transportPrompt!.trim()
              : visiblePrompt;
      final mediaCaption = promptText;
      // Recorded-message replies are completed clips. The transport can use
      // Gemini Live to generate audio, but chat never plays generation PCM.
      var spokenTranscript = '';
      void textDelta(String delta) {
        if (!voiceReply && currentAudioOwner() && spokenTranscript.isEmpty) _appendAiDelta(characterId,streamMessageId,delta);
      }
      void transcriptDelta(String delta) {
        if (voiceReply || !currentAudioOwner()) return;
        spokenTranscript += delta;
        _updateMessage(characterId,streamMessageId,(message)=>message.copyWith(text:spokenTranscript,deliveryStatus:'streaming'),persist:false);
      }
      final result = !hasMedia
          ? await _sendViaTransport(
              characterId,
              promptText,
              onTextDelta: textDelta,
              requestId: userMsg.requestId,
            )
          : attachmentSet.isNotEmpty
          ? await _sendMediaSetViaTransport(
              characterId,
              userMsg.id,
              attachmentSet,
              caption: mediaCaption,
              requestId: userMsg.requestId,
              onTextDelta: textDelta,
              onAudioTranscriptDelta: transcriptDelta,
            )
          : await _sendMediaViaTransport(
              characterId,
              userMsg.id,
              attachment!,
              caption: mediaCaption,
              requestId: userMsg.requestId,
              onTextDelta: textDelta,
              onAudioTranscriptDelta: transcriptDelta,
            );
      if (_disposed ||
          threadGeneration != (_threadGenerations[characterId] ?? 0)) {
        return;
      }
      if (connectionGeneration != _connectionGeneration) {
        throw const ApiException('Connection changed');
      }
      _updateMessage(
        characterId,
        userMsg.id,
        (message) => message.copyWith(
          deliveryStatus: 'delivered',
          uploadProgress: message.allAttachments.isNotEmpty ? 1.0 : null,
        ),
      );
      ChatAttachment? replyAudio;
      if (result.audioBytes case final audio? when audio.isNotEmpty) {
        // Voice-note and text replies can carry Gemini raw PCM, not a WAV
        // container. A failed optional player attachment must never hide an
        // already successful, persisted text reply.
        try {
          final playable = prepareAgentAudioAttachment(
            audio,
            mimeType: result.audioMimeType,
          );
          final owner = _cacheOwnerId;
          final generation = _cacheGeneration;
          if (owner == null || owner.isEmpty) {
            throw StateError('Account changed before audio reply was saved');
          }
          final folder = await _mediaFolderForOwner(owner);
          if (_disposed || owner != _cacheOwnerId ||
              generation != _cacheGeneration) {
            throw StateError('Account changed before audio reply was saved');
          }
          final retained = await retainAgentReplyAudio(
            ownerFolder: folder,
            requestId: userMsg.requestId ?? createRequestId(),
            extension: playable.extension,
            bytes: playable.bytes,
          );
          if (_disposed || owner != _cacheOwnerId ||
              generation != _cacheGeneration) {
            try { await retained.delete(); } catch (_) {}
            throw StateError('Account changed while audio reply was saved');
          }
          // Keep the user's message slots 0-7 untouched. An assistant
          // voice response occupies reserved slot 8 for cross-device replay.
          final mediaTransport = ref.read(agentTransportProvider);
          if (mediaTransport is MasanawaAgentTransport &&
              userMsg.requestId != null &&
              playable.bytes.length <= 8 * 1024 * 1024) {
            try {
              unawaited(mediaTransport.savePrivateChatMedia(
                characterId: characterId,
                requestId: userMsg.requestId!,
                slot: 8,
                kind: 'voice',
                mimeType: playable.isWav ? 'audio/wav'
                    : 'audio/${playable.extension}',
                name: 'masana-reply.${playable.extension}',
                bytes: playable.bytes,
              ).catchError((Object _) {}));
            } catch (_) {
              // Retain the already delivered chat and local audio. Media
              // backup never causes inference or a charged turn to replay.
            }
          }
          replyAudio = ChatAttachment(
            kind: 'voice',
            path: retained.path,
            durationMs: result.audioDurationMs,
            sizeBytes: playable.bytes.length,
            waveform: playable.isWav
                ? _pcmWaveform(playable.bytes)
                : const [],
          );
        } catch (_) {
          // Preserve the delivered conversation turn if provider audio has an
          // unsupported format, is malformed, or cannot be cached locally.
        }
      }
        await _finalizeAiStream(
          characterId,
          streamMessageId,
          result.text,
          parts: result.parts,
          attachment: replyAudio,
          agentRunId: result.agentRunId,
          requestId: userMsg.requestId,
        );

    } catch (error) {
      if (_disposed ||
          threadGeneration != (_threadGenerations[characterId] ?? 0)) {
        return;
      }
      if (error is ApiException &&
          (error.statusCode == 401 ||
              error.statusCode == 403 ||
              error.statusCode == 404)) {
        _bindings.remove(characterId);
      }
      _removeStreamingPlaceholders(characterId);
      _setDelivery(characterId, userMsg.id, 'failed');
      final feedback = AgentFeedback.fromError(error, conversation: true);
      await _appendAi(
        characterId,
        feedback.message,
        parts: [
          AgentMessagePart(
            kind: AgentMessagePartKind.status,
            status: 'failed',
            referenceId: userMsg.id,
            actionLabel: feedback.actionLabel,
          ),
        ],
      );
    }
  }

  Future<void> retryMessage(String characterId, String messageId) async {
    if (_disposed || state.sendingIn.contains(characterId)) return;
    final thread = threadOf(characterId);
    final users = thread.messages.where((m) => m.id == messageId && m.isUser);
    if (users.isEmpty) return;
    final user = users.first;
    if (user.deliveryStatus != 'failed' ||
        user.requestId == null || user.requestId!.isEmpty) return;

    // Never guess whether the server executed the request. In particular, a
    // failed model execution is TERMINAL for its original idempotency key.
    // User-authorized retry after an actual server failure is a NEW turn;
    // unknown/pending cannot be retried as a new operation.
    final transport = _shellTransport;
    if (transport == null) return;
    final generation = _connectionGeneration;
    final owner = _cacheOwnerId;
    final threadGeneration = _threadGenerations[characterId] ?? 0;
    AgentTurnStatus status;
    try {
      status = await transport.turnStatus(characterId, user.requestId!);
    } catch (_) {
      return; // Server unavailable: no risk of double execution.
    }
    if (_disposed || generation != _connectionGeneration ||
        owner != _cacheOwnerId ||
        threadGeneration != (_threadGenerations[characterId] ?? 0)) return;

    if (status.state == 'completed') {
      await _reconcilePendingTurns(characterId, transport);
      return;
    }
    if (status.state == 'pending') {
      _setDelivery(characterId, messageId, 'processing');
      return;
    }
    if (status.state != 'failed' && status.state != 'missing') return;

    final failures = threadOf(characterId).messages.where(
      (m) => m.parts.any(
        (p) => p.kind == AgentMessagePartKind.status &&
            p.status == 'failed' && p.referenceId == messageId,
      ),
    ).toSet();

    if (status.state == 'failed') {
      // Retain the old failed message and server receipt for auditability.
      // The visible second message makes a voluntary second attempt explicit.
      final retry = AiChatMessage(
        id: _newId(),
        isUser: true,
        text: user.text,
        createdAt: DateTime.now(),
        attachment: user.attachment,
        attachments: user.attachments,
        replyToId: user.replyToId,
        replyPreview: user.replyPreview,
        deliveryStatus: 'queued',
        requestId: createRequestId(),
      );
      final updated = threadOf(characterId);
      state = state.copyWith(threads: {
        ...state.threads,
        characterId: updated.copyWith(
          messages: [
            ...updated.messages.where((m) => !failures.contains(m)),
            retry,
          ],
          updatedAt: DateTime.now(),
        ),
      });
    } else {
      // Only a positively missing server request may keep its original ID.
      final updated = threadOf(characterId);
      state = state.copyWith(threads: {
        ...state.threads,
        characterId: updated.copyWith(
          messages: updated.messages.where((m) => !failures.contains(m)).toList(),
          updatedAt: DateTime.now(),
        ),
      });
      _setDelivery(characterId, messageId, 'queued');
    }
    await _save();
    await _flushQueuedMessages();
  }

  Future<AgentTurnResult> _sendMediaViaTransport(
    String characterId,
    String messageId,
    ChatAttachment attachment, {
    required String caption,
    String? requestId,
    void Function(String)? onTextDelta,
    Future<void> Function(Uint8List)? onAudioPcmChunk,
    void Function(String)? onAudioTranscriptDelta,
  }) async {
    final owner = _cacheOwnerId;
    final ownerGeneration = _cacheGeneration;
    void checkOwner() {
      if (_disposed || owner != _cacheOwnerId || ownerGeneration != _cacheGeneration) {
        throw const ApiException('Account changed before media was sent');
      }
    }
    checkOwner();
    final file = File(attachment.path);
    final bytes = await file.readAsBytes();
    checkOwner();
    if (bytes.isEmpty || bytes.length > 8 * 1024 * 1024) {
      throw const ApiException(
        'Attachment must be between 1 byte and 8 MB',
        code: 'ATTACHMENT_TOO_LARGE',
      );
    }
    final mimeType = chatAttachmentMimeType(attachment, bytes);

    final transport = ref.read(agentTransportProvider);
    checkOwner();
    if (transport is MasanawaAgentTransport && requestId != null) {
      await transport.savePrivateChatMedia(
        characterId: characterId,
        requestId: requestId,
        slot: 0,
        kind: attachment.kind,
        mimeType: mimeType,
        name: attachment.name,
        bytes: bytes,
      );
      if (_disposed || owner != _cacheOwnerId ||
          ownerGeneration != _cacheGeneration) {
        throw const ApiException('Account changed before media was sent');
      }
    }
    final hadCachedBinding = _bindings.containsKey(characterId);
    var binding = await _bindingFor(characterId, transport);
    void progress(int sent,int total) {
      if (total <= 0 || owner != _cacheOwnerId || ownerGeneration != _cacheGeneration) return;
      _updateMessage(characterId,messageId,(message)=>message.copyWith(
        deliveryStatus:sent>=total?'processing':'uploading', uploadProgress:(sent/total).clamp(0.0,1.0).toDouble()),persist:false);
    }
    Future<AgentTurnResult> send() {
      checkOwner();
      if (transport is StreamingAgentMediaTransport) {
        return (transport as StreamingAgentMediaTransport).sendMediaTurnStream(binding:binding,
          bytes:bytes,mimeType:mimeType,caption:caption,requestId:requestId,
          onTextDelta:onTextDelta,onAudioPcmChunk:onAudioPcmChunk,onAudioTranscriptDelta:onAudioTranscriptDelta,onUploadProgress:progress);
      }
      return transport.sendMediaTurn(binding:binding,bytes:bytes,mimeType:mimeType,caption:caption,
        requestId:requestId,onUploadProgress:progress);
    }
    try {
      return await send();
    } catch (error) {
      if (!hadCachedBinding || !_isStaleSessionError(error)) rethrow;
      _bindings.remove(characterId);
      binding = await _bindingFor(characterId, transport);
      return send();
    }
  }

  Future<AgentTurnResult> _sendMediaSetViaTransport(
    String characterId,
    String messageId,
    List<ChatAttachment> attachments, {
    required String caption,
    String? requestId,
    void Function(String)? onTextDelta,
    Future<void> Function(Uint8List)? onAudioPcmChunk,
    void Function(String)? onAudioTranscriptDelta,
  }) async {
    final owner = _cacheOwnerId;
    final ownerGeneration = _cacheGeneration;
    void checkOwner() {
      if (_disposed || owner != _cacheOwnerId || ownerGeneration != _cacheGeneration) {
        throw const ApiException('Account changed before media was sent');
      }
    }
    checkOwner();
    final media = <AgentMediaInput>[];
    var totalBytes = 0;
    for (final attachment in attachments) {
      final file = File(attachment.path);
      final bytes = await file.readAsBytes();
      checkOwner();
      if (bytes.isEmpty || bytes.length > 8 * 1024 * 1024) {
        throw const ApiException(
          'Each attachment must be between 1 byte and 8 MB',
          code: 'ATTACHMENT_TOO_LARGE',
        );
      }
      totalBytes += chatAttachmentEncodedBytes(bytes.length);
      if (totalBytes > maxChatAttachmentSetEncodedBytes) {
        throw const ApiException(
          'Combined attachments must be 12 MB or smaller',
          code: 'ATTACHMENT_TOO_LARGE',
        );
      }
      final mimeType = chatAttachmentMimeType(attachment, bytes);
      media.add(
        AgentMediaInput(
          bytes: bytes,
          mimeType: mimeType,
          name: attachment.name,
        ),
      );
    }
    final transport = ref.read(agentTransportProvider);
    checkOwner();
    if (transport is MasanawaAgentTransport && requestId != null) {
      for (var index = 0; index < media.length; index++) {
        final part = media[index];
        await transport.savePrivateChatMedia(
          characterId: characterId,
          requestId: requestId,
          slot: index,
          kind: attachments[index].kind,
          mimeType: part.mimeType,
          name: part.name,
          bytes: part.bytes,
        );
        if (_disposed || owner != _cacheOwnerId ||
            ownerGeneration != _cacheGeneration) {
          throw const ApiException('Account changed before media was sent');
        }
      }
    }
    final binding = await _bindingFor(characterId, transport);
    checkOwner();
    void progress(int sent,int total) {
      if(total<=0 || owner!=_cacheOwnerId || ownerGeneration!=_cacheGeneration)return;
      _updateMessage(characterId,messageId,(message)=>message.copyWith(deliveryStatus:sent>=total?'processing':'uploading',uploadProgress:(sent/total).clamp(0.0,1.0).toDouble()),persist:false);
    }
    if(transport is StreamingAgentMediaTransport){
      return (transport as StreamingAgentMediaTransport).sendMediaSetTurnStream(binding:binding,media:media,
        caption:caption,requestId:requestId,onTextDelta:onTextDelta,onAudioPcmChunk:onAudioPcmChunk,onAudioTranscriptDelta:onAudioTranscriptDelta,onUploadProgress:progress);
    }
    return transport.sendMediaSetTurn(binding:binding,media:media,caption:caption,requestId:requestId,onUploadProgress:progress);
  }

  bool _isStaleSessionError(Object error) =>
      error is ApiException &&
      (error.statusCode == 404 ||
          error.code == 'agents.session_not_found' ||
          error.code == 'agents.session_closed');

  Future<AgentTurnResult> _sendViaTransport(
    String characterId,
    String prompt, {
    void Function(String delta)? onTextDelta,
    Future<void> Function(Uint8List pcmChunk)? onAudioPcmChunk,
    String? requestId,
  }) async {
    final transport = ref.read(agentTransportProvider);
    final hadCachedBinding = _bindings.containsKey(characterId);
    var binding = await _bindingFor(characterId, transport);
    try {
      return await transport.sendTurn(
        binding: binding,
        text: prompt,
        onTextDelta: onTextDelta,
        onAudioPcmChunk: onAudioPcmChunk,
        requestId: requestId,
      );
    } catch (error) {
      if (!hadCachedBinding || !_isStaleSessionError(error)) rethrow;
      _bindings.remove(characterId);
      binding = await _bindingFor(characterId, transport);
      return transport.sendTurn(
        binding: binding,
        text: prompt,
        onTextDelta: onTextDelta,
        onAudioPcmChunk: onAudioPcmChunk,
        requestId: requestId,
      );
    }
  }

  Future<AgentSessionBinding> _bindingFor(
    String characterId,
    AgentTransport transport,
  ) async {
    final connectionGeneration = _connectionGeneration;
    final threadGeneration = _threadGenerations[characterId] ?? 0;
    final cached = _bindings[characterId];
    final previewCached =
        cached != null && cached.characterSessionId.startsWith('preview-');
    if (cached != null &&
        previewCached == (transport is PreviewAgentTransport)) {
      return cached;
    }
    final binding = await transport.openSession(characterId);
    if (connectionGeneration != _connectionGeneration ||
        threadGeneration != (_threadGenerations[characterId] ?? 0)) {
      unawaited(transport.closeSession(binding));
      throw const ApiException('Conversation changed');
    }
    if (_disposed) return binding;
    _bindings[characterId] = binding;
    final thread = threadOf(characterId);
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(
          characterSessionId: binding.characterSessionId,
        ),
      },
    );
    await _save();
    return binding;
  }

  String _beginAiStream(String characterId, {String? requestId}) {
    final thread = threadOf(characterId);
    final id = _newId();
    final isOpen = state.openThreadId == characterId;
    final message = AiChatMessage(
      id: id,
      isUser: false,
      text: '',
      createdAt: DateTime.now(),
      deliveryStatus: 'streaming',
      requestId: requestId,
    );
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(
          messages: [...thread.messages, message],
          unread: isOpen ? 0 : thread.unread + 1,
          updatedAt: DateTime.now(),
        ),
      },
    );
    _save();
    // The recipient opened the thread: anything we sent has now arrived.
    _markUserMessages(characterId, {'sending', 'sent'}, 'delivered');
    return id;
  }

  void _appendAiDelta(String characterId, String messageId, String delta) {
    if (_disposed || delta.isEmpty) return;
    _updateMessage(
      characterId,
      messageId,
      (message) => message.copyWith(
        text: message.text + delta,
        deliveryStatus: 'streaming',
      ),
      persist: false,
    );
  }

  Future<void> _finalizeAiStream(
    String characterId,
    String messageId,
    String finalText, {
    List<AgentMessagePart> parts = const [],
    ChatAttachment? attachment,
    String? agentRunId,
    String? requestId,
  }) async {
    if (_disposed) return;
    _updateMessage(
      characterId,
      messageId,
      (message) => message.copyWith(
        text: finalText.trim().isEmpty ? message.text : finalText,
        parts: parts,
        attachment: attachment,
        deliveryStatus: 'delivered',
        requestId: requestId,
      ),
      persist: false,
    );
    final thread = threadOf(characterId);
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(
          messages: [for (final m in thread.messages)
            if (m.id == messageId || requestId == null || m.isUser || m.requestId != requestId) m],
          updatedAt: DateTime.now(),
          agentRunId: agentRunId,
        ),
      },
      sendingIn: {...state.sendingIn}..remove(characterId),
    );
    // A finished reply proves the recipient read our messages.
    _markUserMessages(characterId, {'delivered'}, 'read');
    await _save();
  }

  void _removeStreamingPlaceholders(String characterId) {
    final thread = threadOf(characterId);
    final removed = thread.messages
        .where((message) =>
            !message.isUser && message.deliveryStatus == 'streaming')
        .length;
    if (removed == 0) return;
    final messages = thread.messages
        .where((message) =>
            message.isUser || message.deliveryStatus != 'streaming')
        .toList();
    final isOpen = state.openThreadId == characterId;
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(
          messages: messages,
          unread: isOpen ? 0 : (thread.unread - removed).clamp(0, 1 << 30).toInt(),
        ),
      },
    );
  }

  Future<void> _appendAi(
    String characterId,
    String text, {
    List<AgentMessagePart> parts = const [],
    ChatAttachment? attachment,
    String? agentRunId,
    String? requestId,
  }) async {
    if (_disposed) return;
    final thread = threadOf(characterId);
    if (requestId != null && thread.messages.any(
      (message) => !message.isUser && message.requestId == requestId,
    )) {
      // HTTP, SSE and restarted queue recovery may finish the same turn.
      // Clear any stale spinner even when its assistant reply already exists.
      if (state.sendingIn.contains(characterId)) {
        state = state.copyWith(
          sendingIn: {...state.sendingIn}..remove(characterId),
        );
      }
      return;
    }
    final isOpen = state.openThreadId == characterId;
    final msg = AiChatMessage(
      id: _newId(),
      isUser: false,
      text: text,
      parts: parts,
      attachment: attachment,
      createdAt: DateTime.now(),
      deliveryStatus: 'delivered',
      requestId: requestId,
    );
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(
          messages: [...thread.messages, msg],
          unread: isOpen ? 0 : thread.unread + 1,
          updatedAt: DateTime.now(),
          agentRunId: agentRunId,
        ),
      },
      sendingIn: {...state.sendingIn}..remove(characterId),
    );
    // A delivered reply proves the recipient read our messages.
    _markUserMessages(characterId, {'delivered'}, 'read');
    await _save();
  }

  void seedGreeting(String characterId, String? greeting) {
    final text = greeting?.trim() ?? '';
    if (text.isEmpty) return;
    final thread = threadOf(characterId);
    if (thread.messages.isNotEmpty) return;
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(
          messages: [
            AiChatMessage(
              id: _newId(),
              isUser: false,
              text: text,
              createdAt: DateTime.now(),
            ),
          ],
          updatedAt: DateTime.now(),
        ),
      },
    );
    _save();
  }

  void injectScenario(
    String characterId, {
    required AgentMessagePart part,
    String text = '',
  }) {
    if (!kDebugMode) {
      throw StateError('Scenario injection is debug-only');
    }
    unawaited(_appendAi(characterId, text, parts: [part]));
  }

  void setScrollOffset(String characterId, double offset) {
    final thread = threadOf(characterId);
    final safe = offset.isFinite && offset > 0 ? offset : 0.0;
    if ((thread.scrollOffset - safe).abs() < 12) return;
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(scrollOffset: safe),
      },
    );
    _save();
  }

  void setDraftAttachments(
    String characterId,
    List<ChatAttachment> attachments,
  ) {
    final thread = threadOf(characterId);
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(
          draftAttachments: List.unmodifiable(attachments),
        ),
      },
    );
    _save();
  }

  void setDraftVoice(String characterId, ChatAttachment? attachment) {
    final thread = threadOf(characterId);
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(
          draftVoice: attachment,
          clearDraftVoice: attachment == null,
        ),
      },
    );
    _save();
  }

  void setDraft(String characterId, String value) {
    final thread = threadOf(characterId);
    state = state.copyWith(
      threads: {...state.threads, characterId: thread.copyWith(draft: value)},
    );
    _save();
  }

  void reactToMessage(String characterId, String messageId, String? emoji) {
    _updateMessage(characterId, messageId, (m) => m.copyWith(reaction: emoji ?? ''));
  }

  void editMessage(String characterId, String messageId, String text) {
    final value = text.trim();
    if (value.isEmpty) return;
    _updateMessage(
      characterId,
      messageId,
      (m) => m.isUser && !m.deleted
          ? m.copyWith(text: value, editedAt: DateTime.now())
          : m,
    );
  }

  void deleteMessage(String characterId, String messageId) {
    _updateMessage(
      characterId,
      messageId,
      (m) => m.copyWith(
        text: '',
        deleted: true,
        deliveryStatus: 'deleted',
      ),
    );
  }

  void renameThread(String characterId, String title) {
    final thread = threadOf(characterId);
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(title: title.trim().isEmpty ? null : title.trim()),
      },
    );
    _save();
  }

  void togglePin(String characterId) {
    final thread = threadOf(characterId);
    state = state.copyWith(
      threads: {...state.threads, characterId: thread.copyWith(pinned: !thread.pinned)},
    );
    _save();
  }

  void toggleArchive(String characterId) {
    final thread = threadOf(characterId);
    state = state.copyWith(
      threads: {...state.threads, characterId: thread.copyWith(archived: !thread.archived)},
    );
    _save();
  }

  void stopGeneration(String characterId) {
    unawaited(LivePcmAudio.stop());
    ref.read(agentTransportProvider).cancelTurn(characterId);
    _threadGenerations[characterId] = (_threadGenerations[characterId] ?? 0) + 1;
    final thread = threadOf(characterId);
    final messages = [...thread.messages];
    for (var i = messages.length - 1; i >= 0; i--) {
      final message = messages[i];
      if (!message.isUser && message.deliveryStatus == 'streaming') {
        messages[i] = message.copyWith(deliveryStatus: 'stopped');
        continue;
      }
      if (message.isUser && message.deliveryStatus == 'sending') {
        messages[i] = message.copyWith(deliveryStatus: 'stopped');
        break;
      }
    }
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(messages: messages),
      },
      sendingIn: {...state.sendingIn}..remove(characterId),
    );
    _save();
  }

  Future<void> newContext(String characterId) async {
    _threadGenerations[characterId] = (_threadGenerations[characterId] ?? 0) + 1;
    final old = _bindings.remove(characterId);
    if (old != null) {
      unawaited(ref.read(agentTransportProvider).closeSession(old));
    }
    final thread = threadOf(characterId);
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(
          characterSessionId: '',
          agentRunId: '',
        ),
      },
      sendingIn: {...state.sendingIn}..remove(characterId),
    );
    await _save();
  }

  List<AiChatMessage> searchMessages(String characterId, String query) {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return const [];
    return threadOf(characterId)
        .messages
        .where((m) => !m.deleted && m.text.toLowerCase().contains(q))
        .toList();
  }

  void _setDelivery(String characterId, String messageId, String status) {
    _updateMessage(characterId, messageId, (m) => m.copyWith(deliveryStatus: status));
  }

  /// Advances the user's own messages through receipt stages, mirroring a
  /// server-acknowledged → delivered → read pipeline. Only messages still in
  /// one of [from] move; failed, queued and stopped messages are untouched.
  void _markUserMessages(String characterId, Set<String> from, String to) {
    final thread = threadOf(characterId);
    for (final m in thread.messages) {
      if (m.isUser && !m.deleted && from.contains(m.deliveryStatus)) {
        _setDelivery(characterId, m.id, to);
      }
    }
  }

  void _updateMessage(
    String characterId,
    String messageId,
    AiChatMessage Function(AiChatMessage) transform, {
    bool persist = true,
  }) {
    final thread = threadOf(characterId);
    final messages = [
      for (final m in thread.messages)
        if (m.id == messageId) ...[
          transform(m),
        ] else
          m,
    ];
    if (!thread.messages.any((m) => m.id == messageId)) return;
    state = state.copyWith(
      threads: {
        ...state.threads,
        characterId: thread.copyWith(messages: messages, updatedAt: DateTime.now()),
      },
    );
    if (persist) _save();
  }

  void clearThread(String characterId) {
    _threadGenerations[characterId] =
        (_threadGenerations[characterId] ?? 0) + 1;
    final binding = _bindings.remove(characterId);
    if (binding != null) {
      unawaited(ref.read(agentTransportProvider).closeSession(binding));
    }
    unawaited(LivePcmAudio.stop());
    final threads = {...state.threads}..remove(characterId);
    state = state.copyWith(
      threads: threads,
      sendingIn: {...state.sendingIn}..remove(characterId),
    );
    _save();
  }

  /// Evict downloaded bytes without dropping conversations, drafts, retry
  /// payloads, canonical sessions or financial action journals.
  Future<void> clearDownloadedMediaCache() async {
    final owner = _cacheOwnerId;
    final generation = _cacheGeneration;
    bool current() => !_disposed && owner != null &&
        owner == _cacheOwnerId && generation == _cacheGeneration;
    if (!current()) throw StateError('Sign in to clear downloaded media');
    final folder = await _mediaFolderForOwner(owner!);
    if (!current()) throw StateError('Account changed before cache cleanup');
    final plan = planDownloadedChatMediaCleanup(state, folder);
    // Replace paths with authenticated placeholders before removing bytes.
    // Saving is owner-fenced and leaves every message and receipt in place.
    state = plan.state;
    await _save();
    for (final path in plan.paths) {
      if (!current()) throw StateError('Account changed during cache cleanup');
      // A picker may have selected an existing download while saving. Do not
      // delete anything newly referenced by a draft or active/retryable turn.
      final referenced = state.threads.values.any((thread) =>
        thread.draftAttachments.any((item) => item.path == path) ||
        thread.draftVoice?.path == path ||
        thread.messages.any((message) =>
          message.allAttachments.any((item) => item.path == path)));
      if (referenced) continue;
      // delete() unlinks only the file itself and never traverses directories.
      try { await File(path).delete(); } on FileSystemException catch (error) {
        if (error.osError?.errorCode != 2) rethrow;
      }
    }
  }

  Future<void> clearAll() async {
    final ids = <String>{...state.threads.keys, ..._bindings.keys};
    for (final id in ids) {
      _threadGenerations[id] = (_threadGenerations[id] ?? 0) + 1;
    }
    final transport = ref.read(agentTransportProvider);
    final bindings = [..._bindings.values];
    _bindings.clear();
    final subscriptions = [..._eventSubscriptions.values];
    _eventSubscriptions.clear();
    _eventCursors.clear();
    state = state.copyWith(threads: {}, sendingIn: {}, shellConfigs: {});
    await _save();
    await Future.wait([
      for (final binding in bindings)
        transport.closeSession(binding).catchError((_) {}),
      for (final subscription in subscriptions)
        subscription.cancel().catchError((_) {}),
      LivePcmAudio.stop().catchError((_) {}),
      _clearOwnedTempMedia(),
    ]);
  }

  Future<void> _clearOwnedTempMedia() async {
    try {
      final dir = await getTemporaryDirectory();
      if (!await dir.exists()) return;
      await for (final entity in dir.list(followLinks: false)) {
        if (entity is! File) continue;
        final name = entity.uri.pathSegments.isEmpty
            ? ''
            : entity.uri.pathSegments.last;
        if (!name.startsWith('masanawa_voice_') &&
            !name.startsWith('masanawa_reply_')) {
          continue;
        }
        try {
          await entity.delete();
        } catch (_) {
          // One locked temp file must not block account cleanup.
        }
      }
    } catch (_) {
      // OS temp storage remains non-canonical; cleanup is best effort.
    }
  }

  List<double> _pcmWaveform(Uint8List wavBytes, {int bars = 36}) {
    if (wavBytes.length <= 44 || bars < 1) return const [];
    final pcm = wavBytes.sublist(44);
    final sampleCount = pcm.length ~/ 2;
    if (sampleCount < bars) return const [];
    final samplesPerBar =
        (sampleCount / bars).floor().clamp(1, sampleCount).toInt();
    final values = <double>[];
    for (var bar = 0; bar < bars; bar++) {
      final startSample = bar * samplesPerBar;
      if (startSample >= sampleCount) break;
      final endSample =
          ((bar + 1) * samplesPerBar).clamp(0, sampleCount).toInt();
      var peak = 0;
      for (var sample = startSample; sample < endSample; sample++) {
        final offset = sample * 2;
        if (offset + 1 >= pcm.length) break;
        var value = pcm[offset] | (pcm[offset + 1] << 8);
        if (value >= 0x8000) value -= 0x10000;
        final magnitude = value.abs();
        if (magnitude > peak) peak = magnitude;
      }
      values.add((peak / 32768).clamp(0.06, 1.0).toDouble());
    }
    return List.unmodifiable(values);
  }

  String _newId() => 'm-${DateTime.now().microsecondsSinceEpoch}-${_seq++}';

  Future<Directory?> _documentsDirectory() {
    return _documentsDirectoryFuture ??= (() async {
      try {
        return await getApplicationDocumentsDirectory();
      } catch (_) {
        return null;
      }
    })();
  }

  Future<File?> _threadsFile(String ownerId) async {
    if (ownerId.isEmpty) return null;
    final dir = await _documentsDirectory();
    if (dir == null) return null;
    final owner =
        base64Url.encode(utf8.encode(ownerId)).replaceAll('=', '');
    return File('${dir.path}/masanawa_threads_v2_$owner.json');
  }

  Future<void> _deleteLegacyThreadCache() async {
    try {
      final dir = await _documentsDirectory();
      if (dir == null) return;
      final legacy = File('${dir.path}/$_kThreadsFile');
      if (await legacy.exists()) await legacy.delete();
    } catch (_) {
      // Legacy cache is never loaded; failed deletion does not block startup.
    }
  }

  Future<void> _deleteThreadCache(String ownerId) async {
    try {
      final file = await _threadsFile(ownerId);
      if (file != null && await file.exists()) await file.delete();
    } catch (_) {
      // Account cleanup remains best effort locally; server history is canonical.
    }
  }

  String _draftKey(String owner)=>'masanawa_auth_drafts_v1_${base64Url.encode(utf8.encode(owner)).replaceAll('=', '')}';

  Future<void> _saveSessionExpiryDrafts(String owner,Map<String,String> drafts) async {
    try{
      if(drafts.isEmpty){
        await _draftVault.delete(key:_draftKey(owner));
        return;
      }
      // Only user-authored unsent text is restored after authentication;
      // no cached media, session tokens or private server history.
      await _draftVault.write(key:_draftKey(owner),value:jsonEncode(drafts));
    }catch(_){
      // Secure storage unavailability must not interfere with sign-out.
    }
  }

  Future<void> _restoreSessionExpiryDrafts(String owner,int generation) async {
    try{
      final raw=await _draftVault.read(key:_draftKey(owner));
      if(raw==null||raw.isEmpty)return;
      final parsed=jsonDecode(raw);
      if(parsed is! Map || _disposed || owner!=_cacheOwnerId ||
         generation!=_cacheGeneration)return;
      final recovered=<String,ChatThread>{};
      for(final entry in parsed.entries){
        final id=entry.key, text=entry.value;
        if(id is! String || text is! String ||
           id.length>128 || text.isEmpty || text.length>32000)continue;
        final prior=threadOf(id);
        if(prior.draft.isEmpty) recovered[id]=prior.copyWith(draft:text);
      }
      if(recovered.isNotEmpty && !_disposed && owner==_cacheOwnerId &&
         generation==_cacheGeneration){
        state=state.copyWith(threads:{...state.threads,...recovered});
        unawaited(_save());
      }
      await _draftVault.delete(key:_draftKey(owner));
    }catch(_){
      // A damaged local vault must not leak data or prevent sign-in.
    }
  }

  Future<void> _handleOwnerChange(
    String? previousOwner,
    String? nextOwner,
    int generation,
  ) async {
    _connectionGeneration++;
    final safeDrafts=<String,String>{
      for(final entry in state.threads.entries)
        if(entry.value.draft.isNotEmpty && entry.value.draft.length<=32000)
          entry.key:entry.value.draft,
    };
    final expiryOnly=nextOwner==null && previousOwner!=null &&
      ref.read(sessionProvider.notifier).recentlyExpiredOwnerId==previousOwner;
    final ids = <String>{...state.threads.keys, ..._bindings.keys};
    for (final id in ids) {
      _threadGenerations[id] = (_threadGenerations[id] ?? 0) + 1;
    }
    final transport = ref.read(agentTransportProvider);
    final bindings = [..._bindings.values];
    _bindings.clear();
    final subscriptions = [..._eventSubscriptions.values];
    _eventSubscriptions.clear();
    _eventCursors.clear();
    state = state.copyWith(
      threads: {},
      sendingIn: {},
      shellConfigs: {},
      clearOpen: true,
    );

    if (previousOwner != null && previousOwner.isNotEmpty) {
      await _saveSessionExpiryDrafts(previousOwner,expiryOnly?safeDrafts:const {});
      await clearSecureShellState(ownerId: previousOwner);
      await _deleteThreadCache(previousOwner);
      await _deleteOwnedMediaCache(previousOwner);
    }
    await Future.wait([
      for (final binding in bindings)
        transport.closeSession(binding).catchError((_) {}),
      for (final subscription in subscriptions)
        subscription.cancel().catchError((_) {}),
      LivePcmAudio.stop().catchError((_) {}),
      _clearOwnedTempMedia(),
    ]);

    if (_disposed ||
        generation != _cacheGeneration ||
        nextOwner == null ||
        nextOwner.isEmpty ||
        nextOwner != _cacheOwnerId) {
      return;
    }
    await _load(nextOwner, generation);
    if(!_disposed && generation==_cacheGeneration && nextOwner==_cacheOwnerId)
      await _restoreSessionExpiryDrafts(nextOwner,generation);
  }

  Future<void> _load(String ownerId, int generation) async {
    try {
      final file = await _threadsFile(ownerId);
      if (file == null) return;

      // The retired unscoped cache is never read. Keep its cleanup off the
      // current account's hydration path so cached chats can paint first.
      unawaited(_deleteLegacyThreadCache());

      if (!await file.exists()) return;
      final raw = jsonDecode(await file.readAsString());
      final list = (raw as List? ?? [])
          .map((e) => ChatThread.fromJson((e as Map).cast<String, dynamic>()))
          .where((t) => t.characterId.isNotEmpty)
          .toList();
      if (_disposed ||
          generation != _cacheGeneration ||
          ownerId != _cacheOwnerId ||
          list.isEmpty) {
        return;
      }
      final recovered = [
        for (final thread in list)
          thread.copyWith(
            messages: List.unmodifiable([
              for (final message in thread.messages)
                message.copyWith(
                  deliveryStatus: recoveredChatDeliveryStatus(message),
                ),
            ]),
          ),
      ];
      state = state.copyWith(
        threads: {
          for (final thread in recovered) thread.characterId: thread,
          ...state.threads,
        },
      );
      MasanawaStartupMetrics.mark('cached_threads_ready');
      // Retried sends check canonical turn status first. Any completed server
      // operation is rendered from its receipt, not executed a second time.
      unawaited(_save());
      unawaited(_flushQueuedMessages());
    } catch (_) {
      // Corrupt/missing cache never prevents the user from opening chat.
    }
  }

  Future<void> _save() {
    final ownerId = _cacheOwnerId;
    if (ownerId == null || ownerId.isEmpty) return Future<void>.value();
    final generation = _cacheGeneration;
    // Snapshot before waiting: account B must never be written to A's file.
    final payload = jsonEncode(
      state.threads.values.map((thread) => thread.toJson()).toList(),
    );
    final next = _previousCacheSave.catchError((_) {}).then((_) async {
      if (_disposed || ownerId != _cacheOwnerId ||
          generation != _cacheGeneration) return;
      try {
        final file = await _threadsFile(ownerId);
        if (file == null || _disposed || ownerId != _cacheOwnerId ||
            generation != _cacheGeneration) return;
        await file.writeAsString(payload, flush: true);
      } catch (_) {
        // Server session/run truth is canonical; local cache best effort.
      }
    });
    _previousCacheSave = next;
    return next;
  }
}

final aiChatProvider = NotifierProvider<AiChatController, AiChatState>(
  AiChatController.new,
);


