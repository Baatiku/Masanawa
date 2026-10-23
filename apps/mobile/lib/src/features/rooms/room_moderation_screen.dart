import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'room_community_api.dart';
import 'room_request_id.dart';
import 'room_moderation_request.dart';

/// Secondary Room info destination. Server responses own all permissions and
/// outcomes; a submitted appeal is never presented as an approved restoration.
class RoomModerationScreen extends StatefulWidget {
  const RoomModerationScreen({
    super.key,
    required this.api,
    required this.roomId,
    this.requestStore,
  });
  final RoomCommunityApi api;
  final String roomId;
  final RoomModerationRequestStore? requestStore;
  @override
  State<RoomModerationScreen> createState() => _ModerationState();
}

class _ModerationState extends State<RoomModerationScreen> {
  List<Map<String, dynamic>> cases = [],
      reports = [],
      appeals = [],
      history = [];
  late RoomModerationRequestStore journal;
  PendingRoomModeration? pending;
  bool restored = false, pendingChecked = false;
  String? outcome, focusPath;

  Future<Map<String, dynamic>?> operationStatus(
    PendingRoomModeration op,
    RoomCommunityApi api,
    String id,
  ) async {
    final data = await api.request(
      id,
      'GET',
      'moderation/operations',
      op.lookup,
    );
    if (data['operationVersion'] != 1 ||
        data['item'] != null && data['item'] is! Map)
      throw const FormatException('Unavailable operation recovery');
    if (data['item'] == null) return null;
    final item = Map<String, dynamic>.from(data['item'] as Map);
    final lookup = op.lookup;
    if (item['action'] != lookup['action'])
      throw const FormatException('Mismatched moderation receipt');
    if (op.isReport) {
      if (item['targetId'] != lookup['targetId'] ||
          item['targetKind'] != lookup['targetKind'] ||
          item['decision'] != op.payload['decision'] ||
          item['reviewId'] is! String ||
          (item['reviewId'] as String).isEmpty)
        throw const FormatException('Mismatched review receipt');
    } else if (item['appealId'] is! String ||
        (item['appealId'] as String).isEmpty ||
        item['reviewId'] is! String ||
        !const ['pending', 'upheld', 'restored'].contains(item['status']) ||
        (op.isAppeal
            ? item['reviewId'] != lookup['targetId']
            : item['appealId'] != lookup['targetId'] ||
                  item['status'] != op.payload['decision'])) {
      throw const FormatException('Mismatched appeal receipt');
    }
    return item;
  }

