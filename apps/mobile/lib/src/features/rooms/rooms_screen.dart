import 'package:flutter/material.dart';

import 'room_community_api.dart';
import 'room_community_screen.dart';

/// The single Rooms product: user-created broadcast or discussion communities.
class RoomsScreen extends StatefulWidget {
  const RoomsScreen({super.key, required this.api, this.protectDetail});
  final RoomCommunityApi api;
  final Widget Function(BuildContext, Widget)? protectDetail;
  @override
  State<RoomsScreen> createState() => _RoomsState();
}

class _RoomsState extends State<RoomsScreen> {
  final search = TextEditingController();
  List<CommunityRoom> rooms = [];
  List<Map<String, dynamic>> invitations = [];
  bool joined = true, loading = true, accepting = false;
  Object? error;
  Object? invitationsError;
  int generation = 0, invitationOperation = 0;
  Object? invitationActionError;
  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  void didUpdateWidget(covariant RoomsScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.api, widget.api)) {
      // A new account-scoped API must never display the previous identity's
      // private rooms or invitations while its authorized refresh is pending.
      generation++;
      invitationOperation++;
      invitationActionError = null;
      rooms = [];
      invitations = [];
      invitationsError = null;
      error = null;
      accepting = false;
      joined = true;
      search.clear();
      load();
    }
  }

  @override
  void dispose() {
    generation++;
    invitationOperation++;
    search.dispose();
    super.dispose();
  }

  Future<void> load() async {
    final version = ++generation;
    setState(() {
      loading = true;
      error = null;
    });
    try {
      final result = await widget.api.list(joined);
      if (!mounted || version != generation) return;
      // Rooms remain usable even when the independent invitations endpoint
      // fails; invitation failure is not a zero-room result.
      setState(() {
        rooms = result;
        loading = false;
      });
    } catch (e) {
      if (mounted && version == generation) {
        setState(() {
          rooms = [];
          error = e;
          loading = false;
        });
      }
    }
    if (!mounted || version != generation) return;
    try {
      final pending = await widget.api.invitations();
      if (!mounted || version != generation) return;
      setState(() {
        invitations = pending;
        invitationsError = null;
      });
    } catch (e) {
      if (mounted && version == generation) {
        setState(() {
          invitations = [];
          invitationsError = e;
        });
      }
    }
  }

  Future<T?> open<T>(Widget detail) => Navigator.push<T>(
    context,
    MaterialPageRoute(
      builder: (routeContext) =>
          widget.protectDetail?.call(routeContext, detail) ?? detail,
    ),
  );
  Future<void> enter(String id) async {
    await open<void>(
      RoomCommunityScreen(
        api: widget.api,
        roomId: id,
        protectDetail: widget.protectDetail,
      ),
    );
    if (mounted) load();
  }

  Future<void> create() async {
    final api = widget.api, version = generation;
    final room = await open<CommunityRoom>(CreateCommunityRoomScreen(api: api));
    if (mounted &&
        room != null &&
        identical(api, widget.api) &&
        version == generation) {
      await enter(room.id);
    }
  }

  Future<void> decline(Map<String, dynamic> invite) async {
    if (accepting) return;
    final api = widget.api;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Decline invitation?'),
        content: const Text(
          'You will not join this Room. Private Rooms need a new invitation if you change your mind.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Decline invitation'),
          ),
        ],
      ),
    );
    if (mounted && identical(api, widget.api) && confirmed == true) {
      await respond(invite, decline: true);
    }
  }

  Future<void> accept(Map<String, dynamic> invite) => respond(invite);

  Future<void> respond(
    Map<String, dynamic> invite, {
    bool decline = false,
  }) async {
    if (accepting) return;
    final roomId = invite['roomId'], inviteId = invite['inviteId'];
    if (roomId is! String ||
        roomId.isEmpty ||
        inviteId is! String ||
        inviteId.isEmpty) {
      setState(() => invitationActionError = StateError('invalid_invitation'));
      return;
    }
    final api = widget.api, operation = ++invitationOperation;
    bool current() =>
        mounted &&
        identical(api, widget.api) &&
        operation == invitationOperation;
    setState(() {
      accepting = true;
      invitationActionError = null;
    });
    try {
      await api.action(
        roomId,
        decline
            ? 'invitations/${Uri.encodeComponent(inviteId)}/decline'
            : 'join',
        decline ? null : {'inviteId': inviteId},
      );
      if (!current()) return;
      // Remove only after acknowledgement. A timeout keeps the exact invitation
      // available for an idempotent retry, without pretending membership changed.
      setState(
        () => invitations = invitations
            .where(
              (item) =>
                  item['inviteId'] != inviteId || item['roomId'] != roomId,
            )
            .toList(),
      );
      if (decline) {
        await load();
      } else {
        await enter(roomId);
      }
    } catch (e) {
      if (current()) setState(() => invitationActionError = e);
    } finally {
      // List refresh/navigation increments generation; it must not leave all
      // invitation actions permanently disabled after returning from a Room.
      if (current()) setState(() => accepting = false);
    }
  }

  Widget invitationTile(Map<String, dynamic> invite) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${invite['name']}',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const Text('Room invitation'),
        if (invite['expiresAt'] is String)
          Text('Expires ${invite['expiresAt']}'),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: [
            TextButton(
              onPressed: accepting ? null : () => accept(invite),
              child: const Text('Accept'),
            ),
            TextButton(
              onPressed: accepting ? null : () => decline(invite),
              child: const Text('Decline'),
            ),
          ],
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    final query = search.text.trim().toLowerCase();
    final visible = rooms
        .where(
          (r) => '${r.name} ${r.description}'.toLowerCase().contains(query),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rooms'),
        actions: [
          IconButton(
            tooltip: 'Create Room',
            onPressed: create,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: load,
        child: CustomScrollView(
          key: PageStorageKey('rooms-${joined ? 'joined' : 'discover'}'),
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextField(
                      controller: search,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search Rooms',
                      ),
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: [
                        ChoiceChip(
                          label: const Text('Joined'),
                          selected: joined,
                          onSelected: (_) {
                            setState(() => joined = true);
                            load();
                          },
                        ),
                        ChoiceChip(
                          label: const Text('Discover'),
                          selected: !joined,
                          onSelected: (_) {
                            setState(() => joined = false);
                            load();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => invitationTile(invitations[index]),
                childCount: invitations.length,
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  if (accepting) const LinearProgressIndicator(),
                  if (invitationActionError != null)
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(communityError(invitationActionError!)),
                    ),
                  if (error != null)
                    ListTile(
                      title: Text(communityError(error!)),
                      trailing: TextButton(
                        onPressed: load,
                        child: const Text('Retry'),
                      ),
                    ),
                  if (invitationsError != null)
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          const Text('Room invitations unavailable'),
                          const Text('Your Rooms are still available.'),
                          TextButton(
                            onPressed: load,
                            child: const Text('Retry invitations'),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            if (loading)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Center(child: CircularProgressIndicator()),
                ),
              )
            else if (visible.isEmpty)
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Text(
                        joined
                            ? 'Create or discover a Room'
                            : 'No Rooms match this search',
                      ),
                      TextButton(
                        onPressed: joined ? create : load,
                        child: Text(joined ? 'Create Room' : 'Refresh'),
                      ),
                    ],
                  ),
                ),
              )
            else
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final r = visible[index];
                  return ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.groups_outlined),
                    ),
                    title: Text(r.name),
                    subtitle: Text(
                      '${r.memberCount} members · ${r.visibility}',
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (r.pinned) const Icon(Icons.push_pin_outlined),
                        if (r.muted)
                          const Icon(Icons.notifications_off_outlined),
                        if (r.unreadCount > 0)
                          Badge(label: Text('${r.unreadCount}')),
                      ],
                    ),
                    onTap: () => enter(r.id),
                  );
                }, childCount: visible.length),
              ),
          ],
        ),
      ),
    );
  }
}
