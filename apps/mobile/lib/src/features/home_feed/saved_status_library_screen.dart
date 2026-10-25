import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../agents/agent_directory.dart';
import 'feed_api.dart';
import 'status_post_author_header.dart';

/// Private, server-authoritative saved Masana Status collection.
/// The app never retains a cross-account/offline copy of these items.
class SavedStatusLibraryScreen extends StatefulWidget {
  const SavedStatusLibraryScreen({
    super.key,
    required this.api,
    required this.accountKey,
    required this.isAccountCurrent,
    required this.openPost,
    this.authorDirectory = const {},
  });

  final SavedStatusLibraryApi api;
  final String accountKey;
  final bool Function() isAccountCurrent;
  final Future<void> Function(FeedPost) openPost;
  final Map<String, AgentDirectoryEntry> authorDirectory;

  @override
  State<SavedStatusLibraryScreen> createState() =>
      _SavedStatusLibraryScreenState();
}

class _SavedStatusLibraryScreenState extends State<SavedStatusLibraryScreen> {
  List<SavedStatusItem> items = [];
  String? cursor;
  String? error;
  bool loading = false;
  bool loadingMore = false;
  bool offline = false;
  int epoch = 0;
  final Set<String> pending = {};

  bool get current => widget.accountKey.isNotEmpty && widget.isAccountCurrent();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) refresh();
    });
  }

  @override
  void didUpdateWidget(covariant SavedStatusLibraryScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.accountKey != widget.accountKey ||
        oldWidget.api != widget.api) {
      epoch++;
      items = [];
      cursor = null;
      error = null;
      pending.clear();
      loading = false;
      loadingMore = false;
      if (current) refresh();
    }
  }

  @override
  void dispose() {
    epoch++;
    super.dispose();
  }

  Future<void> refresh() async {
    if (!current) return;
    final ticket = ++epoch;
    setState(() {
      loading = true;
      loadingMore = false;
      pending.clear();
      // A saved item may have become private, retired or blocked since the last
      // read. Never keep old content visible while authorization is unknown.
      items = [];
      cursor = null;
      error = null;
    });
    try {
      final page = await widget.api.saved();
      if (!mounted || ticket != epoch || !current) return;
      setState(() {
        items = page.items;
        cursor = page.nextCursor;
        loading = false;
        offline = false;
      });
    } catch (e) {
      if (!mounted || ticket != epoch || !current) return;
      setState(() {
        loading = false;
        offline =
            e is DioException &&
            (e.type == DioExceptionType.connectionError ||
                e.type == DioExceptionType.connectionTimeout);
        items = [];
        cursor = null;
        error = 'Saved items could not be refreshed.';
      });
    }
  }

  Future<void> nextPage() async {
    if (!current || loading || loadingMore || cursor == null) return;
    final ticket = epoch;
    final after = cursor;
    setState(() {
      loadingMore = true;
      error = null;
    });
    try {
      final page = await widget.api.saved(cursor: after);
      if (!mounted || ticket != epoch || !current) return;
      setState(() {
        final ids = items.map((item) => '${item.isPost}-${item.id}').toSet();
        items = [
          ...items,
          ...page.items.where((item) => ids.add('${item.isPost}-${item.id}')),
        ];
        cursor = page.nextCursor;
        loadingMore = false;
      });
    } catch (e) {
      if (!mounted || ticket != epoch || !current) return;
      setState(() {
        loadingMore = false;
        // Failure to revalidate continuation cannot license stale bookmarks.
        items = [];
        cursor = null;
        offline =
            e is DioException &&
            (e.type == DioExceptionType.connectionError ||
                e.type == DioExceptionType.connectionTimeout);
        error = 'Could not load more saved items.';
      });
    }
  }

  Future<void> remove(SavedStatusItem item) async {
    if (!current || pending.contains(item.id)) return;
    final consent = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Remove saved item?'),
        content: const Text(
          'This only removes your bookmark, not the original post.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Remove'),
          ),
        ],
      ),
    );
    if (consent != true || !mounted || !current) return;
    final ticket = epoch;
    setState(() => pending.add(item.id));
    try {
      await widget.api.removeSaved(item);
      if (!mounted || ticket != epoch || !current) return;
      setState(
        () => items.removeWhere(
          (row) => row.id == item.id && row.isPost == item.isPost,
        ),
      );
    } catch (_) {
      if (!mounted || ticket != epoch || !current) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Removal not confirmed. Refresh and retry.'),
        ),
      );
    } finally {
      if (mounted && ticket == epoch && current) {
        setState(() => pending.remove(item.id));
      }
    }
  }

  Future<void> open(SavedStatusItem item) async {
    if (!current) return;
    try {
      if (item.post != null) {
        await widget.openPost(item.post!);
      }
    } catch (_) {
      if (!mounted || !current) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('This saved item is unavailable.')),
      );
    }
    if (mounted && current) await refresh();
  }

  @override
  Widget build(BuildContext context) {
    if (!current) {
      return const Scaffold(
        body: Center(
          child: Text(
            'Account changed. Reopen Status to see your saved items.',
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Saved')),
      body: SafeArea(
        child: Column(
          children: [
            if (loading) const LinearProgressIndicator(),
            if (offline)
              const ListTile(
                leading: Icon(Icons.wifi_off_outlined),
                title: Text('Offline. Saved items are not available offline.'),
              ),
            if (error != null)
              MaterialBanner(
                content: Text(error!),
                actions: [
                  TextButton(
                    onPressed: loading
                        ? null
                        : (items.isNotEmpty ? nextPage : refresh),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            Expanded(
              child: loading && items.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : RefreshIndicator(
                      onRefresh: refresh,
                      child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: items.length + 1,
                        itemBuilder: (context, index) {
                          if (index >= items.length) {
                            if (cursor != null) {
                              return Center(
                                child: TextButton(
                                  onPressed: loadingMore ? null : nextPage,
                                  child: Text(
                                    loadingMore ? 'Loading…' : 'Load more',
                                  ),
                                ),
                              );
                            }
                            return items.isEmpty
                                ? const Padding(
                                    padding: EdgeInsets.all(32),
                                    child: Center(
                                      child: Text('No saved posts yet.'),
                                    ),
                                  )
                                : const SizedBox.shrink();
                          }
                          final item = items[index];
                          final description = item.post?.body ?? '';
                          final canOpen = item.isPost;
                          return Card(
                            key: ValueKey('saved-${item.isPost}-${item.id}'),
                            margin: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 5,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (item.post != null)
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 4),
                                    child: StatusPostAuthorHeader(
                                      post: item.post!,
                                      agent: widget.authorDirectory[
                                          item.post!.authorMasanaId],
                                    ),
                                  ),
                                InkWell(
                                  onTap: canOpen ? () => open(item) : null,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(14, 6, 14, 6),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Text(description, maxLines: 4,
                                        overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton.icon(
                                      onPressed: pending.contains(item.id)
                                          ? null
                                          : () => remove(item),
                                      icon: const Icon(
                                        Icons.bookmark_remove_outlined,
                                      ),
                                      label: const Text('Remove'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
