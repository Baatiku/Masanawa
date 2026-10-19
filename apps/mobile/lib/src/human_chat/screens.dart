// Private audio uses the installed just_audio byte-stream API.
// ignore_for_file: experimental_member_use
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mime/mime.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

import '../core/request_id.dart';
import '../human_calls/human_calls.dart';
import '../core/voice_note_recorder.dart';
import 'controller.dart';
import 'models.dart';
import 'transport.dart';

Future<void> humanConversationStart(
  BuildContext context,
  WidgetRef ref,
  String handle,
) async {
  final transport = ref.read(humanCommunicationTransportProvider);
  try {
    final result = await transport.request(
      'POST',
      '/conversations',
      data: {'handle': handle, 'requestId': createRequestId()},
    );
    if (context.mounted && transport.active)
      context.push('/human/chat/${result['id']}');
  } catch (e) {
    if (context.mounted && transport.active) _notice(context, e);
  }
}

void _notice(BuildContext context, Object value) =>
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(value.toString())));
final humanInboxProvider = FutureProvider.autoDispose
    .family<List<HumanConversation>, String>((ref, key) async {
      final parts = jsonDecode(key) as List;
      final t = ref.watch(humanCommunicationTransportProvider);
      final items = <HumanConversation>[];
      String? after;
      final seen = <String>{};
      do {
        final response = await t.request(
          'GET',
          '/conversations',
          query: {
            'filter': parts[0] == 'requests' ? 'requests' : 'all',
            'query': parts[1],
            if (after != null) 'after': after,
          },
        );
        items.addAll(
          (response['items'] as List).map(
            (e) => HumanConversation(Map<String, dynamic>.from(e as Map)),
          ),
        );
        after = response['nextCursor'] as String?;
        if (after != null && !seen.add(after)) break;
      } while (after != null && t.active);
      return items;
    });

class HumanInboxSection extends ConsumerStatefulWidget {
  const HumanInboxSection({super.key, this.filter = 'all', this.query = ''});
  final String filter, query;
  @override
  ConsumerState<HumanInboxSection> createState() => _HumanInboxSectionState();
}

class _HumanInboxSectionState extends ConsumerState<HumanInboxSection> {
  StreamSubscription<HumanJson>? subscription;
  Timer? timer;
  String get key => jsonEncode([widget.filter, widget.query]);
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 10), (_) {
      if (mounted) ref.invalidate(humanInboxProvider(key));
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    subscription?.cancel();
    super.dispose();
  }

  Future<void> _options(HumanConversation c) async {
    final action = await showModalBottomSheet<String>(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final entry in {
              'pinned': c.json['pinned'] == true ? 'Unpin' : 'Pin',
              'muted': c.json['muted'] == true ? 'Unmute' : 'Mute',
              'archived': c.json['archived'] == true ? 'Unarchive' : 'Archive',
            }.entries)
              ListTile(
                title: Text(entry.value),
                onTap: () => Navigator.pop(context, entry.key),
              ),
          ],
        ),
      ),
    );
    if (action == null || !mounted) return;
    final t = ref.read(humanCommunicationTransportProvider);
    try {
      await t.request(
        'PATCH',
        '/conversations/${c.id}',
        data: {action: c.json[action] != true},
      );
      if (mounted && t.active) ref.invalidate(humanInboxProvider(key));
    } catch (e) {
      if (mounted && t.active) _notice(context, e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final result = ref.watch(humanInboxProvider(key));
    return result.when(
      loading: () => const Padding(
        padding: EdgeInsets.all(16),
        child: Center(child: CircularProgressIndicator()),
      ),
      error: (e, s) => ListTile(
        title: const Text('People chats unavailable'),
        subtitle: Text('$e'),
        trailing: IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () => ref.invalidate(humanInboxProvider(key)),
        ),
      ),
      data: (items) => Column(
        children: [
          if (widget.filter == 'all' &&
              items.any((c) => c.state == 'pending' && !c.initiator))
            ListTile(
              leading: const Icon(Icons.mark_chat_unread_outlined),
              title: const Text('Message requests'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (_) => const HumanInboxScreen(filter: 'requests'),
                ),
              ),
            ),
          if (widget.filter == 'all' && items.any((c) => c.archived))
            ListTile(
              leading: const Icon(Icons.archive_outlined),
              title: const Text('Archived chats'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (_) => const HumanInboxScreen(filter: 'archived'),
                ),
              ),
            ),
          for (final c in items)
            if (widget.filter == 'archived' ? c.archived : !c.archived)
              ListTile(
                leading: GestureDetector(
                  onTap: () =>
                      context.push('/u/${Uri.encodeComponent(c.handle)}'),
                  child: CircleAvatar(
                    child: Text(c.name.isEmpty ? '?' : c.name.substring(0, 1)),
                  ),
                ),
                title: Text(c.name),
                subtitle: Text(
                  (c.json['lastMessage'] as Map?)?['deleted'] == true
                      ? 'Message deleted'
                      : ((c.json['lastMessage'] as Map?)?['text'] as String? ??
                            (c.state == 'pending'
                                ? 'Message request'
                                : 'Start chatting')),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: (c.json['unreadCount'] as num? ?? 0) > 0
                    ? Badge(label: Text('${c.json['unreadCount']}'))
                    : c.json['pinned'] == true
                    ? const Icon(Icons.push_pin, size: 16)
                    : null,
                onLongPress: () => _options(c),
                onTap: () => context.push('/human/chat/${c.id}'),
              ),
        ],
      ),
    );
  }
}

