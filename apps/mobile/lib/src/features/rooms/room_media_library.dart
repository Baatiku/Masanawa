import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'room_community_api.dart';

class RoomMediaPage {
  const RoomMediaPage(this.items, this.nextCursor);
  final List<Map<String, dynamic>> items;
  final String? nextCursor;
}

Future<RoomMediaPage> readRoomMediaPage(
  RoomCommunityApi api,
  String roomId, {
  String search = '',
  String kind = 'all',
  String? cursor,
}) async {
  final data = await api.request(roomId, 'GET', 'media', {
    'search': search,
    'kind': kind,
    if (cursor != null) 'cursor': cursor,
  });
  final next = data['nextCursor'];
  if (data['paginationVersion'] != 1 ||
      data['items'] is! List ||
      next != null && (next is! String || next.isEmpty || next.length > 1600)) {
    throw const FormatException('Invalid shared media page');
  }
  final items = <Map<String, dynamic>>[];
  for (final value in data['items'] as List) {
    if (value is! Map) throw const FormatException('Invalid shared media');
    final row = Map<String, dynamic>.from(value);
    bool identity(Object? v) => v is String && v.isNotEmpty && v.length <= 160;
    if (!identity(row['id']) ||
        !identity(row['sourcePostId']) ||
        row['sourceReplyId'] != null && !identity(row['sourceReplyId']) ||
        !const ['image', 'video', 'voice', 'doc'].contains(row['kind']) ||
        kind != 'all' && row['kind'] != kind ||
        row['name'] is! String ||
        (row['name'] as String).length > 180 ||
        row['createdAt'] is! String ||
        DateTime.tryParse(row['createdAt'] as String) == null ||
        row['sizeBytes'] is! int ||
        (row['sizeBytes'] as int) < 1 ||
        (row['sizeBytes'] as int) > 8000000 ||
        row.containsKey('dataBase64')) {
      throw const FormatException('Invalid shared media');
    }
    items.add(row);
  }
  return RoomMediaPage(items, next as String?);
}

/// Room Info -> Shared media -> authorized source thread. No persistent copies
/// or automatic byte downloads; the existing thread viewer owns attachment opens.
class RoomMediaLibrary extends StatefulWidget {
  const RoomMediaLibrary({
    super.key,
    required this.api,
    required this.roomId,
    required this.openPost,
  });
  final RoomCommunityApi api;
  final String roomId;
  final Future<void> Function(String postId) openPost;
  @override
  State<RoomMediaLibrary> createState() => _RoomMediaLibraryState();
}

class _RoomMediaLibraryState extends State<RoomMediaLibrary> {
  final search = TextEditingController();
  final scroll = ScrollController();
  final rows = <Map<String, dynamic>>[];
  final seenCursors = <String>{};
  Timer? debounce, membershipTimer;
  String kind = 'all';
  String? cursor, error;
  bool loading = true, paging = false, denied = false, opening = false;
  int generation = 0, pages = 1;
  static const labels = {
    'all': 'All',
    'image': 'Photos',
    'video': 'Videos',
    'voice': 'Audio',
    'doc': 'Files',
  };
  bool active(int read, RoomCommunityApi api) =>
      mounted && read == generation && identical(api, widget.api);
  bool accessError(Object e) =>
      e is StateError && e.message == 'account_changed' ||
      e is DioException &&
          const [401, 403, 404].contains(e.response?.statusCode);
  String message(Object e) => accessError(e)
      ? 'Shared media is unavailable. Your access may have changed.'
      : e is FormatException
      ? 'Shared media could not be verified. Refresh or update the app.'
      : 'Could not load shared media. Check your connection and retry.';
  void fail(Object e) {
    error = message(e);
    if (accessError(e)) {
      denied = true;
      rows.clear();
      cursor = null;
      seenCursors.clear();
      search.clear();
    }
  }

  @override
  void initState() {
    super.initState();
    reload();
    membershipTimer = Timer.periodic(
      const Duration(seconds: 20),
      (_) => checkMembership(),
    );
  }

