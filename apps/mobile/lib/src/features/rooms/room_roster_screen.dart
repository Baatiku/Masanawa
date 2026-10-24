import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'room_community_api.dart';
import 'room_identity.dart';

class RoomRosterPage {
  const RoomRosterPage(this.items, this.nextCursor);
  final List<Map<String, dynamic>> items;
  final String? nextCursor;
}

Future<RoomRosterPage> readRoomRoster(
  RoomCommunityApi api,
  String id, {
  String search = '',
  String? cursor,
  bool bannedOnly = false,
}) async {
  final result = await api.request(id, 'GET', 'members/page', {
    'search': search,
    if (bannedOnly) 'state': 'banned',
    if (cursor != null) 'cursor': cursor,
  });
  final next = result['nextCursor'];
  if (result['paginationVersion'] != 1 ||
      result['items'] is! List ||
      next != null && (next is! String || next.isEmpty || next.length > 1000))
    throw const FormatException('Invalid roster page');
  final rows = <Map<String, dynamic>>[];
  for (final value in result['items'] as List) {
    if (value is! Map) throw const FormatException('Invalid member');
    final row = Map<String, dynamic>.from(value);
    if (row['userId'] is! String ||
        (row['userId'] as String).isEmpty ||
        (row['userId'] as String).length > 160 ||
        !const [
          'owner',
          'admin',
          'moderator',
          'member',
        ].contains(row['role']) ||
        row['state'] != (bannedOnly ? 'banned' : 'active') ||
        bannedOnly &&
            (row['membershipVersion'] is! String ||
                !RegExp(r'^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\.\d{6}Z$')
                    .hasMatch(row['membershipVersion'] as String)) ||
        row['displayName'] != null && row['displayName'] is! String ||
        row['handle'] != null && row['handle'] is! String)
      throw const FormatException('Invalid member');
    rows.add(row);
  }
  return RoomRosterPage(rows, next as String?);
}

/// Room Info -> All members; the canonical manager callback retains authority.
class RoomRosterScreen extends StatefulWidget {
  const RoomRosterScreen({
    super.key,
    required this.api,
    required this.roomId,
    this.onManage,
    this.bannedOnly = false,
  });
  final RoomCommunityApi api;
  final String roomId;
  final bool bannedOnly;
  final Future<void> Function(Map<String, dynamic> member, String action)?
  onManage;
  @override
  State<RoomRosterScreen> createState() => _RoomRosterState();
}

class _RoomRosterState extends State<RoomRosterScreen> {
  final search = TextEditingController(), scroll = ScrollController();
  final rows = <Map<String, dynamic>>[], seen = <String>{};
  CommunityRoom? room;
  Timer? debounce, catchup;
  String? cursor, error;
  int generation = 0, pages = 1;
  bool loading = true, paging = false, busy = false, uncertain = false;
  bool current(int read, RoomCommunityApi api) =>
      mounted && read == generation && identical(api, widget.api);
  bool denied(Object e) =>
      e is StateError && e.message == 'account_changed' ||
      e is DioException &&
          const [401, 403, 404].contains(e.response?.statusCode);
  void fail(Object e) {
    error = denied(e)
        ? 'Members are unavailable. Your access may have changed.'
        : e is FormatException
        ? 'The member list could not be verified. Refresh or update the app.'
        : 'Could not load members. Check your connection and retry.';
    if (denied(e)) {
      rows.clear();
      room = null;
      cursor = null;
      seen.clear();
      search.clear();
      uncertain = true;
    }
  }

  @override
  void initState() {
    super.initState();
    reload();
    catchup = Timer.periodic(const Duration(seconds: 20), (_) => verify());
  }

  @override
  void didUpdateWidget(covariant RoomRosterScreen old) {
    super.didUpdateWidget(old);
    if (!identical(old.api, widget.api) ||
        old.roomId != widget.roomId ||
        old.bannedOnly != widget.bannedOnly) {
      generation++;
      debounce?.cancel();
      search.clear();
      rows.clear();
      room = null;
      cursor = null;
      seen.clear();
      pages = 1;
      busy = false;
      uncertain = false;
      reload();
    }
  }