  Future<void> clearSavedRetry() async {
    final op = pending;
    if (op == null ||
        !pendingChecked ||
        !verified ||
        busy ||
        loading ||
        confirming ||
        !authorized())
      return;
    final version = generation,
        scope = scopeGeneration,
        api = widget.api,
        id = widget.roomId,
        store = journal;
    setState(() => confirming = true);
    try {
      final yes = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Clear saved retry?'),
          content: const Text(
            'This only clears the retry saved on this device. It does not cancel a delayed server request or prove failure. Refresh current status before making another decision.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Clear saved retry'),
            ),
          ],
        ),
      );
      if (!current(version) || yes != true) return;
      // A receipt arriving while the confirmation was open must be recovered.
      final receipt = await operationStatus(op, api, id);
      if (!current(version)) return;
      if (receipt != null) {
        await load();
        return;
      }
      await store.write(null);
      if (!current(version)) return;
      setState(() {
        pending = null;
        pendingChecked = false;
        verified = false;
        error = 'Saved retry cleared. A delayed request may still complete. Refresh current status before another decision.';
      });
    } catch (_) {
      if (current(version))
        setState(() {
          verified = false;
          error = 'Could not clear the saved retry safely. Check the original request status.';
        });
    } finally {
      if (mounted &&
          scope == scopeGeneration &&
          identical(api, widget.api) &&
          id == widget.roomId &&
          authorized())
        setState(() => confirming = false);
    }
  }

  Future<void> retryOriginal() async {
    final op = pending;
    if (op == null ||
        !pendingChecked ||
        !verified ||
        busy ||
        loading ||
        confirming ||
        !authorized() ||
        !op.isAppeal && !manager)
      return;
    final version = generation;
    setState(() => confirming = true);
    final yes = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Retry original moderation request?'),
        content: const Text(
          'Use the saved reason, decision and request identity. This does not create a new request.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Retry original'),
          ),
        ],
      ),
    );
    if (!current(version)) return;
    setState(() => confirming = false);
    if (yes == true) await submit(op);
  }

  Future<void> submit(PendingRoomModeration op) async {
    final version = generation,
        scope = scopeGeneration,
        api = widget.api,
        id = widget.roomId;
    setState(() {
      busy = true;
      pendingChecked = false;
    });
    try {
      final store = journal;
      await store.write(op.encode());
      if (!current(version)) return;
      await api.request(id, 'POST', op.path, op.payload);
      if (!current(version)) return;
      // POST acknowledgement is not the recovery receipt. Read the actor-bound
      // operation and exact older case before changing visible outcome.
      await load();
    } catch (e) {
      if (!current(version)) return;
      setState(() {
        verified = false;
        if (e is DioException &&
            const [401, 403, 404].contains(e.response?.statusCode))
          clearDetails();
        error = 'The outcome is unconfirmed. Check the original request status before retrying.';
      });
    } finally {
      if (mounted &&
          scope == scopeGeneration &&
          identical(api, widget.api) &&
          id == widget.roomId &&
          authorized())
        setState(() {
          busy = false;
          confirming = false;
        });
    }
  }

  final cursors = <String, String?>{};
  final paging = <String>{};
  final pageErrors = <String>{};
  static const ownPath = 'moderation/cases',
      reportPath = 'reply-reports/summary',
      appealPath = 'moderation/appeals',
      historyPath = 'reply-reports/reviews';

  String? cursor(Map<String, dynamic> data) {
    final value = data['nextCursor'];
    if (value == null) return null;
    if (data['pageVersion'] != 1 ||
        value is! String ||
        value.isEmpty ||
        value.length > 1600) {
      throw const FormatException('Unavailable moderation pagination');
    }
    return value;
  }

  List<Map<String, dynamic>> rows(String path) => switch (path) {
    ownPath => cases,
    reportPath => reports,
    appealPath => appeals,
    _ => history,
  };
  String identity(String path, Map<String, dynamic> row) {
    final value =
        row[path == ownPath || path == historyPath
            ? 'reviewId'
            : path == appealPath
            ? 'appealId'
            : 'replyId'];
    if (value is! String || value.isEmpty)
      throw const FormatException('Missing moderation identity');
    return value;
  }

  void clearDetails() {
    cases = [];
    reports = [];
    appeals = [];
    history = [];
    cursors.clear();
    pageErrors.clear();
    manager = false;
    verified = false;
    outcome = focusPath = null;
  }

  Future<void> more(String path) async {
    final next = cursors[path];
    if (next == null ||
        paging.isNotEmpty ||
        busy ||
        loading ||
        confirming ||
        !verified ||
        pending != null ||
        !authorized())
      return;
    final version = generation, api = widget.api, id = widget.roomId;
    setState(() {
      paging.add(path);
      pageErrors.remove(path);
    });
    try {
      final room = await api.room(id);
      if (!current(version)) return;
      if (!room.manages && manager) {
        setState(() {
          manager = false;
          reports = [];
          appeals = [];
          history = [];
          cursors.remove(reportPath);
          cursors.remove(appealPath);
          cursors.remove(historyPath);
        });
      }
      if (path != ownPath && !room.manages)
        throw StateError('manager_permission_changed');
      final data = await api.request(id, 'GET', path, {'cursor': next});
      final page = items(
        data,
        versioned: path == ownPath || path == appealPath,
      );
      final after = cursor(data);
      if (!current(version)) return;
      if (data['pageVersion'] != 1 || after == next)
        throw const FormatException('Non-progressing moderation page');
      final byId = <String, Map<String, dynamic>>{};
      for (final row in [...rows(path), ...page]) {
        byId[identity(path, row)] = row;
      }
      setState(() {
        final combined = byId.values.toList();
        switch (path) {
          case ownPath:
            cases = combined;
          case reportPath:
            reports = combined;
          case appealPath:
            appeals = combined;
          default:
            history = combined;
        }
        cursors[path] = after;
      });
    } catch (e) {
      if (!current(version)) return;
      setState(() {
        pageErrors.add(path);
        if (e is DioException &&
                const [401, 403, 404].contains(e.response?.statusCode) ||
            e is StateError && e.message == 'manager_permission_changed') {
          clearDetails();
          error = 'Moderation access changed. Refresh its current status.';
        }
      });
    } finally {
      if (current(version)) setState(() => paging.remove(path));
    }
  }

  Widget pageControl(String path, String label) => Column(
    children: [
      if (pageErrors.contains(path))
        const Text(
          'Could not load more. Current items remain available; retry the same page.',
        ),
      if (cursors[path] != null)
        TextButton(
          onPressed:
              busy ||
                  loading ||
                  confirming ||
                  paging.isNotEmpty ||
                  !verified ||
                  pending != null
              ? null
              : () => more(path),
          child: Text(
            paging.contains(path)
                ? 'Loading more…'
                : pageErrors.contains(path)
                ? 'Retry $label'
                : 'Load more $label',
          ),
        ),
    ],
  );

  bool loading = true,
      busy = false,
      confirming = false,
      manager = false,
      verified = false;
  String? error;
  int generation = 0, scopeGeneration = 0;
  bool authorized() {
    try {
      final api = widget.api;
      if (api is AccountBoundRoomCommunityApi) api.assertActive();
      return true;
    } catch (_) {
      return false;
    }
  }

  bool current(int version) => mounted && version == generation && authorized();
  @override
  void initState() {
    super.initState();
    journal =
        widget.requestStore ??
        SecureRoomModerationRequestStore(widget.api, widget.roomId);
    load();
  }

  @override
  void didUpdateWidget(covariant RoomModerationScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.api, widget.api) ||
        oldWidget.roomId != widget.roomId ||
        !identical(oldWidget.requestStore, widget.requestStore)) {
      generation++;
      scopeGeneration++;
      cases = [];
      reports = [];
      appeals = [];
      history = [];
      journal =
          widget.requestStore ??
          SecureRoomModerationRequestStore(widget.api, widget.roomId);
      restored = false;
      pending = null;
      pendingChecked = false;
      outcome = focusPath = null;
      cursors.clear();
      paging.clear();
      pageErrors.clear();
      busy = false;
      confirming = false;
      load();
    }
  }

  @override
  void dispose() {
    generation++;
    super.dispose();
  }

  List<Map<String, dynamic>> items(
    Map<String, dynamic> data, {
    bool versioned = true,
  }) {
    if (versioned && data['moderationVersion'] != 1 || data['items'] is! List)
      throw const FormatException('Unavailable moderation protocol');
    return (data['items'] as List)
        .map((v) => Map<String, dynamic>.from(v as Map))
        .toList();
  }

  Future<void> load() async {
    final version = ++generation, api = widget.api, id = widget.roomId;
    setState(() {
      loading = true;
      verified = false;
      pendingChecked = false;
      error = null;
      cursors.clear();
      paging.clear();
      pageErrors.clear();
    });
    try {
      if (!restored) {
        final raw = await journal.read();
        if (!current(version)) return;
        pending = raw == null ? null : PendingRoomModeration.decode(raw);
        restored = true;
      }
      final room = await api.room(id);
      if (!current(version)) return;
      final original = pending;
      if (original != null) {
        final receipt = await operationStatus(original, api, id);
        if (!current(version)) return;
        if (receipt == null) {
          pendingChecked = true;
        } else {
          await journal.write(null);
          if (!current(version)) return;
          pending = null;
          pendingChecked = false;
          outcome = original.isReport
              ? 'Original review confirmed: ${receipt['decision']}.'
              : 'Original appeal operation confirmed: ${receipt['status']}.';
          focusPath = original.isAppeal
              ? 'moderation/cases/${Uri.encodeComponent('${receipt['reviewId']}')}'
              : !original.isReport && room.manages
              ? 'moderation/appeals/${Uri.encodeComponent('${receipt['appealId']}')}'
              : null;
        }
      }
      Map<String, dynamic>? focused;
      final focusedPath = focusPath;
      if (focusPath != null &&
          (focusPath!.startsWith('moderation/cases/') || room.manages)) {
        try {
          final data = await api.request(id, 'GET', focusedPath!, {});
          if (!current(version)) return;
          if (data['moderationVersion'] != 1 || data['item'] is! Map)
            throw const FormatException('Unconfirmed original case');
          focused = Map<String, dynamic>.from(data['item'] as Map);
          final expected = focusedPath.split('/').last;
          if (focused[focusedPath.startsWith('moderation/cases/')
                  ? 'reviewId'
                  : 'appealId'] !=
              expected)
            throw const FormatException('Mismatched original case');
        } on DioException catch (e) {
          if (!current(version)) return;
          if (e.response?.statusCode != 404) rethrow;
          focusPath = null;
        }
      } else {
        focusPath = null;
      }
      final ownData = await api.request(id, 'GET', ownPath, {});
      final reportData = room.manages
          ? await api.request(id, 'GET', reportPath, {})
          : <String, dynamic>{'items': []};
      final appealData = room.manages
          ? await api.request(id, 'GET', appealPath, {})
          : <String, dynamic>{'moderationVersion': 1, 'items': []};
      final historyData = room.manages
          ? await api.request(id, 'GET', historyPath, {})
          : <String, dynamic>{'items': []};
      final own = items(ownData);
      final flagged = items(reportData, versioned: false);
      final queue = items(appealData);
      final reviews = items(historyData, versioned: false);
      final next = {
        ownPath: cursor(ownData),
        reportPath: cursor(reportData),
        appealPath: cursor(appealData),
        historyPath: cursor(historyData),
      };
      if (!current(version)) return;
      setState(() {
        manager = room.manages;
        cases = focused != null && focusPath?.startsWith(ownPath) == true
            ? [
                focused,
                ...own.where((v) => v['reviewId'] != focused!['reviewId']),
              ]
            : own;
        reports = flagged;
        appeals = focused != null && focusPath?.startsWith(appealPath) == true
            ? [
                focused,
                ...queue.where((v) => v['appealId'] != focused!['appealId']),
              ]
            : queue;
        history = reviews;
        cursors.addAll(next);
        verified = true;
      });
    } catch (e) {
      if (!current(version)) return;
      setState(() {
        if (e is DioException &&
            const [401, 403, 404].contains(e.response?.statusCode)) {
          clearDetails();
        }
        error =
            'Could not verify moderation status. Refresh before taking action.';
      });
    } finally {
      if (current(version)) setState(() => loading = false);
    }
  }

  Future<void> action(
    String title,
    String explanation,
    String path,
    Map<String, dynamic> values, {
    String reasonField = 'publicReason',
  }) async {
    if (busy ||
        loading ||
        confirming ||
        paging.isNotEmpty ||
        !verified ||
        pending != null ||
        !authorized())
      return;
    final version = generation,
        scope = scopeGeneration,
        api = widget.api,
        id = widget.roomId;
    var reason = '';
    setState(() => confirming = true);
    try {
      final selected = await showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(explanation),
                TextField(
                  maxLength: 2000,
                  minLines: 2,
                  maxLines: 4,
                  onChanged: (value) => reason = value,
                  decoration: const InputDecoration(labelText: 'Reason'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () {
                if (reason.trim().isNotEmpty)
                  Navigator.pop(context, reason.trim());
              },
              child: const Text('Confirm'),
            ),
          ],
        ),
      );
      if (!current(version) || selected == null) return;
      final op = PendingRoomModeration(path, {
        ...values,
        reasonField: selected,
        'requestId': communityRequestId(),
      });
      // Fail closed on older gateways before saving or sending a new intent.
      final prior = await operationStatus(op, api, id);
      if (!current(version)) return;
      if (prior != null)
        throw const FormatException('Request identity already used');
      setState(() {
        pending = op;
        pendingChecked = false;
        outcome = null;
      });
      await submit(op);
    } catch (e) {
      if (!current(version)) return;
      setState(() {
        verified = false;
        if (e is DioException &&
            const [401, 403, 404].contains(e.response?.statusCode)) {
          clearDetails();
        }
        error = e is DioException && e.response?.statusCode == 409
            ? 'The content or decision changed. Refresh its current status.'
            : 'The outcome is unconfirmed. Refresh the original case before trying again.';
      });
    } finally {
      if (mounted &&
          scope == scopeGeneration &&
          identical(api, widget.api) &&
          id == widget.roomId &&
          authorized())
        setState(() {
          busy = false;
          confirming = false;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!authorized())
      return Scaffold(
        appBar: AppBar(title: const Text('Room moderation')),
        body: const Center(child: Text('Session changed. Return to Rooms.')),
      );
    final enabled =
        verified &&
        !busy &&
        !loading &&
        !confirming &&
        paging.isEmpty &&
        pending == null;
    String label(dynamic value) => value == 'restored'
        ? 'Content restored'
        : value == 'upheld'
        ? 'Removal upheld'
        : 'Awaiting review';
    return Scaffold(
      appBar: AppBar(title: const Text('Room moderation')),
      body: RefreshIndicator(
        onRefresh: busy || confirming || paging.isNotEmpty ? () async {} : load,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            if (loading || busy) const LinearProgressIndicator(),
            if (error != null) Text(error!),
            if (outcome != null) Text(outcome!),
            if (pending != null)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Original moderation request needs confirmation',
                      ),
                      const Text(
                        'A missing item in the first page does not prove that the request failed.',
                      ),
                      TextButton(
                        onPressed: busy || loading || confirming ? null : load,
                        child: const Text('Check original request status'),
                      ),
                      TextButton(
                        onPressed:
                            busy ||
                                loading ||
                                confirming ||
                                !verified ||
                                !pendingChecked ||
                                !pending!.isAppeal && !manager
                            ? null
                            : retryOriginal,
                        child: const Text('Retry saved moderation request'),
                      ),
                      TextButton(
                        onPressed:
                            busy ||
                                loading ||
                                confirming ||
                                !verified ||
                                !pendingChecked
                            ? null
                            : clearSavedRetry,
                        child: const Text('Clear saved retry'),
                      ),
                    ],
                  ),
                ),
              ),
            TextButton(
              onPressed: busy || loading || confirming || paging.isNotEmpty
                  ? null
                  : load,
              child: const Text('Refresh moderation status'),
            ),
            Text(
              'Your removed content',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Text(
              'An appeal requests review. Content stays removed until the server confirms restoration.',
            ),
            if (!loading && verified && cases.isEmpty)
              const Text('No removal cases available.'),
            for (final item in cases)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        item['targetKind'] == 'reply'
                            ? 'Reply removed'
                            : 'Post removed',
                      ),
                      Text(
                        '${item['publicReason'] ?? 'Removed by Room moderation.'}',
                      ),
                      if (item['appeal'] is Map) ...[
                        Text(label((item['appeal'] as Map)['status'])),
                        if ((item['appeal'] as Map)['publicReason'] != null)
                          Text('${(item['appeal'] as Map)['publicReason']}'),
                      ],
                      if (item['canAppeal'] == true)
                        TextButton(
                          onPressed: enabled
                              ? () => action(
                                  'Appeal removal?',
                                  'Explain why this removal should be reviewed. A Room manager will decide; no approval time is promised.',
                                  'moderation/cases/${Uri.encodeComponent('${item['reviewId']}')}/appeal',
                                  {},
                                  reasonField: 'reason',
                                )
                              : null,
                          child: const Text('Appeal removal'),
                        ),
                    ],
                  ),
                ),
              ),
            pageControl(ownPath, 'removal cases'),
            if (manager) ...[
              const Divider(),
              Text(
                'Reported replies',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              if (!loading && verified && reports.isEmpty)
                const Text('No reported replies to review.'),
              for (final item in reports)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('${item['excerpt'] ?? 'Reply'}'),
                        Text('${item['reportCount'] ?? 0} member report(s)'),
                        Wrap(
                          spacing: 8,
                          runSpacing: 4,
                          children: [
                            TextButton(
                              onPressed: enabled
                                  ? () => action(
                                      'Dismiss reply reports?',
                                      'Keep this reply visible and close current concerns. New reports may reopen review.',
                                      'reply-reports/${Uri.encodeComponent('${item['replyId']}')}/review',
                                      {'decision': 'dismissed'},
                                    )
                                  : null,
                              child: const Text('Dismiss reply reports'),
                            ),
                            TextButton(
                              onPressed: enabled
                                  ? () => action(
                                      'Remove reported reply?',
                                      'This reply and its media become unavailable. Its parent and other comments stay visible. The author can appeal.',
                                      'reply-reports/${Uri.encodeComponent('${item['replyId']}')}/review',
                                      {'decision': 'removed'},
                                    )
                                  : null,
                              child: const Text('Remove reply'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              pageControl(reportPath, 'reported replies'),
              const Divider(),
              Text(
                'Author appeals',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              if (!loading && verified && appeals.isEmpty)
                const Text('No author appeals available.'),
              for (final item in appeals)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          item['targetKind'] == 'reply'
                              ? 'Reply appeal'
                              : 'Post appeal',
                        ),
                        Text('${item['removalReason'] ?? ''}'),
                        Text('${item['reason'] ?? ''}'),
                        Text(label(item['status'])),
                        if (item['publicReason'] != null)
                          Text('${item['publicReason']}'),
                        if (item['canReview'] == true)
                          Wrap(
                            spacing: 8,
                            runSpacing: 4,
                            children: [
                              TextButton(
                                onPressed: enabled
                                    ? () => action(
                                        'Uphold removal?',
                                        'The content stays removed. Your reason will be visible to its author.',
                                        'moderation/appeals/${Uri.encodeComponent('${item['appealId']}')}/review',
                                        {'decision': 'upheld'},
                                      )
                                    : null,
                                child: const Text('Uphold removal'),
                              ),
                              TextButton(
                                onPressed: enabled
                                    ? () => action(
                                        'Restore content?',
                                        'Restore only content still bound to this removal. A later deletion or unavailable parent blocks restoration. AI replies are not restarted.',
                                        'moderation/appeals/${Uri.encodeComponent('${item['appealId']}')}/review',
                                        {'decision': 'restored'},
                                      )
                                    : null,
                                child: const Text('Restore content'),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              pageControl(appealPath, 'author appeals'),
              if (history.isNotEmpty)
                ExpansionTile(
                  title: const Text('Reply review history'),
                  children: [
                    for (final item in history)
                      ListTile(
                        title: Text(
                          item['decision'] == 'removed'
                              ? 'Reply removed'
                              : 'Reports dismissed',
                        ),
                        subtitle: Text('${item['reviewedAt'] ?? ''}'),
                      ),
                    pageControl(historyPath, 'review history'),
                  ],
                ),
            ],
          ],
        ),
      ),
    );
  }
}
