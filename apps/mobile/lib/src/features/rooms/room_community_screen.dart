import 'dart:math';
import 'dart:async';
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:share_plus/share_plus.dart';
import 'package:dio/dio.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'room_community_api.dart';
import 'room_invitation_links.dart';

/// An uncertain upload keeps one server request ID, even across process loss.
/// Only an identical local file may retry it; hashes never leave this device.
Map<String, dynamic> roomMediaRetryIdentity(String requestId, String name, List<int> bytes) => {
  'requestId': requestId,
  'name': name,
  'size': bytes.length,
  'sha256': sha256.convert(bytes).toString(),
};

bool roomMediaRetryMatches(Map<String, dynamic>? pending, Map<String, dynamic> candidate) =>
    pending != null &&
    pending['requestId'] == candidate['requestId'] &&
    pending['name'] == candidate['name'] &&
    pending['size'] == candidate['size'] &&
    pending['sha256'] == candidate['sha256'];

String communityRequestId() => 'room-${DateTime.now().microsecondsSinceEpoch}-${Random.secure().nextInt(1 << 30)}';
String communityError(Object e) {
  if (e is StateError && e.message == 'account_changed') return 'Session changed. Return to Rooms and sign in again.';
  if (e is FormatException) return e.message;
  if (e is DioException) {
    if (e.response?.statusCode == 403) return 'You do not have permission. Your membership may have changed.';
    if (e.response?.statusCode == 404) return 'Room or invitation unavailable.';
    if (e.response?.statusCode == 409) return 'Room changed. Refresh and try again.';
    if ((e.response?.statusCode == 400 || e.response?.statusCode == 422)) return 'Check the details or invitation code and try again.';
  }
  return 'Could not connect. Your draft is kept here; reconnect and retry.';
}

class CreateCommunityRoomScreen extends StatefulWidget {
  const CreateCommunityRoomScreen({super.key, required this.api});
  final RoomCommunityApi api;
  @override State<CreateCommunityRoomScreen> createState() => _CreateState();
}
class _CreateState extends State<CreateCommunityRoomScreen> {
  final name = TextEditingController(), description = TextEditingController(), photo = TextEditingController();
  final form = GlobalKey<FormState>();
  String visibility = 'public', policy = 'admins';
  String? error;
  bool busy = false;
  String? pendingKey;
  Map<String, dynamic>? pendingValues;
  @override void dispose() { name.dispose(); description.dispose(); photo.dispose(); super.dispose(); }
  Future<void> submit() async {
    if (!form.currentState!.validate()) return;
    final values = <String, dynamic>{'name': name.text.trim(), 'description': description.text.trim(), 'photoUrl': photo.text.trim(), 'visibility': visibility, 'postingPolicy': policy};
    if (pendingValues.toString() != values.toString()) { pendingKey = communityRequestId(); pendingValues = values; }
    setState(() { busy = true; error = null; });
    try { final room = await widget.api.create({...values, 'requestId': pendingKey}); if (mounted) Navigator.pop(context, room); }
    catch (e) { if (mounted) setState(() => error = communityError(e)); }
    finally { if (mounted) setState(() => busy = false); }
  }
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Create Room')), body: Form(key: form, child: ListView(padding: const EdgeInsets.all(20), children: [
    TextFormField(controller: name, enabled: !busy, maxLength: 100, decoration: const InputDecoration(labelText: 'Room name'), validator: (v) => v == null || v.trim().isEmpty ? 'Enter a Room name' : v.trim().length < 3 ? 'Use at least 3 characters' : null),
    TextFormField(controller: description, enabled: !busy, maxLength: 1000, maxLines: 3, decoration: const InputDecoration(labelText: 'Description (optional)')),
    TextFormField(controller: photo, enabled: !busy, decoration: const InputDecoration(labelText: 'Photo URL (optional)'), validator: (v) => v != null && v.trim().isNotEmpty && Uri.tryParse(v.trim())?.scheme != 'https' ? 'Enter an HTTPS photo URL' : null),
    DropdownButtonFormField<String>(value: visibility, decoration: const InputDecoration(labelText: 'Visibility'), items: const [DropdownMenuItem(value: 'public', child: Text('Public')), DropdownMenuItem(value: 'private', child: Text('Private — invitation required'))], onChanged: busy ? null : (v) => setState(() => visibility = v!)),
    DropdownButtonFormField<String>(value: policy, decoration: const InputDecoration(labelText: 'Who can post?'), items: const [DropdownMenuItem(value: 'admins', child: Text('Admins only')), DropdownMenuItem(value: 'members', child: Text('All members'))], onChanged: busy ? null : (v) => setState(() => policy = v!)),
    const SizedBox(height: 20), const Text('People can join after creation. Private Rooms need an invitation.'),
    if (error != null) Padding(padding: const EdgeInsets.symmetric(vertical: 12), child: Text(error!)),
    FilledButton(onPressed: busy ? null : submit, child: Text(busy ? 'Creating…' : 'Create Room')),
  ])));
}

