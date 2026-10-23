import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'room_community_api.dart';
import 'room_content_request.dart';
import 'room_request_id.dart';

/// One pending original edit/removal per account and Room. Embedded mode is a
/// recovery banner; the secondary page owns original text and confirmations.
class RoomContentChanges extends StatefulWidget {
  const RoomContentChanges({
    super.key,
    required this.api,
    required this.roomId,
    this.initialItem,
    this.embedded = false,
    this.store,
    this.onCommitted,
    this.protectDetail,
  });
  final RoomCommunityApi api;
  final String roomId;
  final Map<String, dynamic>? initialItem;
  final bool embedded;
  final RoomContentRequestStore? store;
  final Future<void> Function()? onCommitted;
  final Widget Function(BuildContext, Widget)? protectDetail;
  @override
  State<RoomContentChanges> createState() => _RoomContentChangesState();
}

class _RoomContentChangesState extends State<RoomContentChanges> {
  final body = TextEditingController();
  Timer? membershipTimer;
  late RoomContentRequestStore store;
  PendingRoomContentChange? pending;
  bool loading = true,
      busy = false,
      completed = false,
      committed = false,
      confirming = false;
  String? error, status;
  int generation = 0;
  bool current(int read, RoomCommunityApi api) =>
      mounted && generation == read && identical(widget.api, api);
  @override
  void initState() {
    super.initState();
    reset();
  }

  void reset() {
    generation++;
    pending = null;
    error = null;
    status = null;
    completed = false;
    committed = false;
    busy = false;
    confirming = false;
    store =
        widget.store ??
        SecureRoomContentRequestStore(widget.api, widget.roomId);
    body.text = widget.initialItem?['body'] as String? ?? '';
    membershipTimer?.cancel();
    if (!widget.embedded)
      membershipTimer = Timer.periodic(
        const Duration(seconds: 20),
        (_) => verifyMembership(),
      );
    restore();
  }