  @override
  void dispose() {
    generation++;
    debounce?.cancel();
    catchup?.cancel();
    search.dispose();
    scroll.dispose();
    super.dispose();
  }

  Future<CommunityRoom> membership(RoomCommunityApi api, String id) async {
    final fresh = await api.room(id);
    if (!fresh.joined || widget.bannedOnly && !fresh.manages)
      throw DioException(
        requestOptions: RequestOptions(),
        response: Response(requestOptions: RequestOptions(), statusCode: 403),
      );
    return fresh;
  }

  Future<void> verify() async {
    final read = generation, api = widget.api;
    try {
      final fresh = await membership(api, widget.roomId);
      if (current(read, api)) setState(() => room = fresh);
    } catch (e) {
      if (current(read, api) && denied(e))
        setState(() {
          generation++;
          loading = false;
          paging = false;
          busy = false;
          fail(e);
        });
    }
  }

  List<Map<String, dynamic>> unique(Iterable<Map<String, dynamic>> data) {
    final result = <String, Map<String, dynamic>>{};
    for (final row in data) {
      result[row['userId'] as String] = row;
    }
    return result.values.toList();
  }

  Future<void> reload({int retainPages = 1}) async {
    final read = ++generation,
        api = widget.api,
        id = widget.roomId,
        query = search.text.trim();
    setState(() {
      loading = true;
      paging = false;
      error = null;
    });
    try {
      final fresh = await membership(api, id);
      if (!current(read, api)) return;
      final values = <Map<String, dynamic>>[], cursors = <String>{};
      String? next;
      var count = 0;
      do {
        final page = await readRoomRoster(
          api,
          id,
          bannedOnly: widget.bannedOnly,
          search: query,
          cursor: next,
        );
        if (!current(read, api)) return;
        if (page.nextCursor != null && !cursors.add(page.nextCursor!))
          throw const FormatException('Repeated cursor');
        values.addAll(page.items);
        next = page.nextCursor;
        count++;
      } while (count < retainPages && next != null);
      setState(() {
        room = fresh;
        rows
          ..clear()
          ..addAll(unique(values));
        seen
          ..clear()
          ..addAll(cursors);
        cursor = next;
        pages = count;
        uncertain = false;
      });
    } catch (e) {
      if (current(read, api)) setState(() => fail(e));
    } finally {
      if (current(read, api)) setState(() => loading = false);
    }
  }

  void change() {
    generation++;
    debounce?.cancel();
    setState(() {
      rows.clear();
      cursor = null;
      seen.clear();
      pages = 1;
      loading = true;
      paging = false;
      error = null;
    });
    if (scroll.hasClients) scroll.jumpTo(0);
    debounce = Timer(const Duration(milliseconds: 250), () => reload());
  }

  Future<void> older() async {
    final next = cursor;
    if (next == null || loading || paging || busy) return;
    final read = generation,
        api = widget.api,
        id = widget.roomId,
        query = search.text.trim();
    setState(() {
      paging = true;
      error = null;
    });
    try {
      final fresh = await membership(api, id);
      if (!current(read, api)) return;
      final page = await readRoomRoster(
        api,
        id,
        bannedOnly: widget.bannedOnly,
        search: query,
        cursor: next,
      );
      if (!current(read, api)) return;
      if (page.nextCursor != null && seen.contains(page.nextCursor))
        throw const FormatException('Repeated cursor');
      setState(() {
        room = fresh;
        final all = unique([...rows, ...page.items]);
        rows
          ..clear()
          ..addAll(all);
        cursor = page.nextCursor;
        if (cursor != null) seen.add(cursor!);
        pages++;
      });
    } catch (e) {
      if (current(read, api)) setState(() => fail(e));
    } finally {
      if (current(read, api)) setState(() => paging = false);
    }
  }

