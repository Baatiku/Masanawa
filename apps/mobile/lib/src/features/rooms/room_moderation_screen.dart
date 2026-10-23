import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'room_community_api.dart';

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
    });
    try {
      final room = await api.room(id);
      final own = items(await api.request(id, 'GET', 'moderation/cases', {}));
      final flagged = room.manages
          ? items(
              await api.request(id, 'GET', 'reply-reports/summary', {}),
              versioned: false,
            )
          : <Map<String, dynamic>>[];
      final queue = room.manages
          ? items(await api.request(id, 'GET', 'moderation/appeals', {}))
          : <Map<String, dynamic>>[];
      final reviews = room.manages
          ? items(
              await api.request(id, 'GET', 'reply-reports/reviews', {}),
              versioned: false,
            )
          : <Map<String, dynamic>>[];
      if (!current(version)) return;
      setState(() {
        manager = room.manages;
        cases = own;
        reports = flagged;
        appeals = queue;
        history = reviews;
        verified = true;
      });
    } catch (e) {
      if (!current(version)) return;
      setState(() {
        if (e is DioException &&
            const [401, 403, 404].contains(e.response?.statusCode)) {
          cases = [];
          reports = [];
          appeals = [];
          history = [];
          manager = false;
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
    if (busy || loading || confirming || !verified || !authorized()) return;
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
          cases = [];
          reports = [];
          appeals = [];
          history = [];
          manager = false;
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
    final enabled = verified && !busy && !loading && !confirming;
    String label(dynamic value) => value == 'restored'
        ? 'Content restored'
        : value == 'upheld'
        ? 'Removal upheld'
        : 'Awaiting review';
    return Scaffold(
      appBar: AppBar(title: const Text('Room moderation')),
      body: RefreshIndicator(
        onRefresh: busy || confirming ? () async {} : load,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            if (loading || busy) const LinearProgressIndicator(),
            if (error != null) Text(error!),
            TextButton(
              onPressed: busy || loading || confirming ? null : load,
              child: const Text('Refresh moderation status'),
            ),
            Text(
              'Your removed content',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Text(
              'An appeal requests review. Content stays removed until the server confirms restoration.',
            ),
            if (!loading && cases.isEmpty)
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
            if (manager) ...[
              const Divider(),
              Text(
                'Reported replies',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              if (!loading && reports.isEmpty)
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
              const Divider(),
              Text(
                'Author appeals',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              if (!loading && appeals.isEmpty)
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
                  ],
                ),
            ],
          ],
        ),
      ),
    );
  }
}