  @override
  void didUpdateWidget(covariant RoomContentChanges oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.api, widget.api) ||
        oldWidget.roomId != widget.roomId ||
        oldWidget.initialItem?['id'] != widget.initialItem?['id'] ||
        !identical(oldWidget.store, widget.store))
      reset();
  }

  @override
  void dispose() {
    generation++;
    membershipTimer?.cancel();
    body.dispose();
    super.dispose();
  }

  void failure(Object e) {
    if (e is StateError && e.message == 'account_changed') {
      pending = null;
      body.clear();
      completed = true;
      error = 'Your account changed. Reopen the Room to continue.';
    } else if (e is DioException &&
        const [401, 403, 404].contains(e.response?.statusCode)) {
      pending = null;
      body.clear();
      completed = true;
      error = 'This content is unavailable or your access changed. Reopen the Room.';
    } else if (e is DioException && e.response?.statusCode == 409) {
      error = 'This content changed. Check the saved request, then refresh before editing again.';
    } else if (e is FormatException) {
      error = 'The saved change or server result could not be verified. Check the original result before retrying.';
    } else {
      error = 'The result is unconfirmed. Check your connection and retry the saved change.';
    }
  }

  Future<void> membership(RoomCommunityApi api, String id) async {
    final room = await api.room(id);
    if (!room.joined)
      throw DioException(
        requestOptions: RequestOptions(),
        response: Response(requestOptions: RequestOptions(), statusCode: 403),
      );
  }

  Future<void> verifyMembership() async {
    final read = generation, api = widget.api;
    try {
      await membership(api, widget.roomId);
    } catch (e) {
      if (current(read, api) &&
          (e is StateError && e.message == 'account_changed' ||
              e is DioException &&
                  const [401, 403, 404].contains(e.response?.statusCode))) {
        setState(() {
          generation++;
          failure(e);
          loading = false;
          busy = false;
          confirming = false;
        });
      }
    }
  }

  Future<void> restore() async {
    final read = generation, api = widget.api, saved = store;
    setState(() {
      loading = true;
      error = null;
    });
    try {
      await membership(api, widget.roomId);
      if (!current(read, api)) return;
      final raw = await saved.read();
      if (!current(read, api)) return;
      if (raw == null) {
        pending = null;
        committed = false;
        body.text = widget.initialItem?['body'] as String? ?? '';
      } else {
        pending = PendingRoomContentChange.decode(raw);
        body.text = pending!.payload['body'] as String? ?? '';
        final found = await api.request(
          widget.roomId,
          'GET',
          'content-operations',
          pending!.lookup,
        );
        if (!current(read, api)) return;
        if (pending!.accepted(found)) await finish(pending!, saved, read, api);
      }
    } catch (e) {
      if (current(read, api)) failure(e);
    } finally {
      if (current(read, api)) setState(() => loading = false);
    }
  }

  Future<void> finish(
    PendingRoomContentChange change,
    RoomContentRequestStore saved,
    int read,
    RoomCommunityApi api,
  ) async {
    committed = true;
    await saved.clear(change.encode());
    if (!current(read, api)) return;
    pending = null;
    body.clear();
    completed = true;
    final anotherTarget =
        widget.initialItem != null &&
        widget.initialItem!['id'] != change.targetId;
    status = anotherTarget
        ? 'Your earlier post change was confirmed. Return to the Room to edit this post.'
        : change.action == 'edit'
        ? 'Your edit was saved.'
        : 'Your content was removed.';
    await widget.onCommitted?.call();
  }

  Future<T?> confirm<T>(String title, String explanation, T value) async {
    final read = generation, api = widget.api;
    setState(() => confirming = true);
    try {
      return await showDialog<T>(
        context: context,
        builder: (context) => AlertDialog(
          scrollable: true,
          title: Text(title),
          content: Text(explanation),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, value),
              child: const Text('Confirm'),
            ),
          ],
        ),
      );
    } finally {
      if (current(read, api)) setState(() => confirming = false);
    }
  }

  Future<void> run(
    Future<void> Function(int, RoomCommunityApi, RoomContentRequestStore) work,
  ) async {
    if (busy || loading) return;
    final read = generation, api = widget.api, saved = store;
    setState(() {
      busy = true;
      error = null;
    });
    try {
      await work(read, api, saved);
    } catch (e) {
      if (current(read, api)) {
        if (e is StateError && e.message == 'content_change_pending') {
          await restore();
        } else {
          failure(e);
        }
      }
    } finally {
      if (current(read, api)) setState(() => busy = false);
    }
  }

  Future<void> send(
    PendingRoomContentChange change,
    int read,
    RoomCommunityApi api,
    RoomContentRequestStore saved, {
    bool retry = false,
  }) async {
    // Persist the immutable original before any request, including recovery.
    await saved.write(change.encode());
    if (!current(read, api)) return;
    final found = await api.request(
      widget.roomId,
      'GET',
      'content-operations',
      change.lookup,
    );
    if (!current(read, api)) return;
    if (change.accepted(found)) {
      await finish(change, saved, read, api);
      return;
    }
    if (retry) {
      final approved = await confirm(
        'Retry original ${change.action}?',
        'Only the original saved text, target and version will be retried. A changed or removed post cannot be overwritten.',
        true,
      );
      if (!current(read, api) || approved != true) return;
    }
    // Rewriting the same record also fails closed if storage becomes unavailable.
    await saved.write(change.encode());
    if (!current(read, api)) return;
    final result = await api.request(
      widget.roomId,
      change.method,
      change.path,
      Map<String, dynamic>.from(change.payload),
    );
    if (!current(read, api)) return;
    if (!change.accepted(result))
      throw const FormatException('Missing content receipt');
    await finish(change, saved, read, api);
  }

  Future<void> begin(String action) => run((read, api, saved) async {
    if (pending != null || completed) return;
    final item = widget.initialItem;
    if (item == null ||
        item[action == 'edit' ? 'canEdit' : 'canDelete'] != true)
      return;
    final kind = item['contentKind'],
        id = item['id'],
        revision = item['contentRevision'];
    if (kind is! String || id is! String || revision is! int)
      throw const FormatException('Missing content version');
    final text = body.text.trim();
    if (action == 'edit' && text == item['body']) return;
    if (action == 'delete') {
      final approved = await confirm(
        'Remove your ${kind == 'post' ? 'post' : 'reply'}?',
        kind == 'post'
            ? 'This post and its comments will no longer appear. The moderation audit is retained.'
            : 'This reply and its attachments will no longer appear. The moderation audit is retained.',
        true,
      );
      if (!current(read, api) || approved != true) return;
    }
    final change = PendingRoomContentChange(
      kind,
      id,
      action,
      {
        'requestId': communityRequestId(),
        'expectedRevision': revision,
        if (action == 'edit') 'body': text,
      },
      preview: (item['body'] as String? ?? '').length > 240
          ? (item['body'] as String).substring(0, 240)
          : item['body'] as String? ?? '',
    );
    pending = change;
    await send(change, read, api, saved);
  });
  Future<void> check() => run((read, api, saved) async {
    final change = pending;
    if (change == null) return;
    final found = await api.request(
      widget.roomId,
      'GET',
      'content-operations',
      change.lookup,
    );
    if (!current(read, api)) return;
    if (change.accepted(found)) {
      await finish(change, saved, read, api);
    } else {
      status = 'The server has no receipt for this saved request yet. You can retry the original.';
    }
  });
  Future<void> clear() => run((read, api, saved) async {
    final change = pending;
    if (change == null) return;
    var found = await api.request(
      widget.roomId,
      'GET',
      'content-operations',
      change.lookup,
    );
    if (!current(read, api)) return;
    if (change.accepted(found)) {
      await finish(change, saved, read, api);
      return;
    }
    final approved = await confirm(
      'Clear saved retry?',
      'This clears the local retry, not a request already reaching the server. Refresh the Room before making another change.',
      true,
    );
    if (!current(read, api) || approved != true) return;
    found = await api.request(
      widget.roomId,
      'GET',
      'content-operations',
      change.lookup,
    );
    if (!current(read, api)) return;
    if (change.accepted(found)) {
      await finish(change, saved, read, api);
      return;
    }
    await saved.clear(change.encode());
    if (!current(read, api)) return;
    pending = null;
    body.clear();
    completed = true;
    status = 'Saved retry cleared. Return to the refreshed Room to continue.';
    await widget.onCommitted?.call();
  });
  Future<void> review() async {
    final read = generation,
        api = widget.api,
        id = widget.roomId,
        saved = store,
        protect = widget.protectDetail,
        callback = widget.onCommitted;
    await Navigator.push<void>(
      context,
      MaterialPageRoute(
        builder: (routeContext) {
          final detail = RoomContentChanges(
            api: api,
            roomId: id,
            store: saved,
            onCommitted: callback,
            protectDetail: protect,
          );
          return protect?.call(routeContext, detail) ?? detail;
        },
      ),
    );
    if (current(read, api)) await restore();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.embedded) {
      if (loading || pending == null && error == null)
        return const SizedBox.shrink();
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(error ?? 'A saved post change needs attention.'),
              TextButton(
                onPressed: busy ? null : review,
                child: const Text('Review saved change'),
              ),
            ],
          ),
        ),
      );
    }
    final item = widget.initialItem, change = pending;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your post change',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (loading) const Center(child: CircularProgressIndicator()),
          if (error != null) Text(error!),
          if (status != null) Text(status!),
          if (!loading && error != null && change == null && !completed)
            TextButton(
              onPressed: busy ? null : restore,
              child: const Text('Retry recovery'),
            ),
          if (!loading && change != null) ...[
            Text(
              'Saved ${change.kind == 'post' ? 'post' : 'reply'} ${change.action}',
            ),
            if (item != null && item['id'] != change.targetId)
              const Text(
                'There is an unfinished change for a different post. Resolve it before editing this one.',
              ),
            if (change.preview.isNotEmpty)
              Text('Selected content: ${change.preview}'),
            if (change.action == 'edit')
              TextField(
                controller: body,
                readOnly: true,
                maxLines: null,
                decoration: const InputDecoration(
                  labelText: 'Original saved text',
                ),
              ),
            const Text(
              'Check the original result before starting another change.',
            ),
            TextButton(
              onPressed: busy ? null : check,
              child: const Text('Check result'),
            ),
            if (!committed)
              FilledButton(
                onPressed: busy
                    ? null
                    : () => run(
                        (read, api, saved) =>
                            send(change, read, api, saved, retry: true),
                      ),
                child: const Text('Retry original'),
              ),
            TextButton(
              onPressed: busy ? null : clear,
              child: const Text('Clear saved retry'),
            ),
          ],
          if (!loading &&
              change == null &&
              !completed &&
              item != null &&
              error == null) ...[
            if (item['canEdit'] != true) Text(item['body'] as String? ?? ''),
            if (item['canEdit'] == true) ...[
              TextField(
                controller: body,
                maxLength: item['contentKind'] == 'reply' ? 2000 : 6000,
                maxLines: null,
                minLines: 3,
                enabled: !busy,
                decoration: const InputDecoration(labelText: 'Post text'),
                onChanged: (_) => setState(() {}),
              ),
              FilledButton(
                onPressed: busy || body.text.trim() == item['body']
                    ? null
                    : () => begin('edit'),
                child: const Text('Save edits'),
              ),
            ],
            if (item['canDelete'] == true)
              TextButton(
                onPressed: busy ? null : () => begin('delete'),
                child: const Text('Remove your content'),
              ),
          ],
          if (!loading &&
              change == null &&
              !completed &&
              item == null &&
              error == null)
            const Text('There is no saved post change.'),
          if (busy && !confirming)
            const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