class RoomCommunityScreen extends StatefulWidget {
  const RoomCommunityScreen({super.key, required this.api, required this.roomId, this.protectDetail});
  final RoomCommunityApi api;
  final String roomId;
  final Widget Function(BuildContext, Widget)? protectDetail;
  @override State<RoomCommunityScreen> createState() => _CommunityState();
}
class _CommunityState extends State<RoomCommunityScreen> {
  CommunityRoom? room;
  List<Map<String, dynamic>> posts = [], roomMasana = [];
  final mentions = <String>{};
  final reportRequestKeys = <String, String>{};
  final composer = TextEditingController(), token = TextEditingController();
  bool loading = true, busy = false;
  String? error, parentId, pendingBody, pendingParent, pendingKey, pendingAttachments;
  int version = 0;
  // Retain the original media request while its outcome is uncertain.
  Future<void> Function()? retryMediaUpload;
  Map<String, dynamic>? pendingMedia;
  Timer? draftTimer, catchupTimer;
  bool restoredDraft = false;
  final attachments = <Map<String, dynamic>>[];
  final storage = const FlutterSecureStorage();
  String? get journalKey {
    final api = widget.api;
    if (api is! AccountBoundRoomCommunityApi) return null;
    api.assertActive();
    return 'room-community-v1:${Uri.encodeComponent(api.ownerAccount)}:${Uri.encodeComponent(widget.roomId)}';
  }
  Future<void> persistDraft() async {
    try {
      final key = journalKey;
      if (key == null) return;
      final value = jsonEncode({'body': composer.text, 'parentId': parentId, 'requestId': pendingKey, 'pendingBody': pendingBody, 'pendingParent': pendingParent, 'attachments': attachments, 'pendingAttachments': pendingAttachments, 'pendingMedia': pendingMedia, 'mentions': mentions.toList()});
      await storage.write(key: '$key:draft', value: value);
      journalKey;
    } catch (_) { /* Draft storage failure never sends a post. */ }
  }
  Future<void> eraseJournal() async {
    try { final key = journalKey; if (key != null) { await storage.delete(key: '$key:draft'); await storage.delete(key: '$key:timeline'); } } catch (_) {}
  }
  void clearPrivateState() {
    composer.clear();
    draftTimer?.cancel();
    attachments.clear();
    mentions.clear();
    roomMasana = [];
    parentId = null;
    pendingBody = null;
    pendingParent = null;
    pendingKey = null;
    pendingAttachments = null;
    retryMediaUpload = null;
    pendingMedia = null;
    restoredDraft = false;
  }
  Future<void> restoreDraft() async {
    final key = journalKey;
    if (key == null || restoredDraft) return;
    restoredDraft = true;
    final raw = await storage.read(key: '$key:draft');
    if (!mounted || journalKey != key || raw == null) return;
    final value = jsonDecode(raw) as Map<String, dynamic>;
    composer.text = value['body'] as String? ?? '';
    parentId = value['parentId'] as String?;
    pendingKey = value['requestId'] as String?;
    pendingBody = value['pendingBody'] as String?;
    pendingParent = value['pendingParent'] as String?;
    pendingAttachments = value['pendingAttachments'] as String?;
    final restoredMedia = value['pendingMedia'];
    pendingMedia = restoredMedia is Map ? Map<String, dynamic>.from(restoredMedia) : null;
    mentions.addAll((value['mentions'] as List? ?? []).cast<String>());
    attachments.addAll((value['attachments'] as List? ?? []).map((v) => Map<String, dynamic>.from(v as Map)));
  }
  @override void initState() { super.initState(); composer.addListener(() { draftTimer?.cancel(); draftTimer = Timer(const Duration(milliseconds: 350), persistDraft); }); if (widget.api is AccountBoundRoomCommunityApi) catchupTimer = Timer.periodic(const Duration(seconds: 20), (_) { if (!busy && !loading && mounted) load(); }); load(); }
  @override void dispose() { version++; draftTimer?.cancel(); catchupTimer?.cancel(); composer.dispose(); token.dispose(); super.dispose(); }
  Future<void> load() async {
    final current = ++version;
    setState(() { loading = true; error = null; });
    try {
      final value = await widget.api.room(widget.roomId);
      var items = <Map<String, dynamic>>[];
      String? offline;
      if (value.joined) {
        try { roomMasana = await widget.api.items(widget.roomId, 'masana'); } catch (_) { roomMasana = []; }
        mentions.removeWhere((id) => !roomMasana.any((m) => m['characterId'] == id && m['active'] == true));
        try { await restoreDraft(); } catch (e) { if (e is StateError) rethrow; }
        try {
          items = await widget.api.items(widget.roomId, 'timeline');
          try { final key = journalKey; if (key != null) await storage.write(key: '$key:timeline', value: jsonEncode(items)); } catch (_) {}
        } catch (e) {
          // A cache is eligible only after a fresh successful membership check.
          // Access denials never fall back to cached private content.
          if (e is StateError || e is DioException && (e.response?.statusCode == 403 || e.response?.statusCode == 404)) rethrow;
          final key = journalKey;
          final cached = key == null ? null : await storage.read(key: '$key:timeline');
          if (cached == null || journalKey != key) rethrow;
          items = (jsonDecode(cached) as List).map((e) => Map<String, dynamic>.from(e as Map)).toList();
          offline = 'Showing saved posts. Reconnect and refresh for new activity.';
        }
      } else { clearPrivateState(); await eraseJournal(); }

      if (value.joined) { try { await widget.api.action(widget.roomId, 'read'); } catch (_) {} }
      if (mounted && current == version) setState(() { room = value; posts = items; loading = false; error = offline; });
    } catch (e) { if (current == version && (e is StateError || e is DioException && (e.response?.statusCode == 403 || e.response?.statusCode == 404))) { clearPrivateState(); await eraseJournal(); } if (mounted && current == version) setState(() { room = null; posts = []; loading = false; error = communityError(e); }); }
  }
  Future<void> run(Future<void> Function() work) async {
    if (busy) return;
    setState(() { busy = true; error = null; });
    try { await work(); if (mounted) await load(); }
    catch (e) { if (e is StateError || e is DioException && (e.response?.statusCode == 403 || e.response?.statusCode == 404)) { clearPrivateState(); await eraseJournal(); } if (mounted) setState(() { error = communityError(e); if (e is StateError || e is DioException && (e.response?.statusCode == 403 || e.response?.statusCode == 404)) { room = null; posts = []; } }); }
    finally { if (mounted) setState(() => busy = false); }
  }
  Future<void> send() => run(() async {
    if (pendingMedia != null) throw const FormatException(
      'Resolve or discard the uncertain attachment upload before sending.');
    final body = composer.text.trim();
    if (body.isEmpty && attachments.isEmpty) return;
    final files = '${attachments.map((e) => e['id']).join(',')}|${mentions.join(',')}';
    if (pendingKey == null || pendingBody != body || pendingParent != parentId || pendingAttachments != files) { pendingKey = communityRequestId(); pendingBody = body; pendingParent = parentId; pendingAttachments = files; }
    await persistDraft();
    await widget.api.action(widget.roomId, 'timeline', {'body': body, 'requestId': pendingKey, if (mentions.isNotEmpty) 'mentions': mentions.toList(), if (attachments.isNotEmpty) 'attachments': attachments.map((e) => {'id': e['id']}).toList(), if (parentId != null) 'parentId': parentId});
    if (mounted) setState(() { composer.clear(); attachments.clear(); mentions.clear(); parentId = null; pendingKey = null; });
    await persistDraft();
  });
  Future<void> pickAttachment() async {
    // If the previous upload timed out after the server accepted it, retry
    // that original request; do not silently pick/send another attachment.
    if (retryMediaUpload != null) {
      await retryMediaUpload!();
      return;
    }
    final file = await FilePicker.pickFile(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf', 'mp4', 'm4a'],
    );
    if (file == null || !mounted) return;
    final requestId = pendingMedia?['requestId'] as String? ?? communityRequestId();
    late Future<void> Function() upload;
    upload = () => run(() async {
      final size = await file.length();
      if (size == null || size > 8000000)
        throw const FormatException('Choose a file smaller than 8 MB');
      final ext = file.name.split('.').last.toLowerCase();
      final mime = {
        'jpg': 'image/jpeg',
        'jpeg': 'image/jpeg',
        'png': 'image/png',
        'pdf': 'application/pdf',
        'mp4': 'video/mp4',
        'm4a': 'audio/mp4',
      }[ext];
      if (mime == null) throw const FormatException('Unsupported attachment');
      final bytes = await file.readAsBytes();
      if (bytes.length != size)
        throw const FormatException(
          'Attachment changed. Choose the file again.',
        );
      final identity = roomMediaRetryIdentity(requestId, file.name, bytes);
      if (pendingMedia != null && !roomMediaRetryMatches(pendingMedia, identity)) {
        throw const FormatException(
          'This is not the original attachment. Select the same file or discard the pending upload.');
      }
      pendingMedia = identity;
      // Commit the retry identity before requesting the server. If the reply
      // vanishes after acceptance, the next app launch must NOT mint a new ID.
      await persistDraft();
      retryMediaUpload = upload;
      final result = await widget.api.request(widget.roomId, 'POST', 'media', {
        'requestId': requestId,
        'kind': mime.startsWith('image/')
            ? 'image'
            : mime.startsWith('audio/')
            ? 'voice'
            : mime.startsWith('video/')
            ? 'video'
            : 'doc',
        'mimeType': mime,
        'name': file.name,
        'dataBase64': base64Encode(bytes),
      });
      if (!attachments.any((entry) => entry['id'] == result['id'])) {
        attachments.add(result);
      }
      retryMediaUpload = null;
      pendingMedia = null;
      await persistDraft();
    });
    await upload();
  }

