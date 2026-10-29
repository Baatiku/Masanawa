import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/providers.dart';
import '../../state/session_state.dart';

typedef _Owner = ({String id, int epoch});
final _reviewCapability = FutureProvider.autoDispose.family<bool, _Owner>((
  ref,
  owner,
) async {
  var alive = true;
  ref.onDispose(() => alive = false);
  ref.watch(sessionProvider);
  bool current() {
    if (!alive) return false;
    final state = ref.read(sessionProvider);
    return state is SessionSignedIn &&
        state.user.id == owner.id &&
        ref.read(sessionProvider.notifier).authorizationEpoch == owner.epoch;
  }

  if (!current()) return false;
  try {
    final result = await ref
        .read(apiClientProvider)
        .dio
        .get<Map<String, dynamic>>(
          '/v1/feed/safety-capabilities',
          options: Options(extra: {'masanawaAccountGuard': current}),
        );
    return current() && result.data?['canReview'] == true;
  } catch (_) {
    return false;
  }
});

/// A cached client role never grants administrative visibility or authority.
class PostReportAdminEntry extends ConsumerWidget {
  const PostReportAdminEntry({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sessionProvider);
    if (state is! SessionSignedIn) return const SizedBox.shrink();
    final capability = ref.watch(
      _reviewCapability((
        id: state.user.id,
        epoch: ref.read(sessionProvider.notifier).authorizationEpoch,
      )),
    );
    if (capability.isLoading || capability.valueOrNull != true) {
      return const SizedBox.shrink();
    }
    final ha = Localizations.localeOf(context).languageCode == 'ha';
    return ListTile(
      key: const Key('settings-post-report-review'),
      leading: const Icon(Icons.fact_check_outlined),
      title: Text(ha ? 'Duba rahotannin labarai' : 'Review post reports'),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute<void>(builder: (_) => const PostReportReviewScreen()),
      ),
    );
  }
}

class _Report {
  const _Report(this.id, this.post, this.reason, this.at, this.contentChanged);
  final String id, post, reason;
  final DateTime at;
  final bool? contentChanged;
  factory _Report.read(Object? raw) {
    if (raw is! Map) throw const FormatException('Invalid report');
    final id = raw['id'],
        post = raw['post_id'],
        reason = raw['reason'],
        date = raw['created_at'];
    final uuid = RegExp(
      r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-8][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$',
    );
    if (id is! String ||
        !uuid.hasMatch(id) ||
        post is! String ||
        !uuid.hasMatch(post) ||
        reason is! String ||
        !const [
          'spam',
          'harassment',
          'hate',
          'violence',
          'fraud',
          'impersonation',
          'privacy',
          'inaccurate',
          'other',
        ].contains(reason) ||
        raw['state'] != 'open' ||
        date is! String ||
        DateTime.tryParse(date) == null) {
      throw const FormatException('Invalid report');
    }
    return _Report(
      id,
      post,
      reason,
      DateTime.parse(date),
      raw['content_changed'] is bool ? raw['content_changed'] as bool : null,
    );
  }
}

class PostReportReviewScreen extends ConsumerStatefulWidget {
  const PostReportReviewScreen({super.key});
  @override
  ConsumerState<PostReportReviewScreen> createState() =>
      _PostReportReviewState();
}

class _PostReportReviewState extends ConsumerState<PostReportReviewScreen> {
  _Owner? owner;
  int ticket = 0;
  bool loading = false, denied = false;
  String? error;
  List<_Report> rows = [];
  final pending = <String>{};
  bool same() {
    if (!mounted || owner == null) return false;
    final state = ref.read(sessionProvider);
    return state is SessionSignedIn &&
        state.user.id == owner!.id &&
        ref.read(sessionProvider.notifier).authorizationEpoch == owner!.epoch;
  }