class HumanInboxScreen extends ConsumerStatefulWidget {
  const HumanInboxScreen({super.key, this.filter = 'all'});
  final String filter;
  @override
  ConsumerState<HumanInboxScreen> createState() => _HumanInboxScreenState();
}

class _HumanInboxScreenState extends ConsumerState<HumanInboxScreen> {
  String query = '';
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(
        widget.filter == 'requests'
            ? 'Message requests'
            : widget.filter == 'archived'
            ? 'Archived chats'
            : 'People',
      ),
    ),
    body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: TextField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search people and messages',
            ),
            onChanged: (v) => setState(() => query = v),
          ),
        ),
        HumanInboxSection(filter: widget.filter, query: query),
      ],
    ),
  );
}

class HumanChatScreen extends ConsumerStatefulWidget {
  const HumanChatScreen({super.key, required this.conversationId});
  final String conversationId;
  @override
  ConsumerState<HumanChatScreen> createState() => _HumanChatScreenState();
}

class _HumanChatScreenState extends ConsumerState<HumanChatScreen>
    with WidgetsBindingObserver {
  HumanThreadController? controller;
  VoiceNoteRecorder recorder = VoiceNoteRecorder();
  final text = TextEditingController();
  final scroll = ScrollController();
  final List<HumanAttachment> attachments = [];
  HumanMessage? reply;
  String? owner;
  bool picking = false, searching = false;
  bool initialScroll = true;
  bool bound = false;
  String? lastRead;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    recorder.addListener(_redraw);
    scroll.addListener(_read);
  }

  void _redraw() {
    if (mounted) {
      setState(() {});
      _read();
    }
  }

  void _bind(String? next) {
    if (bound &&
        owner == next &&
        (next == null || controller?.id == widget.conversationId))
      return;
    bound = true;
    controller?.removeListener(_redraw);
    controller?.dispose();
    controller = null;
    unawaited(recorder.close());
    recorder = VoiceNoteRecorder()..addListener(_redraw);
    owner = next;
    initialScroll = true;
    lastRead = null;
    attachments.clear();
    reply = null;
    text.clear();
    if (next == null) return;
    final c = HumanThreadController(
      ref.read(humanCommunicationTransportProvider),
      HumanJournal(next, widget.conversationId),
      widget.conversationId,
    );
    controller = c;
    c.addListener(_redraw);
    unawaited(
      c.start().then((_) {
        if (mounted && controller == c && c.current) {
          text.text = c.draft;
          attachments.addAll(c.draftAttachments.map(HumanAttachment.new));
          reply = c.messages.where((m) => m.id == c.draftReply).firstOrNull;
          _read();
        }
      }),
    );
  }

  void _read() {
    final c = controller;
    if (c == null) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !c.current || !scroll.hasClients) return;
      if (initialScroll && !c.loading) {
        initialScroll = false;
        scroll.jumpTo(scroll.position.maxScrollExtent);
      }
      if (scroll.position.maxScrollExtent - scroll.position.pixels < 64 &&
          c.messages.isNotEmpty &&
          lastRead != c.messages.last.id &&
          ModalRoute.of(context)?.isCurrent == true &&
          WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed) {
        lastRead = c.messages.last.id;
        unawaited(c.visibleRead());
      }
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      unawaited(controller?.refresh() ?? Future<void>.value());
      _read();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    controller?.removeListener(_redraw);
    controller?.dispose();
    unawaited(recorder.close());
    text.dispose();
    scroll.dispose();
    super.dispose();
  }

  Future<void> _run(Future<void> Function() action) async {
    final c = controller;
    try {
      await action();
    } catch (e) {
      if (mounted && c?.current == true) _notice(context, e);
    }
  }

  Future<void> _upload(
    Uint8List bytes,
    String name,
    String kind, {
    int? duration,
  }) async {
    final c = controller;
    if (c == null || !c.current) return;
    if (bytes.length > 8 * 1024 * 1024)
      throw StateError('Choose a file smaller than 8 MB.');
    final result = await c.transport.request(
      'POST',
      '/conversations/${c.id}/media',
      data: {
        'requestId': createRequestId(),
        'kind': kind,
        'mimeType':
            lookupMimeType(name, headerBytes: bytes) ??
            (kind == 'voice' ? 'audio/mp4' : 'application/octet-stream'),
        'name': name,
        'dataBase64': base64Encode(bytes),
        if (duration != null) 'durationMs': duration,
      },
    );
    if (mounted && controller == c && c.current) {
      setState(() => attachments.add(HumanAttachment(result)));
      c.draftAttachments = attachments.map((a) => a.json).toList();
      await c.persist();
    }
  }

  Future<void> _pick() async {
    final c = controller;
    final kind = await showModalBottomSheet<String>(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final entry in {
              'image': 'Photo',
              'camera': 'Camera',
              'video': 'Video',
              'doc': 'PDF document',
            }.entries)
              ListTile(
                title: Text(entry.value),
                onTap: () => Navigator.pop(context, entry.key),
              ),
          ],
        ),
      ),
    );
    if (kind == null || !mounted || c == null || controller != c || !c.current)
      return;
    setState(() => picking = true);
    await _run(() async {
      if (kind == 'doc') {
        final f = await FilePicker.pickFile(
          type: FileType.custom,
          allowedExtensions: ['pdf'],
        );
        if (f == null || !mounted || controller != c || !c.current) return;
        final size = await f.length();
        if (size == null || size > 20000000)
          throw StateError('Choose a PDF smaller than 20 MB.');
        await _upload(await f.readAsBytes(), f.name, 'doc');
      } else {
        final p = ImagePicker();
        final f = kind == 'video'
            ? await p.pickVideo(source: ImageSource.gallery)
            : await p.pickImage(
                source: kind == 'camera'
                    ? ImageSource.camera
                    : ImageSource.gallery,
                maxWidth: 2048,
                imageQuality: 85,
              );
        if (f == null || !mounted || controller != c || !c.current) return;
        if (await f.length() > 20000000)
          throw StateError('Choose media smaller than 20 MB.');
        await _upload(
          await f.readAsBytes(),
          f.name,
          kind == 'camera' ? 'image' : kind,
        );
      }
    });
    if (mounted && controller == c) setState(() => picking = false);
  }

  Future<void> _voice() async {
    final c = controller;
    if (c == null) return;
    if (recorder.state == VoiceNoteState.recording ||
        recorder.state == VoiceNoteState.ready) {
      await _run(() async {
        final r = recorder;
        final note = r.state == VoiceNoteState.ready ? r.note : await r.stop();
        if (note == null || !mounted || controller != c || !c.current) return;
        await _upload(
          await File(note.path).readAsBytes(),
          note.name ?? 'Voice note.m4a',
          'voice',
          duration: note.durationMs,
        );
        await r.cancel();
      });
    } else {
      await recorder.start(
        isOwnerCurrent: () => mounted && controller == c && c.current,
      );
    }
  }

  Future<void> _threadAction(String action) async {
    final c = controller;
    final thread = c?.conversation;
    if (c == null || thread == null) return;
    await _run(() async {
      if (action == 'block') {
        await c.transport.request(
          'PUT',
          '/privacy/blocked/${Uri.encodeComponent(thread.handle)}',
          data: {'blocked': true},
        );
        if (mounted && c.current) Navigator.maybePop(context);
      } else {
        await c.transport.request(
          'PATCH',
          '/conversations/${c.id}',
          data: {action: thread.json[action] != true},
        );
        if (c.current) await c.refresh();
      }
    });
  }

  Future<void> _send() async {
    final c = controller;
    if (c == null ||
        c.busy ||
        (text.text.trim().isEmpty && attachments.isEmpty))
      return;
    final body = text.text.trim();
    final files = attachments.map((e) => e.id).toList();
    final responding = reply?.id;
    final saved = await c.enqueue(
      text: body,
      attachments: files,
      replyToId: responding,
    );
    if (!mounted || controller != c || !c.current) return;
    // Once journaled, retries own the immutable body and attachment identifiers.
    if (saved) {
      text.clear();
      setState(() {
        attachments.clear();
        reply = null;
      });
    }
  }

  Future<void> _action(HumanMessage m) async {
    final c = controller;
    final choice = await showModalBottomSheet<String>(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final a in [
              'Reply',
              'Copy',
              'Share',
              if (m.mine) 'Delete',
              if (!m.mine) 'Report',
            ])
              ListTile(title: Text(a), onTap: () => Navigator.pop(context, a)),
          ],
        ),
      ),
    );
    if (!mounted ||
        choice == null ||
        c == null ||
        controller != c ||
        !c.current)
      return;
    await _run(() async {
      switch (choice) {
        case 'Reply':
          setState(() => reply = m);
          c.draftReply = m.id;
          await c.persist();
          break;
        case 'Copy':
          await Clipboard.setData(ClipboardData(text: m.text));
          break;
        case 'Share':
          final files = [for (final a in m.attachments) await _shareFile(c, a)];
          if (mounted && controller == c && c.current)
            await SharePlus.instance.share(
              ShareParams(text: m.text, files: files),
            );
          break;
        case 'Delete':
          await c.transport.request(
            'DELETE',
            '/conversations/${c.id}/messages/${m.id}',
          );
          await c.refresh();
          break;
        case 'Report':
          final reason = await _reason();
          if (reason != null && c.current) {
            await c.transport.request(
              'POST',
              '/conversations/${c.id}/messages/${m.id}/report',
              data: {'reason': reason, 'requestId': createRequestId()},
            );
            if (mounted && c.current) _notice(context, 'Report submitted');
          }
          break;
      }
    });
  }

  Future<XFile> _shareFile(HumanThreadController c, HumanAttachment a) async {
    final r = await c.transport.request(
      'GET',
      '/conversations/${c.id}/media/${a.id}',
    );
    return XFile.fromData(
      base64Decode(r['dataBase64'] as String),
      name: a.name,
      mimeType: a.mimeType,
    );
  }

  Future<String?> _reason() async {
    final input = TextEditingController();
    final result = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Report message'),
        content: TextField(
          controller: input,
          maxLength: 500,
          decoration: const InputDecoration(hintText: 'What happened?'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              if (input.text.trim().isNotEmpty)
                Navigator.pop(context, input.text.trim());
            },
            child: const Text('Report'),
          ),
        ],
      ),
    );
    input.dispose();
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final next = ref.watch(humanAccountProvider);
    ref.watch(humanCommunicationTransportProvider);
    _bind(next);
    final c = controller;
    final conversation = c?.conversation;
    if (next == null)
      return const Scaffold(
        body: Center(child: Text('Sign in to open this conversation.')),
      );
    _read();
    final allowed =
        conversation != null &&
        (conversation.state == 'accepted' ||
            conversation.state == 'pending' &&
                conversation.initiator &&
                c!.messages.isEmpty);
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: conversation == null
              ? null
              : () => context.push(
                  '/u/${Uri.encodeComponent(conversation.handle)}',
                ),
          child: Text(conversation?.name ?? 'Conversation'),
        ),
        actions: [
          if (conversation != null)
            IconButton(
              tooltip: 'Voice call',
              icon: const Icon(Icons.call_outlined),
              onPressed: () async {
                await recorder.cancel();
                if (mounted && c!.current)
                  await humanCallStart(context, ref, conversation.handle);
              },
            ),
          IconButton(
            tooltip: 'Search conversation',
            icon: const Icon(Icons.search),
            onPressed: () => setState(() => searching = !searching),
          ),
          if (conversation != null)
            PopupMenuButton<String>(
              tooltip: 'Conversation options',
              onSelected: _threadAction,
              itemBuilder: (context) => [
                for (final e in {
                  'pinned': conversation.pinned ? 'Unpin' : 'Pin',
                  'muted': conversation.muted ? 'Unmute' : 'Mute',
                  'archived': conversation.archived ? 'Unarchive' : 'Archive',
                  'block': 'Block person',
                }.entries)
                  PopupMenuItem(value: e.key, child: Text(e.value)),
              ],
            ),
        ],
      ),
      body: Column(
        children: [
          if (searching)
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search messages',
              ),
              onSubmitted: (v) {
                c!.search = v;
                unawaited(c.refresh());
              },
            ),
          if (c?.error != null)
            MaterialBanner(
              content: Text(c!.error!),
              actions: [
                TextButton(
                  onPressed: () => c.refresh(),
                  child: const Text('Refresh'),
                ),
              ],
            ),
          if (conversation?.state == 'pending')
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Text(
                    conversation!.initiator
                        ? 'Request sent. You can reply after acceptance.'
                        : 'This person wants to chat with you.',
                  ),
                  if (!conversation.initiator)
                    Wrap(
                      children: [
                        for (final action in ['accept', 'delete', 'block'])
                          TextButton(
                            onPressed: () => _run(() async {
                              await c!.decision(action);
                              if (action != 'accept' && mounted && c.current)
                                Navigator.maybePop(context);
                            }),
                            child: Text(
                              action[0].toUpperCase() + action.substring(1),
                            ),
                          ),
                      ],
                    ),
                ],
              ),
            ),
          Expanded(
            child: c == null || c.loading
                ? const Center(child: CircularProgressIndicator())
                : ListView(
                    controller: scroll,
                    padding: const EdgeInsets.all(12),
                    children: [
                      if (c.before != null)
                        TextButton(
                          onPressed: () => c.refresh(older: true),
                          child: const Text('Load earlier messages'),
                        ),
                      if (c.messages.isEmpty)
                        const Padding(
                          padding: EdgeInsets.all(24),
                          child: Center(
                            child: Text('Your conversation starts here.'),
                          ),
                        ),
                      for (var i = 0; i < c.messages.length; i++) ...[
                        _date(c.messages, i),
                        _bubble(c.messages[i]),
                      ],
                      for (final body in c.pending)
                        ListTile(
                          leading: const Icon(Icons.schedule),
                          title: Text(body['text'] as String),
                          subtitle: const Text('Waiting for confirmation'),
                          trailing: IconButton(
                            tooltip: 'Retry message',
                            onPressed: c.busy ? null : c.retry,
                            icon: const Icon(Icons.refresh),
                          ),
                        ),
                    ],
                  ),
          ),
          if (reply != null)
            ListTile(
              dense: true,
              title: const Text('Replying to'),
              subtitle: Text(reply!.text, maxLines: 2),
              trailing: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  setState(() => reply = null);
                  c!.draftReply = null;
                  unawaited(c.persist());
                },
              ),
            ),
          if (attachments.isNotEmpty)
            Wrap(
              children: [
                for (final a in attachments)
                  InputChip(
                    label: Text(a.name),
                    onDeleted: () {
                      setState(() => attachments.remove(a));
                      c!.draftAttachments = attachments
                          .map((a) => a.json)
                          .toList();
                      unawaited(c.persist());
                    },
                  ),
              ],
            ),
          if (recorder.error != null) Text(recorder.error!),
          if (recorder.state == VoiceNoteState.recording)
            ListTile(
              leading: const Icon(Icons.mic, color: Colors.red),
              title: Text('Recording ${recorder.elapsed.inSeconds}s'),
              trailing: IconButton(
                tooltip: 'Discard recording',
                onPressed: recorder.cancel,
                icon: const Icon(Icons.delete_outline),
              ),
            ),
          if (allowed)
            SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      tooltip: 'Attach',
                      onPressed:
                          picking ||
                              c?.busy == true ||
                              recorder.state == VoiceNoteState.recording
                          ? null
                          : _pick,
                      icon: picking
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.attach_file),
                    ),
                    Expanded(
                      child: TextField(
                        controller: text,
                        enabled: c?.busy != true,
                        minLines: 1,
                        maxLines: 5,
                        decoration: const InputDecoration(
                          hintText: 'Message',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                        ),
                        onChanged: (v) {
                          c!.draft = v;
                          unawaited(
                            c.persist().catchError((Object e) {
                              if (mounted && c.current) _notice(context, e);
                            }),
                          );
                        },
                      ),
                    ),
                    IconButton(
                      tooltip: recorder.state == VoiceNoteState.recording
                          ? 'Stop recording'
                          : 'Record voice note',
                      onPressed: c?.busy == true || picking ? null : _voice,
                      icon: Icon(
                        recorder.state == VoiceNoteState.recording
                            ? Icons.stop
                            : Icons.mic,
                      ),
                    ),
                    IconButton(
                      tooltip: 'Send message',
                      onPressed:
                          c!.busy ||
                              picking ||
                              recorder.state == VoiceNoteState.recording ||
                              recorder.state == VoiceNoteState.starting ||
                              recorder.state == VoiceNoteState.stopping
                          ? null
                          : _send,
                      icon: const Icon(Icons.send, color: Color(0xff128c7e)),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _date(List<HumanMessage> messages, int index) {
    final day = messages[index].createdAt.split('T').first;
    if (index > 0 && messages[index - 1].createdAt.split('T').first == day)
      return const SizedBox.shrink();
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(day, style: Theme.of(context).textTheme.labelSmall),
      ),
    );
  }

  Widget _bubble(HumanMessage m) => Align(
    alignment: m.mine ? Alignment.centerRight : Alignment.centerLeft,
    child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 330),
      child: GestureDetector(
        onLongPress: m.deleted ? null : () => _action(m),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: m.mine
                ? const Color(0xffdcf8c6)
                : Theme.of(context).colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (m.json['replyToId'] != null)
                Text(
                  'Reply · ${controller!.messages.where((p) => p.id == m.json['replyToId']).map((p) => p.deleted ? 'Message deleted' : p.text).firstOrNull ?? 'Earlier message'}',
                  maxLines: 2,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              Text(m.deleted ? 'Message deleted' : m.text),
              if (!m.deleted)
                for (final a in m.attachments)
                  HumanMediaTile(
                    key: ValueKey('${owner}_${m.id}_${a.id}'),
                    transport: controller!.transport,
                    conversationId: widget.conversationId,
                    attachment: a,
                  ),
              const SizedBox(height: 3),
              Text(
                '${m.createdAt.split('T').last.substring(0, 5)}${m.mine ? ' · ${m.json['deliveryStatus']}' : ''}',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

/// Bytes remain in memory and are discarded with the authorized message widget.
class _HumanAudioSource extends StreamAudioSource {
  _HumanAudioSource(this.bytes, this.mime);
  final Uint8List bytes;
  final String mime;
  @override
  Future<StreamAudioResponse> request([int? start, int? end]) async {
    final begin = start ?? 0;
    final finish = end ?? bytes.length;
    return StreamAudioResponse(
      sourceLength: bytes.length,
      contentLength: finish - begin,
      offset: begin,
      stream: Stream.value(bytes.sublist(begin, finish)),
      contentType: mime,
    );
  }
}

class HumanMediaTile extends StatefulWidget {
  const HumanMediaTile({
    super.key,
    required this.transport,
    required this.conversationId,
    required this.attachment,
  });
  final HumanCommunicationTransport transport;
  final String conversationId;
  final HumanAttachment attachment;
  @override
  State<HumanMediaTile> createState() => _HumanMediaTileState();
}

class _HumanMediaTileState extends State<HumanMediaTile>
    with WidgetsBindingObserver {
  AudioPlayer? player;
  Uint8List? bytes;
  bool loading = false;
  String? error;
  double speed = 1;
  final lease = ValueNotifier<bool>(true);
  StreamSubscription<void>? revoked;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    revoked = widget.transport.revocations.listen((_) {
      lease.value = false;
      bytes = null;
      unawaited(player?.stop() ?? Future<void>.value());
      if (mounted) setState(() {});
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state != AppLifecycleState.resumed)
      unawaited(player?.pause() ?? Future<void>.value());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    lease.value = false;
    unawaited(revoked?.cancel() ?? Future<void>.value());
    unawaited(player?.dispose() ?? Future<void>.value());
    bytes = null;
    super.dispose();
  }

  Future<void> _open() async {
    setState(() => loading = true);
    try {
      // Reauthorize every open; a block, tombstone or revoked account never plays cached bytes.
      await player?.stop();
      bytes = null;
      final a = widget.attachment;
      final result = await widget.transport.request(
        'GET',
        '/conversations/${widget.conversationId}/media/${a.id}',
      );
      if (!mounted || !widget.transport.active) return;
      final data = base64Decode(result['dataBase64'] as String);
      bytes = data;
      if (a.kind == 'voice') {
        player ??= AudioPlayer();
        await player!.setAudioSource(_HumanAudioSource(data, a.mimeType));
        if (!mounted || !widget.transport.active) {
          await player!.stop();
          return;
        }
        unawaited(player!.play());
      } else if (a.kind == 'image') {
        if (mounted)
          await showDialog<void>(
            context: context,
            builder: (context) => Dialog(
              child: ValueListenableBuilder<bool>(
                valueListenable: lease,
                builder: (context, valid, _) => valid
                    ? InteractiveViewer(
                        child: Image.memory(data, fit: BoxFit.contain),
                      )
                    : const SizedBox.shrink(),
              ),
            ),
          );
      } else if (a.kind == 'video') {
        if (mounted)
          await Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (_) => _HumanVideo(
                data: data,
                mime: a.mimeType,
                transport: widget.transport,
                lease: lease,
              ),
            ),
          );
      } else {
        await SharePlus.instance.share(
          ShareParams(
            files: [XFile.fromData(data, name: a.name, mimeType: a.mimeType)],
          ),
        );
      }
      error = null;
    } catch (e) {
      if (mounted) {
        await player?.stop();
        bytes = null;
        error = 'Media unavailable: $e';
      }
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final a = widget.attachment;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: loading
              ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Icon(
                  a.kind == 'voice'
                      ? Icons.play_circle
                      : a.kind == 'image'
                      ? Icons.image
                      : a.kind == 'video'
                      ? Icons.videocam
                      : Icons.description,
                ),
          title: Text(a.name),
          subtitle: error == null ? null : Text(error!),
          onTap: loading ? null : _open,
        ),
        if (player != null)
          StreamBuilder<PlayerState>(
            stream: player!.playerStateStream,
            builder: (context, s) => Row(
              children: [
                IconButton(
                  tooltip: 'Pause voice note',
                  onPressed: () => player!.pause(),
                  icon: const Icon(Icons.pause),
                ),
                Expanded(
                  child: StreamBuilder<Duration>(
                    stream: player!.positionStream,
                    builder: (context, p) => Text(
                      '${(p.data ?? Duration.zero).inSeconds}s / ${player!.duration?.inSeconds ?? 0}s',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    speed = speed == 1
                        ? 1.5
                        : speed == 1.5
                        ? 2
                        : 1;
                    await player!.setSpeed(speed);
                    if (mounted) setState(() {});
                  },
                  child: Text('${speed}x'),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _HumanVideo extends StatefulWidget {
  const _HumanVideo({
    required this.data,
    required this.mime,
    required this.transport,
    required this.lease,
  });
  final Uint8List data;
  final String mime;
  final HumanCommunicationTransport transport;
  final ValueNotifier<bool> lease;
  @override
  State<_HumanVideo> createState() => _HumanVideoState();
}

class _HumanVideoState extends State<_HumanVideo> with WidgetsBindingObserver {
  VideoPlayerController? player;
  Directory? folder;
  String? error;
  Timer? fence;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    widget.lease.addListener(_revoke);
    unawaited(_load());
    fence = Timer.periodic(const Duration(milliseconds: 300), (_) {
      if (!widget.transport.active || !widget.lease.value) {
        unawaited(player?.pause() ?? Future<void>.value());
        if (mounted) Navigator.maybePop(context);
      }
    });
  }

  void _revoke() {
    if (!widget.lease.value) {
      unawaited(player?.pause() ?? Future<void>.value());
      if (mounted) setState(() {});
    }
  }

  Future<void> _load() async {
    try {
      await HumanCommunicationTransport.recoverTemporaryHumanMedia();
      if (!mounted || !widget.transport.active || !widget.lease.value) return;
      folder = await Directory.systemTemp.createTemp('human-video-');
      final file = File(
        '${folder!.path}/video.${widget.mime == 'video/webm' ? 'webm' : 'mp4'}',
      );
      await file.writeAsBytes(widget.data, flush: true);
      if (!mounted || !widget.transport.active || !widget.lease.value) {
        await folder!.delete(recursive: true);
        return;
      }
      final p = VideoPlayerController.file(file);
      player = p;
      await p.initialize();
      if (!mounted || !widget.transport.active || !widget.lease.value) {
        await p.pause();
        return;
      }
      setState(() {});
      await p.play();
    } catch (e) {
      if (mounted) setState(() => error = '$e');
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state != AppLifecycleState.resumed)
      unawaited(player?.pause() ?? Future<void>.value());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    widget.lease.removeListener(_revoke);
    fence?.cancel();
    final p = player;
    final f = folder;
    unawaited(() async {
      await p?.dispose();
      if (f != null && await f.exists()) await f.delete(recursive: true);
    }());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Video')),
    body: Center(
      child: !widget.lease.value
          ? const SizedBox.shrink()
          : error != null
          ? Text(error!)
          : player?.value.isInitialized == true
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AspectRatio(
                  aspectRatio: player!.value.aspectRatio,
                  child: VideoPlayer(player!),
                ),
                VideoProgressIndicator(player!, allowScrubbing: true),
                IconButton(
                  tooltip: 'Play or pause',
                  onPressed: () {
                    setState(() {
                      player!.value.isPlaying
                          ? player!.pause()
                          : player!.play();
                    });
                  },
                  icon: const Icon(Icons.play_circle_outline),
                ),
              ],
            )
          : const CircularProgressIndicator(),
    ),
  );
}

class HumanPrivacyScreen extends ConsumerStatefulWidget {
  const HumanPrivacyScreen({super.key});
  @override
  ConsumerState<HumanPrivacyScreen> createState() => _HumanPrivacyScreenState();
}

class _HumanPrivacyScreenState extends ConsumerState<HumanPrivacyScreen> {
  HumanJson? privacy;
  List<HumanJson> blocked = [];
  String? owner, error;
  bool busy = false;
  HumanCommunicationTransport? transport;
  void _bind() {
    final account = ref.watch(humanAccountProvider);
    final t = ref.watch(humanCommunicationTransportProvider);
    if (owner == account && identical(transport, t)) return;
    owner = account;
    transport = t;
    privacy = null;
    blocked = [];
    error = null;
    if (account != null) unawaited(_load(t));
  }

  Future<void> _load(HumanCommunicationTransport t) async {
    try {
      final values = await Future.wait([
        t.request('GET', '/privacy'),
        t.request('GET', '/privacy/blocked'),
      ]);
      if (!mounted || !t.active || transport != t) return;
      setState(() {
        privacy = values[0];
        blocked = (values[1]['items'] as List)
            .map((e) => Map<String, dynamic>.from(e as Map))
            .toList();
        error = null;
      });
    } catch (e) {
      if (mounted && t.active && transport == t) setState(() => error = '$e');
    }
  }

  Future<void> _save(String key, Object value) async {
    final t = transport!;
    setState(() => busy = true);
    try {
      final result = await t.request('PATCH', '/privacy', data: {key: value});
      if (mounted && t.active && transport == t)
        setState(() => privacy = result);
    } catch (e) {
      if (mounted && t.active && transport == t) _notice(context, e);
    } finally {
      if (mounted && transport == t) setState(() => busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    _bind();
    return Scaffold(
      appBar: AppBar(title: const Text('Communication privacy')),
      body: owner == null
          ? const Center(child: Text('Sign in to change privacy.'))
          : error != null
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(error!),
                  TextButton(
                    onPressed: () => _load(transport!),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            )
          : privacy == null
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                for (final entry in {
                  'messages': 'Who can message me',
                  'calls': 'Who can call me',
                  'roomInvites': 'Who can add me to Rooms',
                }.entries)
                  ListTile(
                    title: Text(entry.value),
                    subtitle: const Text(
                      'Contacts includes people you follow or accepted chats.',
                    ),
                    trailing: DropdownButton<String>(
                      value: privacy![entry.key] as String,
                      onChanged: busy
                          ? null
                          : (v) {
                              if (v != null) unawaited(_save(entry.key, v));
                            },
                      items: [
                        for (final item in {
                          'everyone': 'Everyone',
                          'contacts': 'Contacts',
                          'nobody': 'Nobody',
                        }.entries)
                          DropdownMenuItem(
                            value: item.key,
                            child: Text(item.value),
                          ),
                      ],
                    ),
                  ),
                for (final entry in {
                  'readReceipts': 'Read receipts',
                  'presence': 'Show presence',
                }.entries)
                  SwitchListTile(
                    title: Text(entry.value),
                    value: privacy![entry.key] == true,
                    onChanged: busy ? null : (v) => _save(entry.key, v),
                  ),
                const Divider(),
                const ListTile(title: Text('Blocked people')),
                if (blocked.isEmpty)
                  const ListTile(title: Text('No blocked people')),
                for (final peer in blocked)
                  ListTile(
                    title: Text(peer['displayName'] as String),
                    subtitle: Text('@${peer['handle']}'),
                    trailing: TextButton(
                      onPressed: busy
                          ? null
                          : () async {
                              final t = transport!;
                              setState(() => busy = true);
                              try {
                                await t.request(
                                  'PUT',
                                  '/privacy/blocked/${Uri.encodeComponent(peer['handle'] as String)}',
                                  data: {'blocked': false},
                                );
                                if (t.active) await _load(t);
                              } catch (e) {
                                if (mounted && t.active) _notice(context, e);
                              } finally {
                                if (mounted && transport == t)
                                  setState(() => busy = false);
                              }
                            },
                      child: const Text('Unblock'),
                    ),
                  ),
              ],
            ),
    );
  }
}