  bool manages(Map<String, dynamic> person) =>
      widget.onManage != null &&
      room?.manages == true &&
      person['role'] != 'owner' &&
      (room?.role == 'owner' || person['role'] != 'admin');
  Future<void> manage(Map<String, dynamic> person, String action) async {
    if (busy || loading || uncertain || !manages(person)) return;
    final read = generation,
        api = widget.api,
        id = widget.roomId,
        callback = widget.onManage!;
    setState(() {
      busy = true;
      error = null;
    });
    try {
      // The Info callback confirms and fences the captured account/Room/target.
      await callback(Map<String, dynamic>.unmodifiable(person), action);
      if (current(read, api)) await reload(retainPages: pages);
    } catch (e) {
      if (current(read, api))
        setState(() {
          uncertain = true;
          fail(e);
          if (!denied(e)) error = 'Could not confirm the member change. Refresh members before managing them again.';
        });
    } finally {
      if (mounted && identical(api, widget.api) && id == widget.roomId)
        setState(() => busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(
        widget.bannedOnly ? 'Banned members' : 'Room members',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    body: RefreshIndicator(
      onRefresh: () => busy ? Future<void>.value() : reload(retainPages: pages),
      child: ListView(
        controller: scroll,
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            controller: search,
            maxLength: 100,
            enabled: !busy,
            decoration: InputDecoration(
              labelText: 'Search names or handles',
              suffixIcon: IconButton(
                tooltip: 'Clear member search',
                onPressed: busy
                    ? null
                    : () {
                        search.clear();
                        change();
                      },
                icon: const Icon(Icons.clear),
              ),
            ),
            onChanged: (_) => change(),
          ),
          Text(
            widget.bannedOnly
                ? 'Unbanning lets this person request to rejoin. It does not restore access or revive old invitations. Only visible active accounts appear here.'
                : 'Only current visible members appear here.',
          ),
          if (loading)
            const Padding(
              padding: EdgeInsets.all(24),
              child: Center(child: CircularProgressIndicator()),
            ),
          if (error != null) ...[
            Text(error!),
            TextButton(
              onPressed: loading || paging || busy
                  ? null
                  : () => uncertain || rows.isEmpty || cursor == null
                        ? reload(retainPages: pages)
                        : older(),
              child: const Text('Retry'),
            ),
          ],
          if (!loading && error == null && rows.isEmpty)
            Text(
              widget.bannedOnly
                  ? 'No banned members match this search.'
                  : 'No members match this search.',
            ),
          for (final person in rows)
            ListTile(
              key: ValueKey(person['userId']),
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(child: Icon(Icons.person_outline)),
              title: Text(roomVisibleIdentity(person)),
              subtitle: Text(
                widget.bannedOnly
                    ? 'Banned · no Room access'
                    : '${person['role']}',
              ),
              trailing: manages(person)
                  ? PopupMenuButton<String>(
                      tooltip: 'Manage member',
                      enabled: !busy && !loading && !uncertain,
                      onSelected: (action) => manage(person, action),
                      itemBuilder: (_) => widget.bannedOnly
                          ? [
                              const PopupMenuItem(
                                value: 'unban',
                                child: Text('Unban member'),
                              ),
                            ]
                          : [
                              if (room?.role == 'owner') ...[
                                PopupMenuItem(
                                  value: person['role'] == 'admin'
                                      ? 'member'
                                      : 'admin',
                                  child: Text(
                                    person['role'] == 'admin'
                                        ? 'Make member'
                                        : 'Make admin',
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 'transfer',
                                  child: Text('Offer ownership'),
                                ),
                              ],
                              const PopupMenuItem(
                                value: 'left',
                                child: Text('Remove member'),
                              ),
                              const PopupMenuItem(
                                value: 'banned',
                                child: Text('Ban member'),
                              ),
                            ],
                    )
                  : null,
            ),
          if (paging) const Center(child: CircularProgressIndicator()),
          if (busy) const Text('Waiting for confirmation…'),
          if (cursor != null)
            TextButton(
              onPressed: loading || paging || busy ? null : older,
              child: const Text('Load more members'),
            ),
        ],
      ),
    ),
  );
}
