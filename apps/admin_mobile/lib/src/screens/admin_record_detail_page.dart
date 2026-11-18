import 'package:flutter/material.dart';

/// Full-page, read-only admin records. No popup height limits, no extra API
/// calls on unrelated rebuilds, and an explicit retry/refresh path.
class AdminRecordDetailPage<T> extends StatefulWidget {
  const AdminRecordDetailPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.emptyTitle,
    required this.load,
    required this.itemBuilder,
  });

  final String title;
  final String subtitle;
  final String emptyTitle;
  final Future<List<T>> Function() load;
  final Widget Function(BuildContext context, T record) itemBuilder;

  @override
  State<AdminRecordDetailPage<T>> createState() =>
      _AdminRecordDetailPageState<T>();
}

class _AdminRecordDetailPageState<T> extends State<AdminRecordDetailPage<T>> {
  late Future<List<T>> _future;

  @override
  void initState() {
    super.initState();
    _future = widget.load();
  }

  Future<void> _retry() async {
    final future = widget.load();
    setState(() => _future = future);
    try {
      await future;
    } catch (_) {
      // The FutureBuilder owns visible error/retry feedback.
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: SafeArea(
          child: FutureBuilder<List<T>>(
            future: _future,
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return Semantics(
                  label: 'Loading ${widget.title}',
                  liveRegion: true,
                  child: ExcludeSemantics(
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Card(
                          child: ListTile(
                            leading: const CircleAvatar(child: Icon(Icons.more_horiz)),
                            title: Container(height: 14, color: Theme.of(context).dividerColor),
                            subtitle: Container(height: 12, color: Theme.of(context).dividerColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.cloud_off_outlined, size: 46),
                        const SizedBox(height: 12),
                        const Text(
                          'Could not load records. Check your connection.',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 14),
                        OutlinedButton.icon(
                          onPressed: _retry,
                          icon: const Icon(Icons.refresh),
                          label: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                );
              }
              final items = snapshot.data ?? const [];
              return RefreshIndicator(
                onRefresh: _retry,
                child: ListView.builder(
                  key: PageStorageKey<String>(
                    'admin-records-${widget.title}-${widget.subtitle}',
                  ),
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                  itemCount: items.isEmpty ? 2 : items.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.title,
                                style: Theme.of(context).textTheme.titleLarge),
                            const SizedBox(height: 6),
                            Text(widget.subtitle,
                                style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                      );
                    }
                    if (items.isEmpty) {
                      return Card(
                        child: ListTile(
                          leading: const Icon(Icons.inbox_outlined),
                          title: Text(widget.emptyTitle),
                        ),
                      );
                    }
                    return widget.itemBuilder(context, items[index - 1]);
                  },
                ),
              );
            },
          ),
        ),
      );
}
