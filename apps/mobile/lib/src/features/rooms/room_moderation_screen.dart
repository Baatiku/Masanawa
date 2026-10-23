import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'room_community_api.dart';
import 'room_request_id.dart';

/// Secondary Room info destination. Server responses own all permissions and
/// outcomes; a submitted appeal is never presented as an approved restoration.
class RoomModerationScreen extends StatefulWidget {
  const RoomModerationScreen({
    super.key,
    required this.api,
    required this.roomId,
  });
  final RoomCommunityApi api;
  final String roomId;
  @override
  State<RoomModerationScreen> createState() => _ModerationState();
}

class _ModerationState extends State<RoomModerationScreen> {
  List<Map<String, dynamic>> cases = [],
      reports = [],
      appeals = [],
      history = [];
  final keys = <String, String>{};
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
  }

  Future<void> more(String path) async {
    final next = cursors[path];
    if (next == null ||
        paging.isNotEmpty ||
        busy ||
        loading ||
        confirming ||
        !verified ||
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
              busy || loading || confirming || paging.isNotEmpty || !verified
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
    load();
  }

  @override
  void didUpdateWidget(covariant RoomModerationScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.api, widget.api) ||
        oldWidget.roomId != widget.roomId) {
      generation++;
      scopeGeneration++;
      cases = [];
      reports = [];
      appeals = [];
      history = [];
      keys.clear();
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
      error = null;
      cursors.clear();
      paging.clear();
      pageErrors.clear();
    });
    try {
      final room = await api.room(id);
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
        cases = own;
        reports = flagged;
        appeals = queue;
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
      final payload = {...values, reasonField: selected};
      final fingerprint = '$path:${jsonEncode(payload)}';
      keys[fingerprint] ??= communityRequestId();
      setState(() => busy = true);
      final result = await api.request(id, 'POST', path, {
        ...payload,
        'requestId': keys[fingerprint],
      });
      if (!current(version)) return;
      if (path.startsWith('reply-reports/')
          ? (result['reviewed'] != true ||
                result['decision'] != values['decision'])
          : (result['moderationVersion'] != 1 || result['appeal'] is! Map))
        throw const FormatException('Unconfirmed moderation response');
      // Only canonical GET state changes the visible decision/permissions.
      await load();
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
        verified && !busy && !loading && !confirming && paging.isEmpty;
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