  Future<void> openAttachment(Map<String, dynamic> attachment) => run(() async {
    final result = await widget.api.request(widget.roomId, 'GET', 'media/${attachment['id']}', {});
    final bytes = base64Decode(result['dataBase64'] as String);
    if (!mounted) return;
    if ('${result['mimeType']}'.startsWith('image/')) {
      await showDialog<void>(context: context, builder: (_) => Dialog(child: Column(mainAxisSize: MainAxisSize.min, children: [Flexible(child: Image.memory(bytes)), TextButton(onPressed: () => Navigator.pop(context), child: const Text('Close'))])));
    } else {
      await SharePlus.instance.share(ShareParams(files: [XFile.fromData(bytes, mimeType: result['mimeType'] as String?, name: result['name'] as String? ?? 'Room attachment')]));
    }
  });
  Future<void> reportPost(String postId) async {
    var reportReason = '';
    final selected = await showDialog<String>(context: context, builder: (dialogContext) =>
      AlertDialog(title: const Text('Report post'), content: TextField(
        onChanged: (value) => reportReason = value, autofocus: true, maxLength: 2000, minLines: 2, maxLines: 4,
        decoration: const InputDecoration(labelText: 'What is wrong with this post?'),
      ), actions: [
        TextButton(onPressed: () => Navigator.pop(dialogContext), child: const Text('Cancel')),
        FilledButton(onPressed: () {
          final value = reportReason.trim();
          if (value.isNotEmpty) { Navigator.pop(dialogContext, value); }
        }, child: const Text('Submit report')),
      ]));
    if (selected == null || !mounted) return;
    final key = '$postId:$selected';
    reportRequestKeys[key] ??= communityRequestId();
    await run(() async {
      await widget.api.action(widget.roomId, 'reports', {
        'targetId': postId, 'reason': selected, 'requestId': reportRequestKeys[key],
      });
      reportRequestKeys.remove(key);
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Post reported for review')));
    });
  }
  Future<void> info() async {
    final value = room;
    if (value == null) return;
    await Navigator.push<void>(context, MaterialPageRoute(builder: (routeContext) { final detail = _CommunityInfo(api: widget.api, initial: value, protectDetail: widget.protectDetail); return widget.protectDetail?.call(routeContext, detail) ?? detail; }));
    if (mounted) await load();
  }
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: InkWell(onTap: room == null ? null : info, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(room?.name ?? 'Room'), if (room != null) Text('${room!.memberCount} members · Room info', style: const TextStyle(fontSize: 12))])), actions: [IconButton(tooltip: 'Refresh Room', onPressed: busy ? null : load, icon: const Icon(Icons.refresh))]),
    body: loading ? const Center(child: CircularProgressIndicator()) : Column(children: [
      if (error != null) MaterialBanner(content: Text(error!), actions: [TextButton(onPressed: busy ? null : load, child: const Text('Retry'))]),
      if (room == null) Padding(padding: const EdgeInsets.all(16), child: Column(children: [TextField(controller: token, decoration: const InputDecoration(labelText: 'Private Room invitation code')), TextButton(onPressed: busy ? null : () => run(() => widget.api.action(widget.roomId, 'join', {'token': token.text.trim()})), child: const Text('Accept invitation'))])),
      if (room != null && !room!.joined) ...[
        Padding(padding: const EdgeInsets.all(20), child: Column(children: [Text(room!.description), Text('Owner: ${room!.ownerId}'), Text('${room!.visibility} · ${room!.postingPolicy == 'admins' ? 'Admins only post' : 'All members post'}'), if (room!.visibility == 'private') TextField(controller: token, decoration: const InputDecoration(labelText: 'Invitation code')), FilledButton(onPressed: busy ? null : () => run(() => widget.api.action(widget.roomId, 'join', {'token': token.text.trim()})), child: const Text('Join Room'))])),
      ],
      Expanded(child: RefreshIndicator(onRefresh: load, child: ListView(padding: const EdgeInsets.all(16), children: [
        if (room?.joined == true && posts.isEmpty) const Padding(padding: EdgeInsets.all(24), child: Text('No posts yet.')),
        for (final post in posts) Card(child: Padding(padding: const EdgeInsets.all(12), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('${post['authorId'] ?? ''}', style: Theme.of(context).textTheme.labelLarge),
          if (post['parentId'] != null) const Text('Reply', style: TextStyle(fontSize: 12)),
          if (post['pinned'] == true) const Text('Pinned'),
          SelectableText('${post['body'] ?? ''}'),
          for (final attachment in post['attachments'] as List? ?? []) TextButton.icon(onPressed: busy ? null : () => openAttachment(Map<String, dynamic>.from(attachment as Map)), icon: const Icon(Icons.attach_file), label: Text('${attachment['name'] ?? 'Open attachment'}')),
          if (post['parentId'] == null) Wrap(children: [
            for (final emoji in ['👍', '❤️', '😂']) TextButton(onPressed: busy ? null : () => run(() async { final reactions = post['reactions'] as List? ?? []; final mine = reactions.any((e) => e['emoji'] == emoji && e['mine'] == true); await widget.api.request(widget.roomId, mine ? 'DELETE' : 'POST', 'posts/${post['id']}/reactions', {'emoji': emoji}); }), child: Text('$emoji ${(post['reactions'] as List? ?? []).where((e) => e['emoji'] == emoji).map((e) => e['count']).join()}')),
          ]),
          if (room?.joined == true && post['parentId'] == null) TextButton.icon(onPressed: busy ? null : () => reportPost('${post['id']}'), icon: const Icon(Icons.flag_outlined), label: const Text('Report post')),
          if (room?.manages == true && post['parentId'] == null) Wrap(children: [
            TextButton(onPressed: busy ? null : () => run(() => widget.api.modify(widget.roomId, 'posts/${post['id']}', {'pinned': post['pinned'] != true})), child: Text(post['pinned'] == true ? 'Unpin' : 'Pin')),
            TextButton(onPressed: busy ? null : () => run(() => widget.api.modify(widget.roomId, 'posts/${post['id']}', {'commentsEnabled': post['commentsEnabled'] == false})), child: Text(post['commentsEnabled'] == false ? 'Enable comments' : 'Close comments')),
            TextButton(onPressed: busy ? null : () async { final confirmed = await showDialog<bool>(context: context, builder: (context) => AlertDialog(title: const Text('Remove post?'), content: const Text('This post and its comments will no longer appear to members.'), actions: [TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')), FilledButton(onPressed: () => Navigator.pop(context, true), child: const Text('Remove'))])); if (confirmed == true) await run(() => widget.api.remove(widget.roomId, 'posts/${post['id']}')); }, child: const Text('Remove post')),
          ]),
          if (room?.commentsEnabled == true && post['commentsEnabled'] != false) TextButton(onPressed: busy ? null : () => setState(() => parentId = '${post['parentId'] ?? post['id']}'), child: const Text('Comment / reply')),
        ]))),
      ]))),
      if (room?.joined == true && (room!.canPost || parentId != null)) SafeArea(top: false, child: Padding(padding: const EdgeInsets.all(12), child: Column(children: [
        if (parentId != null) Row(children: [const Expanded(child: Text('Replying to post')), IconButton(tooltip: 'Cancel reply', onPressed: () => setState(() => parentId = null), icon: const Icon(Icons.close))]),
        if (roomMasana.any((m) => m['active'] == true)) SingleChildScrollView(scrollDirection: Axis.horizontal, child: Row(children: [for (final agent in roomMasana.where((m) => m['active'] == true)) Padding(padding: const EdgeInsetsDirectional.only(end: 8), child: FilterChip(label: Text('Mention ${agent['characterId']}'), selected: mentions.contains(agent['characterId']), onSelected: busy ? null : (v) { setState(() { if (v) { mentions.add('${agent['characterId']}'); } else { mentions.remove(agent['characterId']); } }); persistDraft(); }))])),
        for (final file in attachments) Row(children: [Expanded(child: Text('${file['name'] ?? 'Attachment'}')), IconButton(tooltip: 'Remove attachment', onPressed: busy ? null : () { setState(() => attachments.remove(file)); persistDraft(); }, icon: const Icon(Icons.close))]),
        if (pendingMedia != null) Row(children: [
          const Expanded(child: Text('Upload unconfirmed. Retry the original file, or discard this upload.')),
          TextButton(onPressed: busy ? null : pickAttachment, child: Text(retryMediaUpload == null ? 'Select original' : 'Retry upload')),
          IconButton(tooltip: 'Discard pending upload', onPressed: busy ? null : () { setState(() { retryMediaUpload = null; pendingMedia = null; }); persistDraft(); }, icon: const Icon(Icons.close)),
        ]),
        Row(children: [IconButton(tooltip: pendingMedia == null ? 'Attach file' : 'Retry original attachment', onPressed: busy ? null : pickAttachment, icon: const Icon(Icons.attach_file)), Expanded(child: TextField(controller: composer, enabled: !busy, maxLength: 4000, minLines: 1, maxLines: 4, decoration: InputDecoration(hintText: parentId != null ? 'Write a comment' : 'Write a post'))), IconButton(tooltip: 'Send post', onPressed: busy || pendingMedia != null ? null : send, icon: const Icon(Icons.send))]),
      ]))),
      if (room?.joined == true && !room!.canPost && parentId == null) const SafeArea(top: false, child: Padding(padding: EdgeInsets.all(16), child: Text('Only admins post. Tap Comment / reply to join the discussion.'))),
    ]));
}

class _CommunityInfo extends StatefulWidget {
  const _CommunityInfo({required this.api, required this.initial, this.protectDetail});
  final RoomCommunityApi api;
  final CommunityRoom initial;
  final Widget Function(BuildContext, Widget)? protectDetail;
  @override State<_CommunityInfo> createState() => _InfoState();
}
class _InfoState extends State<_CommunityInfo> {
  late CommunityRoom room = widget.initial;
  late final name = TextEditingController(text: room.name), about = TextEditingController(text: room.description);
  List<Map<String, dynamic>> members = [], masana = [], sharedMedia = [], reportedPosts = [], reportReviews = [];
  final reviewRequestKeys = <String, String>{};
  final reportReason = TextEditingController();
  String? reportKey;
  String? error;
  bool busy = false;
  @override void initState() { super.initState(); refresh(); }
  @override void dispose() { name.dispose(); about.dispose(); reportReason.dispose(); super.dispose(); }
  Future<void> refresh() async {
    try {
      final media = room.joined ? await widget.api.items(room.id, 'media') : <Map<String, dynamic>>[];
      final people = room.joined ? await widget.api.items(room.id, 'members') : <Map<String, dynamic>>[];
      final agents = room.joined ? await widget.api.items(room.id, 'masana') : <Map<String, dynamic>>[];
      final flagged = room.manages ? await widget.api.items(room.id, 'reports/summary') : <Map<String, dynamic>>[];
      final reviews = room.manages ? await widget.api.items(room.id, 'reports/reviews') : <Map<String, dynamic>>[];
      if (mounted) setState(() { members = people; masana = agents; sharedMedia = media; reportedPosts = flagged; reportReviews = reviews; });
    } catch (e) { if (mounted) setState(() => error = communityError(e)); }
  }
  Future<void> run(Future<void> Function() work) async {
    if (busy) return;
    setState(() { busy = true; error = null; });
    try { await work(); if (mounted) await refresh(); }
    catch (e) { if (mounted) setState(() => error = communityError(e)); }
    finally { if (mounted) setState(() => busy = false); }
  }
  Future<void> reviewPost(String postId, String decision) async {
    final removal = decision == 'removed';
    if (!await confirm(removal ? 'Remove reported post?' : 'Dismiss reports?',
      removal ? 'The post, replies and media become unavailable to members. The moderation decision is retained.'
        : 'Keep the post visible and close the currently reported concerns? New reports can reopen review.')) return;
    final key = '$postId:$decision';
    reviewRequestKeys[key] ??= communityRequestId();
    await run(() async {
      await widget.api.action(room.id, 'reports/${Uri.encodeComponent(postId)}/review', {
        'decision': decision, 'requestId': reviewRequestKeys[key],
      });
      reviewRequestKeys.remove(key);
    });
  }
  Future<bool> confirm(String title, String message) async => await showDialog<bool>(context: context, builder: (context) => AlertDialog(title: Text(title), content: Text(message), actions: [TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')), FilledButton(onPressed: () => Navigator.pop(context, true), child: const Text('Confirm'))])) ?? false;
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Room info')), body: ListView(padding: const EdgeInsets.all(20), children: [
    Text(room.name, style: Theme.of(context).textTheme.headlineSmall), Text(room.description), Text('Owner: ${room.ownerId}'), Text('${room.visibility} · ${room.memberCount} members'),
    if (room.joined) ...[
      SwitchListTile(title: const Text('Mute notifications'), value: room.muted, onChanged: busy ? null : (v) => run(() async { await widget.api.modify(room.id, 'preferences', {'muted': v}); room = await widget.api.room(room.id); })),
      SwitchListTile(title: const Text('Pin Room'), value: room.pinned, onChanged: busy ? null : (v) => run(() async { await widget.api.modify(room.id, 'preferences', {'pinned': v}); room = await widget.api.room(room.id); })),
    ],
    if (busy) const LinearProgressIndicator(),
    if (error != null) ...[Text(error!), TextButton(onPressed: busy ? null : () => run(refresh), child: const Text('Retry'))],
    if (room.manages) ExpansionTile(title: const Text('Manage Room'), children: [
      TextField(controller: name, enabled: !busy, maxLength: 100, decoration: const InputDecoration(labelText: 'Room name')),
      TextField(controller: about, enabled: !busy, maxLength: 1000, decoration: const InputDecoration(labelText: 'Description')),
      FilledButton(onPressed: busy ? null : () => run(() async { if (name.text.trim().isEmpty) throw const FormatException('Name required'); room = await widget.api.update(room.id, {'name': name.text.trim(), 'description': about.text.trim()}); }), child: const Text('Save details')),
      DropdownButtonFormField<String>(value: room.postingPolicy, decoration: const InputDecoration(labelText: 'Who can post?'), items: const [DropdownMenuItem(value: 'admins', child: Text('Admins only')), DropdownMenuItem(value: 'members', child: Text('All members'))], onChanged: busy ? null : (v) => run(() async { room = await widget.api.update(room.id, {'postingPolicy': v}); })),
      DropdownButtonFormField<String>(value: room.visibility, decoration: const InputDecoration(labelText: 'Visibility'), items: const [DropdownMenuItem(value: 'public', child: Text('Public')), DropdownMenuItem(value: 'private', child: Text('Private'))], onChanged: busy ? null : (v) => run(() async { room = await widget.api.update(room.id, {'visibility': v}); })),
      SwitchListTile(title: const Text('Allow comments'), value: room.commentsEnabled, onChanged: busy ? null : (v) => run(() async { room = await widget.api.update(room.id, {'commentsEnabled': v}); })),
      RoomInvitationLinks(api: widget.api, roomId: room.id, newRequestId: communityRequestId),
    ]),
    if (room.manages) ExpansionTile(
      key: const PageStorageKey('room-reported-posts'),
      title: Text('Reported posts (${reportedPosts.length})'),
      children: [
        if (reportedPosts.isEmpty) const ListTile(title: Text('No reported posts to review')),
        for (final post in reportedPosts) Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('${post['excerpt'] ?? 'Post'}', maxLines: 3, overflow: TextOverflow.ellipsis),
            Text('${post['reportCount'] ?? 0} member report(s)'),
            Wrap(spacing: 4, runSpacing: 4, children: [
              TextButton(onPressed: busy ? null : () => reviewPost('${post['postId']}', 'dismissed'),
                child: const Text('Dismiss reports')),
              TextButton(onPressed: busy ? null : () => reviewPost('${post['postId']}', 'removed'),
                child: const Text('Remove post')),
            ]),
          ]),
        ),
      ],
    ),
    if (room.manages && reportReviews.isNotEmpty) ExpansionTile(
      title: Text('Moderation history (${reportReviews.length})'),
      children: [
        for (final review in reportReviews) ListTile(
          title: Text(review['decision'] == 'removed' ? 'Reported post removed' : 'Reports dismissed'),
          subtitle: Text('${review['reportCount'] ?? 0} report(s) reviewed · ${review['reviewedAt'] ?? ''}'),
        ),
      ],
    ),
    if (room.joined) ExpansionTile(title: const Text('Report Room'), children: [TextField(controller: reportReason, maxLength: 2000, decoration: const InputDecoration(labelText: 'Reason')), TextButton(onPressed: busy ? null : () => run(() async { if (reportReason.text.trim().isEmpty) throw const FormatException('Enter a report reason'); reportKey ??= communityRequestId(); await widget.api.action(room.id, 'reports', {'reason': reportReason.text.trim(), 'requestId': reportKey}); if (mounted) { reportReason.clear(); reportKey = null; ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Report sent for review'))); } }), child: const Text('Send report'))]),
    if (sharedMedia.isNotEmpty) ExpansionTile(title: Text('Shared media (${sharedMedia.length})'), children: [for (final file in sharedMedia) ListTile(leading: const Icon(Icons.attach_file), title: Text('${file['name']}'), subtitle: Text('${file['kind']} · ${file['sizeBytes'] ?? ''} bytes'))]),
    if (room.manages) FilledButton.icon(onPressed: busy ? null : () async { await Navigator.push<void>(context, MaterialPageRoute(builder: (routeContext) { final detail = _AddParticipants(api: widget.api, roomId: room.id, owner: room.role == 'owner'); return widget.protectDetail?.call(routeContext, detail) ?? detail; })); if (mounted) await refresh(); }, icon: const Icon(Icons.person_add_outlined), label: const Text('Add participants')),
    const SizedBox(height: 16), Text('Members', style: Theme.of(context).textTheme.titleMedium),
    for (final person in members) ListTile(title: Text('${person['userId']}'), subtitle: Text('${person['role']} · ${person['state']}'), trailing: room.manages && person['role'] != 'owner' ? PopupMenuButton<String>(enabled: !busy, tooltip: 'Manage member', onSelected: (action) => run(() async {
      if (action == 'admin' || action == 'member') { await widget.api.member(room.id, '${person['userId']}', {'role': action}); }
      else if (action == 'transfer') { if (await confirm('Transfer ownership?', 'This member becomes the owner and you lose owner controls.')) room = await widget.api.update(room.id, {'ownerId': person['userId']}); }
      else if (await confirm('Remove member?', 'They lose access to this Room.')) { await widget.api.member(room.id, '${person['userId']}', {'state': action}); }
    }), itemBuilder: (_) => [if (room.role == 'owner') ...[const PopupMenuItem(value: 'admin', child: Text('Make admin')), const PopupMenuItem(value: 'member', child: Text('Make member')), const PopupMenuItem(value: 'transfer', child: Text('Transfer ownership'))], const PopupMenuItem(value: 'left', child: Text('Remove')), const PopupMenuItem(value: 'banned', child: Text('Ban'))]) : null),
    for (final agent in masana) ListTile(title: Text('Masana ${agent['characterId']}'), subtitle: Text('${agent['instructions'] ?? ''}\nMention and direct replies only'), trailing: room.role == 'owner' ? PopupMenuButton<String>(enabled: !busy, onSelected: (action) => run(() async {
      if (action == 'remove') { await widget.api.remove(room.id, 'masana/${agent['characterId']}'); }
      else { await widget.api.action(room.id, 'masana', {'characterId': agent['characterId'], 'instructions': agent['instructions'] ?? '', 'active': agent['active'] != true}); }
    }), itemBuilder: (_) => [PopupMenuItem(value: 'toggle', child: Text(agent['active'] == true ? 'Deactivate' : 'Activate mention replies')), const PopupMenuItem(value: 'remove', child: Text('Remove Masana'))]) : null),
    if (room.role == 'owner') TextButton(onPressed: busy ? null : () async { if (await confirm('Delete Room?', 'The Room closes for all members and invitation links stop working. This action removes the Room from the community.')) await run(() async { await widget.api.remove(room.id, ''); if (mounted) Navigator.pop(context); }); }, child: const Text('Delete Room')),
    if (room.joined) TextButton(onPressed: busy ? null : () async { if (await confirm('Leave Room?', room.role == 'owner' ? 'Transfer ownership to another member before leaving.' : 'You can rejoin public Rooms. Private Rooms require a new valid invitation.')) { if (room.role == 'owner') return; await run(() async { await widget.api.action(room.id, 'leave'); if (mounted) Navigator.pop(context); }); } }, child: const Text('Leave Room')),
  ]));
}

class _AddParticipants extends StatefulWidget {
  const _AddParticipants({required this.api, required this.roomId, required this.owner});
  final RoomCommunityApi api;
  final String roomId;
  final bool owner;
  @override State<_AddParticipants> createState() => _AddState();
}
class _AddState extends State<_AddParticipants> {
  String kind = 'people', query = '';
  List<Map<String, dynamic>> rows = [];
  String? error, result;
  bool loading = true, busy = false;
  int version = 0;
  Timer? debounce;
  final instructions = TextEditingController();
  final keys = <String, String>{};
  @override void initState() { super.initState(); load(); }
  @override void dispose() { version++; debounce?.cancel(); instructions.dispose(); super.dispose(); }
  Future<void> load() async {
    final current = ++version;
    setState(() { loading = true; error = null; rows = []; });
    try { final values = await widget.api.candidates(kind, query); if (mounted && current == version) setState(() => rows = values); }
    catch (e) { if (mounted && current == version) setState(() => error = communityError(e)); }
    finally { if (mounted && current == version) setState(() => loading = false); }
  }
  Future<void> add(Map<String, dynamic> person) async {
    if (busy) return;
    setState(() { busy = true; error = null; result = null; });
    try {
      if (kind == 'people') {
        final handle = person['handle'] as String;
        final value = await widget.api.request(widget.roomId, 'POST', 'participants', {'handle': handle, 'requestId': keys.putIfAbsent(handle, communityRequestId)});
        if (mounted) setState(() => result = value['status'] == 'added' ? 'Participant added' : 'Invitation sent. They choose whether to join.');
      } else {
        await widget.api.action(widget.roomId, 'masana', {'characterId': person['characterId'], 'instructions': instructions.text.trim(), 'active': false});
        if (mounted) setState(() => result = 'Masana added, inactive. Activate from Room info after reviewing instructions.');
      }
    } catch (e) { if (mounted) setState(() => error = communityError(e)); }
    finally { if (mounted) setState(() => busy = false); }
  }
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Add participants')), body: Column(children: [
    Row(children: [for (final type in ['people', if (widget.owner) 'masana']) Expanded(child: TextButton(onPressed: busy ? null : () { setState(() => kind = type); load(); }, child: Text(type == 'people' ? 'People' : 'Masana')))]),
    Padding(padding: const EdgeInsets.all(12), child: TextField(decoration: const InputDecoration(labelText: 'Search participants'), onChanged: (v) { query = v; debounce?.cancel(); debounce = Timer(const Duration(milliseconds: 300), load); })),
    if (kind == 'masana') Padding(padding: const EdgeInsets.all(12), child: TextField(controller: instructions, maxLength: 2000, decoration: const InputDecoration(labelText: 'Room role and instructions'))),
    if (error != null) ListTile(title: Text(error!), trailing: TextButton(onPressed: load, child: const Text('Retry'))),
    if (result != null) Padding(padding: const EdgeInsets.all(12), child: Text(result!)),
    if (busy) const LinearProgressIndicator(),
    Expanded(child: loading ? const Center(child: CircularProgressIndicator()) : ListView(children: [if (rows.isEmpty) const ListTile(title: Text('No matching participants')), for (final person in rows) ListTile(title: Text('${person['displayName'] ?? person['handle']}'), subtitle: Text(kind == 'people' ? '@${person['handle']}' : 'Masana'), trailing: TextButton(onPressed: busy ? null : () => add(person), child: const Text('Add / Invite')))])),
  ]));
}
