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
import 'room_ownership_transfer.dart';
import 'room_moderation_screen.dart';
import 'room_request_id.dart';

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
  const RoomCommunityScreen({
    super.key,
    required this.api,
    required this.roomId,
    this.protectDetail,
    this.threadPostId,
  });
  final String? threadPostId;
  final RoomCommunityApi api;
  final String roomId;
  final Widget Function(BuildContext, Widget)? protectDetail;
  @override
  State<RoomCommunityScreen> createState() => _CommunityState();
}

class _CommunityState extends State<RoomCommunityScreen> {
  CommunityRoom? room;
  List<Map<String, dynamic>> posts = [], roomMasana = [];
  final mentions = <String>{};
  final reportRequestKeys = <String, String>{};
  final composer = TextEditingController(), token = TextEditingController();
  final postSearch = TextEditingController();
  Timer? postSearchTimer;
  String? timelineCursor, olderTimelineError;
  bool loadingOlder = false, searching = false;
  int loadedPages = 1;
  Map<String, dynamic>? threadParent;
  bool loading = true, busy = false;
  String? error,
      parentId,
      pendingBody,
      pendingParent,
      pendingKey,
      pendingAttachments;
  int version = 0, scopeGeneration = 0;
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
    return 'room-community-v1:${Uri.encodeComponent(api.ownerAccount)}:${Uri.encodeComponent(widget.roomId)}${widget.threadPostId == null ? '' : ':thread:${Uri.encodeComponent(widget.threadPostId!)}'}';
  }

  Future<void> persistDraft() async {
    try {
      final key = journalKey;
      if (key == null) return;
      final value = jsonEncode({
        'body': composer.text,
        'parentId': parentId,
        'requestId': pendingKey,
        'pendingBody': pendingBody,
        'pendingParent': pendingParent,
        'attachments': attachments,
        'pendingAttachments': pendingAttachments,
        'pendingMedia': pendingMedia,
        'mentions': mentions.toList(),
      });
      await storage.write(key: '$key:draft', value: value);
      journalKey;
    } catch (_) {
      /* Draft storage failure never sends a post. */
    }
  }

  Future<void> eraseJournal() async {
    try {
      final key = journalKey;
      if (key != null) {
        await storage.delete(key: '$key:draft');
        await storage.delete(key: '$key:timeline');
      }
    } catch (_) {}
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
    pendingMedia = restoredMedia is Map
        ? Map<String, dynamic>.from(restoredMedia)
        : null;
    mentions.addAll((value['mentions'] as List? ?? []).cast<String>());
    attachments.addAll(
      (value['attachments'] as List? ?? []).map(
        (v) => Map<String, dynamic>.from(v as Map),
      ),
    );
  }

  bool currentRead(int read, RoomCommunityApi api) =>
      mounted && version == read && identical(api, widget.api);
  bool denied(Object e) =>
      e is StateError && e.message == 'account_changed' ||
      e is DioException &&
          const [401, 403, 404].contains(e.response?.statusCode);
  String? get cacheKey {
    final key = journalKey;
    return key == null
        ? null
        : '$key:timeline${postSearch.text.trim().isEmpty ? '' : ':search:${Uri.encodeComponent(postSearch.text.trim())}'}';
  }

  List<Map<String, dynamic>> mergeRows(
    List<Map<String, dynamic>> older,
    List<Map<String, dynamic>> newer,
  ) {
    final rows = <String, Map<String, dynamic>>{};
    for (final row in [...older, ...newer]) {
      final id = row['id'];
      if (id is! String || id.isEmpty)
        throw const FormatException('Missing post identity');
      rows[id] = row;
    }
    return rows.values.toList();
  }

  void configureCatchup() {
    catchupTimer?.cancel();
    if (widget.api is AccountBoundRoomCommunityApi)
      catchupTimer = Timer.periodic(const Duration(seconds: 20), (_) async {
        if (busy || loading || loadingOlder || !mounted) return;
        if (loadedPages == 1 && postSearch.text.isEmpty) {
          await load();
          return;
        }
        final read = version, api = widget.api;
        try {
          final fresh = await api.room(widget.roomId);
          if (!currentRead(read, api)) return;
          if (!fresh.joined) {
            clearPrivateState();
            await eraseJournal();
            if (currentRead(read, api))
              setState(() {
                room = fresh;
                posts = [];
                timelineCursor = null;
              });
          } else {
            setState(() => room = fresh);
          }
        } catch (e) {
          if (currentRead(read, api) && denied(e)) {
            clearPrivateState();
            await eraseJournal();
            if (currentRead(read, api))
              setState(() {
                room = null; posts = []; timelineCursor = null;
                error = communityError(e);
              });
          }
        }
      });
  }

  @override
  void initState() {
    super.initState();
    parentId = widget.threadPostId;
    composer.addListener(() {
      draftTimer?.cancel();
      draftTimer = Timer(const Duration(milliseconds: 350), persistDraft);
    });
    configureCatchup();
    load();
  }

  @override
  void didUpdateWidget(covariant RoomCommunityScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.api, widget.api) ||
        oldWidget.roomId != widget.roomId ||
        oldWidget.threadPostId != widget.threadPostId) {
      version++;
      scopeGeneration++;
      busy = false;
      postSearchTimer?.cancel();
      clearPrivateState();
      token.clear();
      postSearch.clear();
      searching = false;
      room = null;
      posts = [];
      threadParent = null;
      timelineCursor = null;
      loadingOlder = false;
      loadedPages = 1;
      parentId = widget.threadPostId;
      configureCatchup();
      load();
    }
  }

  @override
  void dispose() {
    version++;
    postSearchTimer?.cancel();
    draftTimer?.cancel();
    catchupTimer?.cancel();
    composer.dispose();
    token.dispose();
    postSearch.dispose();
    super.dispose();
  }

  void searchPosts(String _) {
    version++;
    postSearchTimer?.cancel();
    setState(() {
      loading = true;
      loadingOlder = false;
      posts = [];
      timelineCursor = null;
      olderTimelineError = null;
    });
    postSearchTimer = Timer(const Duration(milliseconds: 250), () => load());
  }

  Future<void> load({int retainPages = 1}) async {
    final read = ++version,
        api = widget.api,
        id = widget.roomId,
        query = postSearch.text.trim(),
        thread = widget.threadPostId;
    setState(() {
      loading = true;
      error = null;
      loadingOlder = false;
      olderTimelineError = null;
      timelineCursor = null;
    });
    CommunityRoom? authorizedRoom;
    try {
      final value = await api.room(id);
      if (!currentRead(read, api)) return;
      authorizedRoom = value;
      var rows = <Map<String, dynamic>>[], agents = <Map<String, dynamic>>[];
      Map<String, dynamic>? parent;
      String? next, offline;
      var pages = 1;
      if (value.joined) {
        try {
          agents = await api.items(id, 'masana');
        } catch (e) {
          if (denied(e)) rethrow;
        }
        if (!currentRead(read, api)) return;
        try {
          await restoreDraft();
        } catch (e) {
          if (e is StateError) rethrow;
        }
        if (!currentRead(read, api)) return;
        try {
          final first = await readRoomTimeline(
            api,
            id,
            search: query,
            parentId: thread,
          );
          if (!currentRead(read, api)) return;
          rows = first.items;
          parent = first.parent;
          next = first.nextCursor;
          final seen = <String>{};
          while (pages < retainPages && next != null) {
            if (!seen.add(next))
              throw const FormatException('Repeated timeline cursor');
            final page = await readRoomTimeline(
              api,
              id,
              search: query,
              parentId: thread,
              cursor: next,
            );
            if (!currentRead(read, api)) return;
            if (page.nextCursor == next)
              throw const FormatException('Repeated timeline cursor');
            rows = mergeRows(page.items, rows);
            parent = page.parent;
            next = page.nextCursor;
            pages++;
          }
          if (thread != null && parent == null)
            throw const FormatException('Missing thread parent');
          rows = mergeRows([], rows);
          final key = cacheKey;
          if (key != null) {
            try {
              await storage.write(
                key: key,
                value: jsonEncode({
                  'version': 1,
                  'items': rows,
                  'parent': parent,
                }),
              );
            } catch (_) {}
          }
        } catch (e) {
          if (denied(e) || e is StateError || e is FormatException) rethrow;
          if (!currentRead(read, api)) return;
          final key = cacheKey,
              cached = key == null ? null : await storage.read(key: key);
          if (!currentRead(read, api) || cached == null || key != cacheKey)
            rethrow;
          final data = jsonDecode(cached);
          rows = (data is List ? data : (data as Map)['items'] as List)
              .map((v) => Map<String, dynamic>.from(v as Map))
              .toList();
          parent = data is Map && data['parent'] is Map
              ? Map<String, dynamic>.from(data['parent'] as Map)
              : null;
          if (thread != null && parent?['id'] != thread)
            throw const FormatException('Unverified saved thread');
          next = null;
          offline =
              'Showing saved posts. Reconnect and refresh for new activity.';
        }
        if (!currentRead(read, api)) return;
        try {
          await api.action(id, 'read');
        } catch (_) {}
      } else {
        clearPrivateState();
        await eraseJournal();
      }
      if (!currentRead(read, api)) return;
      setState(() {
        room = value;
        threadParent = parent;
        posts = parent == null
            ? rows
            : [parent, ...rows.where((r) => r['id'] != parent!['id'])];
        timelineCursor = next;
        loadedPages = pages;
        roomMasana = agents;
        mentions.removeWhere(
          (id) =>
              !agents.any((m) => m['characterId'] == id && m['active'] == true),
        );
        if (thread != null) parentId = thread;
        loading = false;
        error = offline;
      });
    } catch (e) {
      if (!currentRead(read, api)) return;
      if (authorizedRoom != null && !denied(e) && e is! StateError && e is! FormatException) {
        setState(() {room=authorizedRoom;loading=false;error=posts.isEmpty?'Could not load posts. Retry.':'Could not refresh posts. Current authorized history is still available. Retry.';});
        return;
      }
      if (denied(e) || e is StateError) {
        clearPrivateState();
        await eraseJournal();
      }
      if (currentRead(read, api))
        setState(() {
          room = null;
          posts = [];
          threadParent = null;
          timelineCursor = null;
          loading = false;
          error = communityError(e);
        });
    }
  }

  Future<void> olderPosts() async {
    final next = timelineCursor,
        read = version,
        api = widget.api,
        query = postSearch.text.trim(),
        thread = widget.threadPostId;
    if (next == null || busy || loading || loadingOlder) return;
    setState(() {
      loadingOlder = true;
      olderTimelineError = null;
    });
    try {
      final page = await readRoomTimeline(
        api,
        widget.roomId,
        search: query,
        parentId: thread,
        cursor: next,
      );
      if (!currentRead(read, api)) return;
      if (page.nextCursor == next)
        throw const FormatException('Repeated timeline cursor');
      final parent = page.parent;
      if (thread != null && parent?['id'] != thread)
        throw const FormatException('Unverified thread parent');
      final existing = posts
          .where((p) => thread == null || p['id'] != thread)
          .toList();
      final combined = mergeRows(page.items, existing);
      setState(() {
        posts = parent == null ? combined : [parent, ...combined];
        threadParent = parent;
        timelineCursor = page.nextCursor;
        loadedPages++;
      });
    } catch (e) {
      if (!currentRead(read, api)) return;
      if (denied(e)) {
        clearPrivateState();
        await eraseJournal();
        if (currentRead(read, api))
          setState(() {
            posts = [];
            room = null;
            threadParent = null;
            timelineCursor = null;
            error = communityError(e);
          });
      } else {
        setState(
          () => olderTimelineError = 'Could not load older posts. Your current history remains available. Retry the same page.',
        );
      }
    } finally {
      if (currentRead(read, api)) setState(() => loadingOlder = false);
    }
  }

  Future<void> openThread(String id) async {
    final api = widget.api, read = version, pages = loadedPages;
    final protect = widget.protectDetail;
    final child = RoomCommunityScreen(
      api: api,
      roomId: widget.roomId,
      threadPostId: id,
      protectDetail: widget.protectDetail,
    );
    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (routeContext) =>
            protect?.call(routeContext, child) ?? child,
      ),
    );
    if (currentRead(read, api)) await load(retainPages: pages);
  }

  Future<void> run(Future<void> Function() work) async {
    if (!mounted || busy || loading || loadingOlder) return;
    final scope = scopeGeneration, api = widget.api;
    bool active() => mounted && scope == scopeGeneration && identical(api, widget.api);
    setState(() {
      busy = true;
      error = null;
    });
    try {
      await work();
      if (active()) await load(retainPages: loadedPages);
    } catch (e) {
      if (!active()) return;
      if (e is StateError ||
          e is DioException &&
              (e.response?.statusCode == 403 ||
                  e.response?.statusCode == 404)) {
        clearPrivateState();
        await eraseJournal();
      }
      if (mounted)
        setState(() {
          error = communityError(e);
          if (e is StateError ||
              e is DioException &&
                  (e.response?.statusCode == 403 ||
                      e.response?.statusCode == 404)) {
            room = null;
            posts = [];
          }
        });
    } finally {
      if (active()) setState(() => busy = false);
    }
  }

  Future<void> send() => run(() async {
    final scope = scopeGeneration, api = widget.api, id = widget.roomId;
    bool active() => mounted && scope == scopeGeneration && identical(api, widget.api);
    if (pendingMedia != null)
      throw const FormatException(
        'Resolve or discard the uncertain attachment upload before sending.',
      );
    final body = composer.text.trim();
    if (body.isEmpty && attachments.isEmpty) return;
    final files =
        '${attachments.map((e) => e['id']).join(',')}|${mentions.join(',')}';
    if (pendingKey == null ||
        pendingBody != body ||
        pendingParent != parentId ||
        pendingAttachments != files) {
      pendingKey = communityRequestId();
      pendingBody = body;
      pendingParent = parentId;
      pendingAttachments = files;
    }
    await persistDraft();
    if (!active()) return;
    await api.action(id, 'timeline', {
      'body': body,
      'requestId': pendingKey,
      if (mentions.isNotEmpty) 'mentions': mentions.toList(),
      if (attachments.isNotEmpty)
        'attachments': attachments.map((e) => {'id': e['id']}).toList(),
      if (parentId != null) 'parentId': parentId,
    });
    if (active())
      setState(() {
        composer.clear();
        attachments.clear();
        mentions.clear();
        parentId = null;
        pendingKey = null;
      });
    if (active()) await persistDraft();
  });
  Future<void> pickAttachment() async {
    final scope = scopeGeneration, api = widget.api, id = widget.roomId;
    bool active() => mounted && scope == scopeGeneration && identical(api, widget.api);
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
    if (file == null || !active()) return;
    final requestId =
        pendingMedia?['requestId'] as String? ?? communityRequestId();
    late Future<void> Function() upload;
    upload = () => run(() async {
      final size = await file.length();
      if (!active()) return;
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
      if (!active()) return;
      if (bytes.length != size)
        throw const FormatException(
          'Attachment changed. Choose the file again.',
        );
      final identity = roomMediaRetryIdentity(requestId, file.name, bytes);
      if (pendingMedia != null &&
          !roomMediaRetryMatches(pendingMedia, identity)) {
        throw const FormatException(
          'This is not the original attachment. Select the same file or discard the pending upload.',
        );
      }
      pendingMedia = identity;
      // Commit the retry identity before requesting the server. If the reply
      // vanishes after acceptance, the next app launch must NOT mint a new ID.
      await persistDraft();
      if (!active()) return;
      retryMediaUpload = upload;
      final result = await api.request(id, 'POST', 'media', {
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
      if (!active()) return;
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
    final scope = scopeGeneration, api = widget.api;
    final result = await api.request(
      widget.roomId,
      'GET',
      'media/${attachment['id']}',
      {},
    );
    final bytes = base64Decode(result['dataBase64'] as String);
    if (!mounted || scope != scopeGeneration || !identical(api, widget.api)) return;
    if ('${result['mimeType']}'.startsWith('image/')) {
      await showDialog<void>(
        context: context,
        builder: (_) => Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(child: Image.memory(bytes)),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Close'),
              ),
            ],
          ),
        ),
      );
    } else {
      await SharePlus.instance.share(
        ShareParams(
          files: [
            XFile.fromData(
              bytes,
              mimeType: result['mimeType'] as String?,
              name: result['name'] as String? ?? 'Room attachment',
            ),
          ],
        ),
      );
    }
  });
  Future<void> reportPost(String postId, {bool reply = false}) async {
    final read = version, api = widget.api, id = widget.roomId;
    var reportReason = '';
    final selected = await showDialog<String>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(reply ? 'Report reply' : 'Report post'),
        content: TextField(
          onChanged: (value) => reportReason = value,
          autofocus: true,
          maxLength: 2000,
          minLines: 2,
          maxLines: 4,
          decoration: InputDecoration(
            labelText: reply
                ? 'What is wrong with this reply?'
                : 'What is wrong with this post?',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              final value = reportReason.trim();
              if (value.isNotEmpty) {
                Navigator.pop(dialogContext, value);
              }
            },
            child: const Text('Submit report'),
          ),
        ],
      ),
    );
    if (selected == null || !currentRead(read, api)) return;
    final key = '$postId:$selected';
    reportRequestKeys[key] ??= communityRequestId();
    await run(() async {
      await api.action(
        id,
        reply ? 'reply-reports' : 'reports',
        {
          'targetId': postId,
          'reason': selected,
          'requestId': reportRequestKeys[key],
        },
      );
      if (!currentRead(read, api)) return;
      reportRequestKeys.remove(key);
      if (mounted)
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              reply ? 'Reply reported for review' : 'Post reported for review',
            ),
          ),
        );
    });
  }

  Future<void> info() async {
    final value = room;
    final api = widget.api, scope = scopeGeneration, pages = loadedPages, protect = widget.protectDetail;
    if (value == null) return;
    await Navigator.push<void>(
      context,
      MaterialPageRoute(
        builder: (routeContext) {
          final detail = _CommunityInfo(
            api: api,
            initial: value,
            protectDetail: protect,
          );
          return protect?.call(routeContext, detail) ?? detail;
        },
      ),
    );
    if (mounted && scope == scopeGeneration && identical(api,widget.api)) await load(retainPages:pages);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      toolbarHeight: MediaQuery.textScalerOf(context).scale(56).clamp(56,112).toDouble(),
      title: InkWell(
        onTap: room == null ? null : info,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(room?.name ?? 'Room', maxLines:1, overflow:TextOverflow.ellipsis),
            if (room != null)
              Text(
                '${room!.memberCount} members · Room info',
                maxLines:1, overflow:TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
          ],
        ),
      ),
      actions: [
        if (room?.joined == true) IconButton(
          tooltip: 'Search Room posts',
          onPressed: busy ? null : () {
            if (searching && postSearch.text.isNotEmpty) {postSearch.clear(); searchPosts('');}
            setState(() => searching = !searching);
          },
          icon: const Icon(Icons.search),
        ),
        IconButton(
          tooltip: 'Refresh Room',
          onPressed: busy || loading
              ? null
              : () => load(retainPages: loadedPages),
          icon: const Icon(Icons.refresh),
        ),
      ],
    ),
    body: Column(
      children: [
        if (loading) const LinearProgressIndicator(),
        if (room?.joined == true && searching)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: postSearch,
              enabled: !busy,
              maxLength: 100,
              onChanged: searchPosts,
              decoration: InputDecoration(
                labelText: widget.threadPostId == null
                    ? 'Search Room posts'
                    : 'Search this thread',
                counterText: '',
                suffixIcon: postSearch.text.isEmpty
                    ? null
                    : IconButton(
                        tooltip: 'Clear post search',
                        onPressed: () {
                          postSearch.clear();
                          searchPosts('');
                        },
                        icon: const Icon(Icons.clear),
                      ),
              ),
            ),
          ),
        if (error != null)
          MaterialBanner(
            content: Text(error!),
            actions: [
              TextButton(
                onPressed: busy || loading
                    ? null
                    : () => load(retainPages: loadedPages),
                child: const Text('Retry'),
              ),
            ],
          ),
        if (room == null && !loading)
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: token,
                  decoration: const InputDecoration(
                    labelText: 'Private Room invitation code',
                  ),
                ),
                TextButton(
                  onPressed: busy || loading
                      ? null
                      : () => run(
                          () => widget.api.action(widget.roomId, 'join', {
                            'token': token.text.trim(),
                          }),
                        ),
                  child: const Text('Accept invitation'),
                ),
              ],
            ),
          ),
        if (room != null && !room!.joined) ...[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(room!.description),
                Text('Owner: ${room!.ownerId}'),
                Text(
                  '${room!.visibility} · ${room!.postingPolicy == 'admins' ? 'Admins only post' : 'All members post'}',
                ),
                if (room!.visibility == 'private')
                  TextField(
                    controller: token,
                    decoration: const InputDecoration(
                      labelText: 'Invitation code',
                    ),
                  ),
                FilledButton(
                  onPressed: busy || loading
                      ? null
                      : () => run(
                          () => widget.api.action(widget.roomId, 'join', {
                            'token': token.text.trim(),
                          }),
                        ),
                  child: const Text('Join Room'),
                ),
              ],
            ),
          ),
        ],
        Expanded(
          child: RefreshIndicator(
            onRefresh: () => load(retainPages: loadedPages),
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (room?.joined == true &&
                    posts.isEmpty &&
                    !loading &&
                    error == null)
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      postSearch.text.trim().isNotEmpty
                          ? 'No posts match this search.'
                          : 'No posts yet.',
                    ),
                  ),
                if (olderTimelineError != null) Text(olderTimelineError!),
                if (timelineCursor != null)
                  TextButton(
                    onPressed: busy || loading || loadingOlder
                        ? null
                        : olderPosts,
                    child: Text(
                      loadingOlder
                          ? 'Loading older posts…'
                          : olderTimelineError == null
                          ? 'Load older posts'
                          : 'Retry older posts',
                    ),
                  ),
                if (widget.threadPostId != null &&
                    posts.length == 1 &&
                    !loading)
                  Text(
                    postSearch.text.trim().isEmpty
                        ? 'No replies yet.'
                        : 'No replies match this search.',
                  ),
                for (final post in posts)
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${post['authorId'] ?? ''}',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          if (widget.threadPostId == null)
                            TextButton(
                              onPressed: busy || loading
                                  ? null
                                  : () => openThread(
                                      '${post['parentId'] ?? post['id']}',
                                    ),
                              child: Text(
                                post['parentId'] == null
                                    ? 'View thread'
                                    : 'Open parent thread',
                              ),
                            ),
                          if (post['parentId'] != null)
                            const Text('Reply', style: TextStyle(fontSize: 12)),
                          if (post['pinned'] == true) const Text('Pinned'),
                          SelectableText('${post['body'] ?? ''}'),
                          for (final attachment
                              in post['attachments'] as List? ?? [])
                            TextButton.icon(
                              onPressed: busy || loading
                                  ? null
                                  : () => openAttachment(
                                      Map<String, dynamic>.from(
                                        attachment as Map,
                                      ),
                                    ),
                              icon: const Icon(Icons.attach_file),
                              label: Text(
                                '${attachment['name'] ?? 'Open attachment'}',
                              ),
                            ),
                          if (post['parentId'] == null)
                            Wrap(
                              children: [
                                for (final emoji in ['👍', '❤️', '😂'])
                                  TextButton(
                                    onPressed: busy || loading
                                        ? null
                                        : () => run(() async {
                                            final reactions =
                                                post['reactions'] as List? ??
                                                [];
                                            final mine = reactions.any(
                                              (e) =>
                                                  e['emoji'] == emoji &&
                                                  e['mine'] == true,
                                            );
                                            await widget.api.request(
                                              widget.roomId,
                                              mine ? 'DELETE' : 'POST',
                                              'posts/${post['id']}/reactions',
                                              {'emoji': emoji},
                                            );
                                          }),
                                    child: Text(
                                      '$emoji ${(post['reactions'] as List? ?? []).where((e) => e['emoji'] == emoji).map((e) => e['count']).join()}',
                                    ),
                                  ),
                              ],
                            ),
                          if (room?.joined == true &&
                              post['authorKind'] != 'masana')
                            TextButton.icon(
                              onPressed: busy || loading
                                  ? null
                                  : () => reportPost(
                                      '${post['id']}',
                                      reply: post['parentId'] != null,
                                    ),
                              icon: const Icon(Icons.flag_outlined),
                              label: Text(
                                post['parentId'] != null
                                    ? 'Report reply'
                                    : 'Report post',
                              ),
                            ),
                          if (room?.manages == true && post['parentId'] == null)
                            Wrap(
                              children: [
                                TextButton(
                                  onPressed: busy || loading
                                      ? null
                                      : () => run(
                                          () => widget.api.modify(
                                            widget.roomId,
                                            'posts/${post['id']}',
                                            {'pinned': post['pinned'] != true},
                                          ),
                                        ),
                                  child: Text(
                                    post['pinned'] == true ? 'Unpin' : 'Pin',
                                  ),
                                ),
                                TextButton(
                                  onPressed: busy || loading
                                      ? null
                                      : () => run(
                                          () => widget.api.modify(
                                            widget.roomId,
                                            'posts/${post['id']}',
                                            {
                                              'commentsEnabled':
                                                  post['commentsEnabled'] ==
                                                  false,
                                            },
                                          ),
                                        ),
                                  child: Text(
                                    post['commentsEnabled'] == false
                                        ? 'Enable comments'
                                        : 'Close comments',
                                  ),
                                ),
                                TextButton(
                                  onPressed: busy || loading
                                      ? null
                                      : () async {
                                          final scope = scopeGeneration, api = widget.api, id = widget.roomId;
                                          final confirmed =
                                              await showDialog<bool>(
                                                context: context,
                                                builder: (context) =>
                                                    AlertDialog(
                                                      title: const Text(
                                                        'Remove post?',
                                                      ),
                                                      content: const Text(
                                                        'This post and its comments will no longer appear to members.',
                                                      ),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                context,
                                                                false,
                                                              ),
                                                          child: const Text(
                                                            'Cancel',
                                                          ),
                                                        ),
                                                        FilledButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                context,
                                                                true,
                                                              ),
                                                          child: const Text(
                                                            'Remove',
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                              );
                                          if (confirmed == true && mounted && scope == scopeGeneration && identical(api,widget.api))
                                            await run(
                                              () => api.remove(
                                                id,
                                                'posts/${post['id']}',
                                              ),
                                            );
                                        },
                                  child: const Text('Remove post'),
                                ),
                              ],
                            ),
                          if (room?.commentsEnabled == true &&
                              post['commentsEnabled'] != false)
                            TextButton(
                              onPressed: busy || loading
                                  ? null
                                  : () => setState(
                                      () => parentId =
                                          '${post['parentId'] ?? post['id']}',
                                    ),
                              child: const Text('Comment / reply'),
                            ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        if (room?.joined == true &&
            (widget.threadPostId == null
                ? room!.canPost || parentId != null
                : threadParent != null && room!.commentsEnabled &&
                      threadParent?['commentsEnabled'] != false))
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  if (parentId != null)
                    Row(
                      children: [
                        const Expanded(child: Text('Replying to post')),
                        IconButton(
                          tooltip: 'Cancel reply',
                          onPressed: widget.threadPostId != null
                              ? null
                              : () => setState(() => parentId = null),
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                  if (roomMasana.any((m) => m['active'] == true))
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (final agent in roomMasana.where(
                            (m) => m['active'] == true,
                          ))
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 8),
                              child: FilterChip(
                                label: Text('Mention ${agent['characterId']}'),
                                selected: mentions.contains(
                                  agent['characterId'],
                                ),
                                onSelected: busy
                                    ? null
                                    : (v) {
                                        setState(() {
                                          if (v) {
                                            mentions.add(
                                              '${agent['characterId']}',
                                            );
                                          } else {
                                            mentions.remove(
                                              agent['characterId'],
                                            );
                                          }
                                        });
                                        persistDraft();
                                      },
                              ),
                            ),
                        ],
                      ),
                    ),
                  for (final file in attachments)
                    Row(
                      children: [
                        Expanded(
                          child: Text('${file['name'] ?? 'Attachment'}'),
                        ),
                        IconButton(
                          tooltip: 'Remove attachment',
                          onPressed: busy || loading
                              ? null
                              : () {
                                  setState(() => attachments.remove(file));
                                  persistDraft();
                                },
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                  if (pendingMedia != null)
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Upload unconfirmed. Retry the original file, or discard this upload.',
                          ),
                        ),
                        TextButton(
                          onPressed: busy || loading ? null : pickAttachment,
                          child: Text(
                            retryMediaUpload == null
                                ? 'Select original'
                                : 'Retry upload',
                          ),
                        ),
                        IconButton(
                          tooltip: 'Discard pending upload',
                          onPressed: busy || loading
                              ? null
                              : () {
                                  setState(() {
                                    retryMediaUpload = null;
                                    pendingMedia = null;
                                  });
                                  persistDraft();
                                },
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                  Row(
                    children: [
                      IconButton(
                        tooltip: pendingMedia == null
                            ? 'Attach file'
                            : 'Retry original attachment',
                        onPressed: busy || loading ? null : pickAttachment,
                        icon: const Icon(Icons.attach_file),
                      ),
                      Expanded(
                        child: TextField(
                          controller: composer,
                          enabled: !busy && !loading,
                          maxLength: 4000,
                          minLines: 1,
                          maxLines: 4,
                          decoration: InputDecoration(
                            hintText: parentId != null
                                ? 'Write a comment'
                                : 'Write a post',
                          ),
                        ),
                      ),
                      IconButton(
                        tooltip: 'Send post',
                        onPressed: busy || pendingMedia != null ? null : send,
                        icon: const Icon(Icons.send),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        if (widget.threadPostId != null &&
            room?.joined == true &&
            (!room!.commentsEnabled ||
                threadParent?['commentsEnabled'] == false))
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('Comments are closed.'),
          ),
        if (widget.threadPostId == null &&
            room?.joined == true &&
            !room!.canPost &&
            parentId == null)
          const SafeArea(
            top: false,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Only admins post. Tap Comment / reply to join the discussion.',
              ),
            ),
          ),
      ],
    ),
  );
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
  final ownershipRequestKeys = <String, String>{};
  final reportReason = TextEditingController();
  String? reportKey;
  String? error;
  bool busy = false, unavailable = false;
  int ownershipRefresh = 0, refreshGeneration = 0;
  @override void initState() { super.initState(); refresh(); }
  @override void dispose() { name.dispose(); about.dispose(); reportReason.dispose(); super.dispose(); }
  Future<void> refresh() async {
    final version = ++refreshGeneration;
    try {
      final fresh = await widget.api.room(room.id);
      if (!mounted || version != refreshGeneration) return;
      setState(() {
        room = fresh;
        unavailable = false;
        if (!room.joined) { members = []; masana = []; sharedMedia = []; }
        if (!room.manages) { reportedPosts = []; reportReviews = []; }
      });
      final media = room.joined ? await widget.api.items(room.id, 'media') : <Map<String, dynamic>>[];
      final people = room.joined ? await widget.api.items(room.id, 'members') : <Map<String, dynamic>>[];
      final agents = room.joined ? await widget.api.items(room.id, 'masana') : <Map<String, dynamic>>[];
      final flagged = room.manages ? await widget.api.items(room.id, 'reports/summary') : <Map<String, dynamic>>[];
      final reviews = room.manages ? await widget.api.items(room.id, 'reports/reviews') : <Map<String, dynamic>>[];
      if (mounted && version == refreshGeneration) setState(() { members = people; masana = agents; sharedMedia = media; reportedPosts = flagged; reportReviews = reviews; });
    } catch (e) { if (mounted && version == refreshGeneration) setState(() {
      error = communityError(e);
      if (e is StateError && e.message == 'account_changed' || e is DioException && const [401,403,404].contains(e.response?.statusCode)) {
        unavailable = true; members = []; masana = []; sharedMedia = []; reportedPosts = []; reportReviews = [];
        name.clear(); about.clear(); reportReason.clear();
      }
    }); }
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
  @override Widget build(BuildContext context) => unavailable
    ? Scaffold(appBar: AppBar(title: const Text('Room info')), body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [const Text('Room access is unavailable.'), TextButton(onPressed: busy ? null : () => run(refresh), child: const Text('Retry'))])))
    : Scaffold(appBar: AppBar(title: const Text('Room info')), body: ListView(padding: const EdgeInsets.all(20), children: [
    Text(room.name, style: Theme.of(context).textTheme.headlineSmall), Text(room.description), Text('Owner: ${room.ownerId}'), Text('${room.visibility} · ${room.memberCount} members'),
    if (room.joined) ...[
      TextButton.icon(icon: const Icon(Icons.policy_outlined), label: const Text('Moderation and appeals'), onPressed: () async { await Navigator.push<void>(context, MaterialPageRoute(builder: (routeContext) { final detail = RoomModerationScreen(api: widget.api, roomId: room.id); return widget.protectDetail?.call(routeContext, detail) ?? detail; })); if (mounted) await refresh(); }),
      RoomOwnershipTransferPanel(key: ValueKey('ownership-${room.ownerId}-$ownershipRefresh'), api: widget.api, roomId: room.id, onChanged: refresh),
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
      else if (action == 'transfer') {
        if (await confirm('Offer Room ownership?', 'This member must open Room info and accept. You stay owner until then.')) {
          final target = '${person['userId']}';
          ownershipRequestKeys[target] ??= communityRequestId();
          final result = await widget.api.request(room.id, 'POST', 'ownership-transfer', {'targetUserId': target, 'requestId': ownershipRequestKeys[target]});
          if (result['ownershipVersion'] != 1 || (result['transfer'] as Map?)?['targetUserId'] != target) throw const FormatException('Could not verify the ownership offer. Refresh Room info.');
          ownershipRequestKeys.remove(target); ownershipRefresh++;
        }
      }
      else if (await confirm('Remove member?', 'They lose access to this Room.')) { await widget.api.member(room.id, '${person['userId']}', {'state': action}); }
    }), itemBuilder: (_) => [if (room.role == 'owner') ...[const PopupMenuItem(value: 'admin', child: Text('Make admin')), const PopupMenuItem(value: 'member', child: Text('Make member')), const PopupMenuItem(value: 'transfer', child: Text('Offer ownership'))], const PopupMenuItem(value: 'left', child: Text('Remove')), const PopupMenuItem(value: 'banned', child: Text('Ban'))]) : null),
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