  String t(String en, String ha) =>
      Localizations.localeOf(context).languageCode == 'ha' ? ha : en;
  @override
  void initState() {
    super.initState();
    final state = ref.read(sessionProvider);
    if (state is SessionSignedIn) {
      owner = (
        id: state.user.id,
        epoch: ref.read(sessionProvider.notifier).authorizationEpoch,
      );
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) load();
    });
  }

  Future<void> load() async {
    if (!same()) return;
    final request = ++ticket;
    bool current() => same() && request == ticket;
    setState(() {
      loading = true;
      error = null;
    });
    try {
      final result = await ref
          .read(apiClientProvider)
          .dio
          .get<Map<String, dynamic>>(
            '/v1/admin/feed/reports',
            options: Options(extra: {'masanawaAccountGuard': current}),
          );
      if (!current()) return;
      final items = result.data?['items'];
      if (items is! List || items.length > 50) {
        throw const FormatException('Invalid queue');
      }
      final loaded = items.map(_Report.read).toList();
      setState(() {
        rows = loaded;
        denied = false;
      });
    } catch (e) {
      if (!current()) return;
      setState(() {
        denied =
            e is DioException && [401, 403].contains(e.response?.statusCode);
        if (denied) rows = [];
        error = t(
          'Could not load reports. Retry.',
          'An kasa ɗauko rahotanni. Sake gwadawa.',
        );
      });
    } finally {
      if (current()) setState(() => loading = false);
    }
  }

  Future<void> resolve(_Report row, String state) async {
    if (!same() || pending.contains(row.id)) return;
    setState(() => pending.add(row.id));
    try {
      final result = await ref
          .read(apiClientProvider)
          .dio
          .put<Map<String, dynamic>>(
            '/v1/admin/feed/reports/${row.id}',
            data: {'state': state},
            options: Options(extra: {'masanawaAccountGuard': same}),
          );
      if (!same()) return;
      if (result.data?['id'] != row.id || result.data?['state'] != state) {
        throw const FormatException('Unverified review');
      }
      await load();
    } catch (e) {
      if (!same()) return;
      setState(() {
        if (e is DioException && [401, 403].contains(e.response?.statusCode)) {
          denied = true;
          rows = [];
        }
        error = t(
          'Review not confirmed. Refresh before retrying.',
          'Ba a tabbatar da dubawa ba. Sabunta kafin sake gwadawa.',
        );
      });
    } finally {
      if (same()) setState(() => pending.remove(row.id));
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(sessionProvider);
    return Scaffold(
      appBar: AppBar(title: Text(t('Post reports', 'Rahotannin labarai'))),
      body: !same()
          ? Center(
              child: Text(
                t(
                  'Session changed. Reopen this screen.',
                  'An sauya zaman shiga. Sake buɗe wannan shafin.',
                ),
              ),
            )
          : denied
          ? Center(
              child: Text(
                t('Review permission required.', 'Ana buƙatar izinin dubawa.'),
              ),
            )
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Text(
                  t(
                    'Marking a report reviewed does not remove the post. Content removal requires a separate editorial decision.',
                    'Dubawa ba ta cire labarin. Cire labari na buƙatar wata shawarar masu dubawa.',
                  ),
                ),
                if (loading) const LinearProgressIndicator(),
                if (error != null) Text(error!),
                TextButton(
                  onPressed: loading ? null : load,
                  child: Text(t('Refresh', 'Sabunta')),
                ),
                if (!loading && error == null && rows.isEmpty)
                  Text(
                    t('No open reports.', 'Babu rahoton da ke jiran dubawa.'),
                  ),
                if (rows.length == 50)
                  Text(
                    t(
                      'Showing the oldest 50. Resolve reports to load the next ones.',
                      'Ana nuna tsofaffin rahotanni 50. Duba su don ɗauko na gaba.',
                    ),
                  ),
                for (final row in rows)
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            row.reason,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          if (row.contentChanged != false)
                            Text(
                              t(
                                row.contentChanged == true
                                    ? 'Post changed since this report. Check the current original before taking action.'
                                    : 'Original report version unavailable. Check the current post.',
                                'Duba labarin na yanzu kafin ɗaukar mataki.',
                              ),
                            ),
                          Text(row.at.toLocal().toString()),
                          Text('${t('Post', 'Labari')}: ${row.post}'),
                          Text('${t('Report', 'Rahoto')}: ${row.id}'),
                          Wrap(
                            spacing: 8,
                            children: [
                              TextButton(
                                onPressed: () =>
                                    context.push('/status/${row.post}'),
                                child: Text(t('View post', 'Duba labari')),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(0, 48),
                                ),
                                onPressed: pending.contains(row.id)
                                    ? null
                                    : () => resolve(row, 'reviewed'),
                                child: Text(t('Mark reviewed', 'An duba')),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(0, 48),
                                ),
                                onPressed: pending.contains(row.id)
                                    ? null
                                    : () => resolve(row, 'dismissed'),
                                child: Text(t('Dismiss', 'Rufe')),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
    );
  }
}