  @override
  void didUpdateWidget(covariant RoomMediaLibrary oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.api, widget.api) ||
        oldWidget.roomId != widget.roomId) {
      generation++;
      debounce?.cancel();
      search.clear();
      kind = 'all';
      rows.clear();
      cursor = null;
      error = null;
      denied = false;
      opening = false;
      pages = 1;
      seenCursors.clear();
      reload();
    }
  }

  @override
  void dispose() {
    generation++;
    debounce?.cancel();
    membershipTimer?.cancel();
    search.dispose();
    scroll.dispose();
    super.dispose();
  }

  Future<void> membership(RoomCommunityApi api, String roomId) async {
    final room = await api.room(roomId);
    if (!room.joined)
      throw DioException(
        requestOptions: RequestOptions(),
        response: Response(requestOptions: RequestOptions(), statusCode: 403),
      );
  }

  Future<void> checkMembership() async {
    final read = generation, api = widget.api, id = widget.roomId;
    try {
      await membership(api, id);
    } catch (e) {
      if (active(read, api) && accessError(e))
        setState(() {
          generation++;
          loading = false;
          paging = false;
          opening = false;
          fail(e);
        });
    }
  }

  List<Map<String, dynamic>> unique(Iterable<Map<String, dynamic>> values) {
    final result = <String, Map<String, dynamic>>{};
    for (final row in values) {
      result[row['id'] as String] = row;
    }
    return result.values.toList();
  }

  Future<void> reload({int retainPages = 1}) async {
    final read = ++generation, api = widget.api, id = widget.roomId;
    final query = search.text.trim(), filter = kind;
    setState(() {
      loading = true;
      paging = false;
      error = null;
    });
    try {
      await membership(api, id);
      if (!active(read, api)) return;
      final values = <Map<String, dynamic>>[];
      final seen = <String>{};
      String? next;
      var count = 0;
      do {
        final page = await readRoomMediaPage(
          api,
          id,
          search: query,
          kind: filter,
          cursor: next,
        );
        if (!active(read, api)) return;
        if (page.nextCursor != null && !seen.add(page.nextCursor!))
          throw const FormatException('Repeated cursor');
        values.addAll(page.items);
        next = page.nextCursor;
        count++;
      } while (count < retainPages && next != null);
      setState(() {
        rows
          ..clear()
          ..addAll(unique(values));
        cursor = next;
        pages = count;
        denied = false;
        seenCursors
          ..clear()
          ..addAll(seen);
      });
    } catch (e) {
      if (active(read, api)) setState(() => fail(e));
    } finally {
      if (active(read, api)) setState(() => loading = false);
    }
  }

  void change() {
    generation++;
    debounce?.cancel();
    setState(() {
      rows.clear();
      cursor = null;
      error = null;
      loading = true;
      paging = false;
      pages = 1;
      seenCursors.clear();
    });
    if (scroll.hasClients) scroll.jumpTo(0);
    debounce = Timer(const Duration(milliseconds: 250), () => reload());
  }

  Future<void> older() async {
    final next = cursor;
    if (loading || paging || next == null || denied) return;
    final read = generation, api = widget.api, id = widget.roomId;
    final query = search.text.trim(), filter = kind;
    setState(() {
      paging = true;
      error = null;
    });
    try {
      await membership(api, id);
      if (!active(read, api)) return;
      final page = await readRoomMediaPage(
        api,
        id,
        search: query,
        kind: filter,
        cursor: next,
      );
      if (!active(read, api)) return;
      if (page.nextCursor != null && seenCursors.contains(page.nextCursor))
        throw const FormatException('Repeated cursor');
      setState(() {
        final all = unique([...rows, ...page.items]);
        rows
          ..clear()
          ..addAll(all);
        cursor = page.nextCursor;
        if (cursor != null) seenCursors.add(cursor!);
        pages++;
      });
    } catch (e) {
      if (active(read, api)) setState(() => fail(e));
    } finally {
      if (active(read, api)) setState(() => paging = false);
    }
  }

  Future<void> open(Map<String, dynamic> row) async {
    if (opening || loading || denied) return;
    final read = generation,
        api = widget.api,
        id = widget.roomId,
        callback = widget.openPost;
    setState(() {
      opening = true;
      error = null;
    });
    try {
      await membership(api, id);
      if (!active(read, api)) return;
      // The source thread reauthorizes and the existing media viewer performs
      // its own protected GET. Never trust a cached filename as byte authority.
      await callback(row['sourcePostId'] as String);
      if (active(read, api)) await reload(retainPages: pages);
    } catch (e) {
      if (active(read, api)) setState(() => fail(e));
    } finally {
      if (mounted && identical(api, widget.api) && id == widget.roomId)
        setState(() => opening = false);
    }
  }

  String date(Map<String, dynamic> row) =>
      DateTime.parse(row['createdAt'] as String)
          .toLocal()
          .toIso8601String()
          .substring(0, 10);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Shared media')),
    body: RefreshIndicator(
      onRefresh: () => reload(retainPages: pages),
      child: ListView(
        controller: scroll,
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            controller: search,
            maxLength: 100,
            decoration: InputDecoration(
              labelText: 'Search file names',
              suffixIcon: IconButton(
                tooltip: 'Clear search',
                onPressed: () {
                  search.clear();
                  change();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
            onChanged: (_) => change(),
          ),
          Wrap(
            spacing: 8,
            children: [
              for (final entry in labels.entries)
                ChoiceChip(
                  label: Text(entry.value),
                  selected: kind == entry.key,
                  onSelected: (_) {
                    if (kind != entry.key) {
                      kind = entry.key;
                      change();
                    }
                  },
                ),
            ],
          ),
          if (loading)
            const Padding(
              padding: EdgeInsets.all(24),
              child: Center(child: CircularProgressIndicator()),
            ),
          if (error != null) ...[
            Text(error!),
            TextButton(
              onPressed: loading || paging
                  ? null
                  : () => rows.isNotEmpty && cursor != null && !denied
                        ? older()
                        : reload(retainPages: pages),
              child: const Text('Retry'),
            ),
          ],
          if (!loading && !denied && error == null && rows.isEmpty)
            const Padding(
              padding: EdgeInsets.all(24),
              child: Text('No shared media matches.'),
            ),
          for (var i = 0; i < rows.length; i++) ...[
            if (i == 0 || date(rows[i]) != date(rows[i - 1]))
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  date(rows[i]),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ListTile(
              key: ValueKey(rows[i]['id']),
              contentPadding: EdgeInsets.zero,
              leading: Icon(switch (rows[i]['kind']) {
                'image' => Icons.photo_outlined,
                'video' => Icons.videocam_outlined,
                'voice' => Icons.audiotrack,
                _ => Icons.insert_drive_file_outlined,
              }),
              title: Text(rows[i]['name'] as String),
              subtitle: Text(
                '${labels[rows[i]['kind']]} · ${rows[i]['sizeBytes']} bytes${rows[i]['sourceReplyId'] == null ? '' : ' · Comment attachment'}',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: opening || loading || denied ? null : () => open(rows[i]),
            ),
          ],
          if (rows.isNotEmpty)
            const Text(
              'Select a file to view its post and open the attachment.',
            ),
          if (opening || paging)
            const Center(child: CircularProgressIndicator()),
          if (cursor != null && !denied)
            TextButton(
              onPressed: loading || paging || opening ? null : older,
              child: const Text('Load older media'),
            ),
        ],
      ),
    ),
  );
}
