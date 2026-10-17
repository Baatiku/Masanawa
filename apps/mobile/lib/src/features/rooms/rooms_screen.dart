import 'dart:async';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../agents/masana_portrait_avatar.dart';
import '../../ui/components/masanawa_list_skeleton.dart';
import '../../theme/masanawa_theme.dart';
import 'room_discussion_api.dart';
import 'room_membership_client.dart';
import 'room_membership_screen.dart';
import 'rooms_client.dart';
import 'saved_lessons_client.dart';
import 'saved_lessons_screen.dart';

String cleanProfessionTitle(String rawTitle) {
  final clean = rawTitle.trim();
  // Strip patterns like "Prof. Sadiq's ... Room" or "Dr. Amina's ... Classroom"
  final regex = RegExp(
    r"^(?:(?:Prof\.|Dr\.|Engr\.|Arc\.|Pharm\.|Nurse|Barr\.|Ustazah|Madam|Mallam|Malamah)\s+[A-Za-z\s]+'s\s+)(.+?)(?:\s+(?:Room|Lab|Chamber|Workshop|Studio|Academy|Hub|School|Majlis|Classroom))?$",
    caseSensitive: false,
  );
  final match = regex.firstMatch(clean);
  if (match != null && match.group(1) != null && match.group(1)!.trim().isNotEmpty) {
    return match.group(1)!.trim();
  }
  // Strip trailing " Room" or " Lab"
  final trailing = RegExp(r"\s+(?:Room|Lab|Classroom)$", caseSensitive: false);
  return clean.replaceAll(trailing, '').trim();
}

/// Host session must guard details pushed beyond the account-keyed tab.
typedef RoomDetailProtector = Widget Function(BuildContext routeContext, Widget detail);

String roomError(Object e) {
  if (e is StateError && e.message == 'account_changed') return 'Session changed. Sign in again.';
  if (e is DioException) {
    if (e.response?.statusCode == 403) return 'Membership or verified subscription required.';
    if (e.response?.statusCode == 410) return 'This feature is currently disabled.';
    if (e.type == DioExceptionType.connectionError || e.type == DioExceptionType.connectionTimeout) {
      return 'Offline. Retry after reconnecting.';
    }
  }
  return 'Could not load. Check the network and retry.';
}

class RoomsScreen extends StatefulWidget {
  const RoomsScreen({
    super.key,
    required this.client,
    this.discussionApi,
    this.discussionAccountScope,
    this.onDiscussionReport,
    this.savedLessonsClient,
    this.savedLessonsAccountKey,
    this.membershipClient,
    this.protectDetail,
  });

  final RoomsClient client;
  final RoomDiscussionApi? discussionApi;
  final String? discussionAccountScope;
  final ValueChanged<RoomDiscussionReply>? onDiscussionReport;
  final SavedLessonsClient? savedLessonsClient;
  final String? savedLessonsAccountKey;
  final RoomMembershipClient? membershipClient;
  final RoomDetailProtector? protectDetail;

  @override
  State<RoomsScreen> createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _resolvedDefaultTab = false;
  bool _applyingInitialTab = false;
  bool loading = true;
  Object? error;
  List<RoomInfo> rows = [];
  int _loadVersion = 0;
  Timer? _searchDebounce;
  final TextEditingController _searchController = TextEditingController();
  String query = '', language = '';

  bool get joined => _tabController.index == 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    _tabController.addListener(_onTabChanged);
    _initAndLoad();
  }

  void _onTabChanged() {
    if (_applyingInitialTab || _tabController.indexIsChanging) return;
    load();
  }

  @override
  void dispose() {
    _searchDebounce?.cancel();
    _searchController.dispose();
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _initAndLoad() async {
    final version = ++_loadVersion;
    setState(() { loading = true; error = null; });
    try {
      final joinedList = await widget.client.list(joined: true, query: query, language: language);
      if (!mounted || version != _loadVersion) return;
      final hasJoinedRooms = joinedList.any((r) => r.joined);
      if (!_resolvedDefaultTab) {
        _resolvedDefaultTab = true;
        if (!hasJoinedRooms) {
          _applyingInitialTab = true;
          _tabController.index = 1;
          _applyingInitialTab = false;
          final discoverList = await widget.client.list(joined: false, query: query, language: language);
          if (mounted && version == _loadVersion) {
            setState(() { rows = discoverList; loading = false; });
          }
          return;
        }
      }
      setState(() { rows = joinedList; loading = false; });
    } catch (e) {
      if (mounted && version == _loadVersion) setState(() { error = e; loading = false; });
    }
  }

  Future<void> load() async {
    final version = ++_loadVersion;
    setState(() { loading = true; error = null; });
    try {
      final list = await widget.client.list(joined: joined, query: query, language: language);
      if (mounted && version == _loadVersion) setState(() { rows = list; loading = false; });
    } catch (e) {
      if (mounted && version == _loadVersion) setState(() { error = e; loading = false; });
    }
  }

  void _openRoomDetail(RoomInfo r) async {
    if (r.joined) {
      // Existing member navigates directly into the Room Channel Chat
      await _navigateToChat(r.id);
    } else {
      // Show compact Room Info Card
      _showCompactJoinSheet(r);
    }
  }

  Future<void> _navigateToChat(String roomId) async {
    await Navigator.push<void>(context, MaterialPageRoute(builder: (routeContext) {
      final detail = RoomHomeScreen(
        client: widget.client,
        id: roomId,
        discussionApi: widget.discussionApi,
        discussionAccountScope: widget.discussionAccountScope,
        onDiscussionReport: widget.onDiscussionReport,
        savedLessonsClient: widget.savedLessonsClient,
        savedLessonsAccountKey: widget.savedLessonsAccountKey,
        membershipClient: widget.membershipClient,
      );
      return widget.protectDetail?.call(routeContext, detail) ?? detail;
    }));
    if (mounted) load();
  }

  void _showCompactJoinSheet(RoomInfo r) {
    final u = context.masanawa;
    final profession = cleanProfessionTitle(r.title);

    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (sheetContext) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: u.structuralBorder,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                MasanaPortraitAvatar(displayName: r.teacher, size: 54),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profession,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: u.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'Teacher: ${r.teacher}',
                        style: TextStyle(fontSize: 13, color: u.textMuted),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        '${r.members} members · ${r.language.toUpperCase()}',
                        style: TextStyle(fontSize: 12, color: u.textMuted),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              decoration: BoxDecoration(
                color: u.surfaceMuted,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    r.paid ? Icons.verified_rounded : Icons.check_circle_outline,
                    color: u.brand,
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      r.paid
                          ? 'Paid Room · 7-Day Free Trial (renews monthly)'
                          : 'Free Access · Open learning room',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: u.brandStrong,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: u.brand,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () async {
                Navigator.pop(sheetContext);
                try {
                  await widget.client.join(r.id);
                  if (mounted) await _navigateToChat(r.id);
                } catch (e) {
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(roomError(e))),
                    );
                  }
                }
              },
              child: Text(r.paid ? 'Subscribe & Join' : 'Join free Room'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: AppBar(
        title: const Text('Rooms'),
        backgroundColor: u.surfaceCard,
        foregroundColor: u.textPrimary,
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          labelColor: u.brandStrong,
          unselectedLabelColor: u.textMuted,
          indicatorColor: u.brandStrong,
          indicatorWeight: 3,
          labelStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          tabs: const [
            Tab(text: 'Joined'),
            Tab(text: 'Discover'),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: query.isEmpty ? null : IconButton(
                        tooltip: 'Clear search',
                        icon: const Icon(Icons.clear),
                        onPressed: () { _searchController.clear(); setState(() => query = ''); load(); },
                      ),
                      hintText: 'Search professions',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    ),
                    onChanged: (v) {
                      setState(() => query = v);
                      ++_loadVersion;
                      _searchDebounce?.cancel();
                      _searchDebounce = Timer(const Duration(milliseconds: 300), load);
                    },
                    onSubmitted: (v) {
                      _searchDebounce?.cancel();
                      query = v;
                      load();
                    },
                  ),
                ),
                const SizedBox(width: 8),
                DropdownButton<String>(
                  value: language,
                  underline: const SizedBox.shrink(),
                  items: const [
                    DropdownMenuItem(value: '', child: Text('All')),
                    DropdownMenuItem(value: 'en', child: Text('EN')),
                    DropdownMenuItem(value: 'ha', child: Text('HA')),
                  ],
                  onChanged: (v) { language = v ?? ''; load(); },
                ),
              ],
            ),
          ),
          Expanded(
            child: loading
                ? const MasanawaListSkeleton(semanticLabel: 'Loading Rooms')
                : error != null
                    ? Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(roomError(error!)),
                            const SizedBox(height: 8),
                            TextButton(onPressed: load, child: const Text('Retry')),
                          ],
                        ),
                      )
                    : rows.isEmpty
                        ? Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  joined
                                      ? "You haven't joined any rooms yet."
                                      : 'No Rooms match this search.',
                                  style: TextStyle(color: u.textMuted, fontSize: 15),
                                ),
                                const SizedBox(height: 12),
                                if (joined)
                                  FilledButton(
                                    style: FilledButton.styleFrom(
                                      backgroundColor: u.brand,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    ),
                                    onPressed: () => _tabController.animateTo(1),
                                    child: const Text('Explore Discover Rooms'),
                                  )
                                else
                                  TextButton(
                                    onPressed: () { _searchController.clear(); setState(() { query = ''; language = ''; }); load(); },
                                    child: const Text('Show all'),
                                  ),
                              ],
                            ),
                          )
                        : RefreshIndicator(
                            onRefresh: load,
                            child: ListView.builder(
                              key: PageStorageKey<String>('rooms-${widget.savedLessonsAccountKey ?? widget.discussionAccountScope ?? 'current'}-${joined ? 'joined' : 'discover'}-$query-$language'),
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              itemCount: rows.length,
                              itemBuilder: (context, i) {
                                final r = rows[i];
                                final profession = cleanProfessionTitle(r.title);
                                return Card(
                                  elevation: 0,
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: BorderSide(color: u.structuralBorder),
                                  ),
                                  child: InkWell(
                                    onTap: () => _openRoomDetail(r),
                                    borderRadius: BorderRadius.circular(12),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        children: [
                                          MasanaPortraitAvatar(
                                            displayName: r.teacher,
                                            size: 46,
                                          ),
                                          const SizedBox(width: 12),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  profession,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 15.5,
                                                    color: u.textPrimary,
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Wrap(
                                                  spacing: 6,
                                                  runSpacing: 4,
                                                  children: [
                                                    Container(
                                                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                                      decoration: BoxDecoration(
                                                        color: u.surfaceMuted,
                                                        borderRadius: BorderRadius.circular(6),
                                                      ),
                                                      child: Text(
                                                        r.teacher,
                                                        style: TextStyle(fontSize: 11, color: u.brandStrong, fontWeight: FontWeight.w600),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                                      decoration: BoxDecoration(
                                                        color: r.paid ? const Color(0xFFEFF6FF) : const Color(0xFFF0FDF4),
                                                        borderRadius: BorderRadius.circular(6),
                                                      ),
                                                      child: Text(
                                                        r.paid ? 'Paid · 7d trial' : 'Free',
                                                        style: TextStyle(
                                                          fontSize: 11,
                                                          color: r.paid ? const Color(0xFF1E40AF) : const Color(0xFF166534),
                                                          fontWeight: FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '${r.members} members',
                                                      style: TextStyle(fontSize: 11, color: u.textMuted),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Icon(
                                            r.joined ? Icons.check_circle_rounded : Icons.chevron_right,
                                            color: r.joined ? u.brand : u.textMuted,
                                            size: 22,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
          ),
        ],
      ),
    );
  }
}

class RoomHomeScreen extends StatefulWidget {
  const RoomHomeScreen({
    super.key,
    required this.client,
    required this.id,
    this.discussionApi,
    this.discussionAccountScope,
    this.onDiscussionReport,
    this.savedLessonsClient,
    this.savedLessonsAccountKey,
    this.membershipClient,
  });

  final RoomsClient client;
  final String id;
  final RoomDiscussionApi? discussionApi;
  final String? discussionAccountScope;
  final ValueChanged<RoomDiscussionReply>? onDiscussionReport;
  final SavedLessonsClient? savedLessonsClient;
  final String? savedLessonsAccountKey;
  final RoomMembershipClient? membershipClient;

  @override
  State<RoomHomeScreen> createState() => _RoomHomeScreenState();
}

class _RoomHomeScreenState extends State<RoomHomeScreen> {
  final question = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  RoomInfo? info;
  List<RoomQuestion> items = [];
  List<RoomLesson> lessons = [];
  bool loading = true, busy = false, paidAccessBlocked = false;
  Object? error;
  String? pendingKey;
  Timer? _answerPoll;
  int _viewVersion = 0, _pollFailures = 0;
  bool _polling = false;

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  void didUpdateWidget(covariant RoomHomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.client != widget.client || oldWidget.id != widget.id) {
      _answerPoll?.cancel();
      ++_viewVersion;
      items = [];
      info = null;
      lessons = [];
      paidAccessBlocked = false;
      pendingKey = null;
      load();
    }
  }

  @override
  void dispose() {
    _answerPoll?.cancel();
    ++_viewVersion;
    question.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  bool get _hasPendingAnswers =>
      info?.joined == true && !paidAccessBlocked && items.any((item) => item.answer == null);

  void _scheduleAnswers() {
    _answerPoll?.cancel();
    if (!mounted || !_hasPendingAnswers || loading || busy) return;
    final delay = Duration(seconds: _pollFailures == 0 ? 3 : _pollFailures == 1 ? 8 : 20);
    _answerPoll = Timer(delay, _refreshAnswers);
  }

  Future<void> _refreshAnswers() async {
    if (!mounted || loading || busy || !_hasPendingAnswers) return;
    if (_polling) { _scheduleAnswers(); return; }
    final version = _viewVersion, roomId = widget.id, client = widget.client;
    _polling = true;
    try {
      final next = await client.questions(roomId);
      if (!mounted || version != _viewVersion || roomId != widget.id || !identical(client, widget.client)) return;
      _pollFailures = 0;
      setState(() => items = next);
    } on DioException catch (error) {
      if (!mounted || version != _viewVersion) return;
      if (error.response?.statusCode == 401 || error.response?.statusCode == 403) {
        setState(() => paidAccessBlocked = true);
      } else {
        _pollFailures = (_pollFailures + 1).clamp(0, 2);
      }
    } catch (_) {
      if (mounted && version == _viewVersion) _pollFailures = (_pollFailures + 1).clamp(0, 2);
    } finally {
      _polling = false;
      if (mounted && version == _viewVersion) _scheduleAnswers();
    }
  }

  Future<void> load() async {
    _answerPoll?.cancel();
    final version = ++_viewVersion;
    setState(() { loading = true; error = null; });
    try {
      final room = await widget.client.room(widget.id);
      List<RoomQuestion> qs = [];
      List<RoomLesson> ls = [];
      bool subscriptionBlocked = false;
      if (room.joined) {
        try {
          qs = await widget.client.questions(widget.id);
          ls = await widget.client.lessons(widget.id);
        } on DioException catch (e) {
          if (room.paid && e.response?.statusCode == 403) {
            subscriptionBlocked = true;
          } else {
            rethrow;
          }
        }
      }
      if (mounted && version == _viewVersion) {
        _pollFailures = 0;
        setState(() {
          info = room;
          items = qs;
          lessons = ls;
          paidAccessBlocked = subscriptionBlocked;
          loading = false;
        });
        _scheduleAnswers();
      }
    } catch (e) {
      if (mounted && version == _viewVersion) setState(() { error = e; loading = false; });
    }
  }

  Future<void> membership() async {
    if (info == null || busy) return;
    setState(() => busy = true);
    try {
      if (info!.joined) {
        await widget.client.leave(widget.id);
      } else {
        await widget.client.join(widget.id);
      }
      await load();
    } catch (e) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(roomError(e))));
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  Future<void> bookmark(RoomLesson lesson) async {
    final client = widget.savedLessonsClient;
    if (busy || client == null || !client.isCurrentAccount ||
        widget.savedLessonsAccountKey != client.accountKey || paidAccessBlocked) {
      return;
    }
    setState(() => busy = true);
    try {
      await client.save(widget.id, lesson.id);
      if (mounted && client.isCurrentAccount) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Lesson saved.')));
      }
    } catch (error) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(roomError(error))));
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  void openSaved() {
    final client = widget.savedLessonsClient;
    final key = widget.savedLessonsAccountKey;
    if (client == null || key == null || key != client.accountKey ||
        !client.isCurrentAccount || !info!.joined || paidAccessBlocked) {
      return;
    }
    Navigator.push<void>(context, MaterialPageRoute(builder: (_) =>
        SavedRoomLessonsScreen(client: client, roomId: widget.id, accountKey: key)));
  }

  Future<void> ask() async {
    final text = question.text.trim();
    if (busy || text.isEmpty) return;
    pendingKey ??= 'rq_${DateTime.now().microsecondsSinceEpoch}_'
        '${List.generate(12, (_) => Random.secure().nextInt(16).toRadixString(16)).join()}';
    setState(() => busy = true);
    try {
      await widget.client.ask(widget.id, text, pendingKey!);
      pendingKey = null;
      question.clear();
      await load();
      // Scroll to bottom after asking
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent + 80,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    } catch (e) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(roomError(e))));
    } finally {
      if (mounted) {
        setState(() => busy = false);
        _scheduleAnswers();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final profession = cleanProfessionTitle(info?.title ?? 'Room');

    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: u.surfaceCard,
        foregroundColor: u.textPrimary,
        elevation: 0,
        title: info == null
            ? Text(profession)
            : Row(
                children: [
                  MasanaPortraitAvatar(displayName: info!.teacher, size: 36),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          profession,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '${info!.members} members · ${info!.teacher}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 11.5, color: u.textMuted),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
        actions: [
          // Data Bundles Shortcut Text Button
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
            child: TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: u.brand.withValues(alpha: 0.12),
                foregroundColor: u.brand,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                minimumSize: const Size(0, 32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: u.brand.withValues(alpha: 0.3)),
                ),
              ),
              icon: Icon(Icons.bolt, size: 15, color: u.brand),
              label: Text(
                'Data Bundles',
                style: TextStyle(
                  fontSize: 11.5,
                  fontWeight: FontWeight.w700,
                  color: u.brand,
                ),
              ),
              onPressed: () => context.push('/billing?service=data'),
            ),
          ),
          if (widget.membershipClient != null)
            IconButton(
              key: const Key('room-invitations'),
              tooltip: 'Room invitations',
              onPressed: () => Navigator.push<void>(
                context,
                MaterialPageRoute(
                  builder: (_) => RoomMembershipScreen(
                    client: widget.membershipClient!,
                    roomId: widget.id,
                    onJoined: load,
                  ),
                ),
              ),
              icon: const Icon(Icons.mark_email_unread_outlined),
            ),
          if (widget.savedLessonsClient != null)
            IconButton(
              key: const Key('room-saved-lessons'),
              tooltip: 'Saved lessons',
              onPressed: info?.joined == true &&
                      !paidAccessBlocked &&
                      widget.savedLessonsAccountKey == widget.savedLessonsClient?.accountKey
                  ? openSaved
                  : null,
              icon: const Icon(Icons.bookmarks_outlined),
            ),
          PopupMenuButton<String>(
            tooltip: 'More',
            onSelected: (val) {
              if (val == 'leave') membership();
            },
            itemBuilder: (_) => [
              if (info?.joined == true)
                const PopupMenuItem(value: 'leave', child: Text('Leave Room')),
            ],
          ),
        ],
      ),
      body: loading
          ? const MasanawaListSkeleton(semanticLabel: 'Loading Room details')
          : error != null
              ? Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(roomError(error!)),
                      const SizedBox(height: 8),
                      TextButton(onPressed: load, child: const Text('Retry')),
                    ],
                  ),
                )
              : info == null
                  ? const Center(child: Text('Room not found'))
                  : !info!.joined
                      ? _buildJoinCard(u, profession)
                      : paidAccessBlocked
                          ? Center(
                              child: Text(
                                'A verified subscription is required to access $profession lessons and questions.',
                              ),
                            )
                          : _buildChannelChatView(u, profession),
    );
  }

  Widget _buildJoinCard(MasanawaColors u, String profession) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: u.structuralBorder),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MasanaPortraitAvatar(displayName: info!.teacher, size: 72),
                const SizedBox(height: 14),
                Text(
                  profession,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  'Teacher: ${info!.teacher}',
                  style: TextStyle(fontSize: 14, color: u.textMuted),
                ),
                const SizedBox(height: 4),
                Text(
                  '${info!.members} active members',
                  style: TextStyle(fontSize: 12, color: u.textMuted),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: u.surfaceMuted,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    info!.paid
                        ? 'Paid Room · 7-Day Free Trial'
                        : 'Free Access for All Members',
                    style: TextStyle(fontWeight: FontWeight.w600, color: u.brandStrong),
                  ),
                ),
                const SizedBox(height: 20),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: u.brand,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: busy || (!info!.joined && info!.paid) ? null : membership,
                  child: Text(
                    info!.paid && !info!.joined
                        ? 'Subscription unavailable'
                        : 'Join free Room',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildChannelChatView(MasanawaColors u, String profession) {
    return Column(
      children: [
        Expanded(
          child: RefreshIndicator(
            onRefresh: load,
            child: ListView(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              children: [
                // Broadcast / Lessons Section
                if (lessons.isNotEmpty) ...[
                  for (final lesson in lessons)
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: u.brand.withValues(alpha: 0.3)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.04),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              MasanaPortraitAvatar(displayName: info!.teacher, size: 24),
                              const SizedBox(width: 8),
                              Text(
                                '${info!.teacher} · Broadcast Lesson',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
                                  color: u.brandStrong,
                                ),
                              ),
                              const Spacer(),
                              if (widget.savedLessonsClient != null)
                                IconButton(
                                  icon: const Icon(Icons.bookmark_add_outlined, size: 18),
                                  tooltip: 'Save lesson',
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  onPressed: busy ||
                                          !widget.savedLessonsClient!.isCurrentAccount ||
                                          widget.savedLessonsAccountKey !=
                                              widget.savedLessonsClient!.accountKey
                                      ? null
                                      : () => bookmark(lesson),
                                ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            lesson.body,
                            style: TextStyle(fontSize: 14.5, color: u.textPrimary, height: 1.4),
                          ),
                        ],
                      ),
                    ),
                ],

                // Questions & Answers Section
                if (items.isEmpty && lessons.isEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 48),
                    child: Center(
                      child: Column(
                        children: [
                          Icon(Icons.forum_outlined, size: 48, color: u.brand.withValues(alpha: 0.4)),
                          const SizedBox(height: 12),
                          Text(
                            'Welcome to $profession Channel!',
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Ask your Masana teacher anything or participate in discussions below.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: u.textMuted, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  )
                else
                  for (final q in items) ...[
                    // Member question bubble (Right-aligned)
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: const EdgeInsets.only(top: 8, bottom: 4, left: 48),
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9FDD3),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14),
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(4),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.03),
                              blurRadius: 2,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Text(
                          q.body,
                          style: TextStyle(fontSize: 14, color: u.textPrimary),
                        ),
                      ),
                    ),

                    // Teacher AI response bubble (Left-aligned)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.only(top: 4, bottom: 12, right: 48),
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(14),
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                          border: Border.all(color: u.structuralBorder),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.03),
                              blurRadius: 2,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                MasanaPortraitAvatar(displayName: info!.teacher, size: 18),
                                const SizedBox(width: 6),
                                Text(
                                  info!.teacher,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11.5,
                                    color: u.brandStrong,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            if (q.answer != null)
                              Text(
                                q.answer!,
                                style: TextStyle(fontSize: 14, color: u.textPrimary, height: 1.35),
                              )
                            else
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 12,
                                    height: 12,
                                    child: CircularProgressIndicator(strokeWidth: 1.5, color: u.brand),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'AI teacher is preparing an answer...',
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 12.5,
                                      color: u.textMuted,
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
              ],
            ),
          ),
        ),

        // Channel Chat Composer
        SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: u.surfaceCard,
              border: Border(top: BorderSide(color: u.structuralBorder)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: question,
                    maxLines: 4,
                    minLines: 1,
                    maxLength: 2000,
                    buildCounter: (_, {required currentLength, required isFocused, maxLength}) => null,
                    decoration: InputDecoration(
                      hintText: 'Message $profession channel...',
                      hintStyle: TextStyle(color: u.textMuted, fontSize: 14),
                      filled: true,
                      fillColor: u.surfaceBg,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  radius: 22,
                  backgroundColor: u.brand,
                  child: IconButton(
                    icon: busy
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                          )
                        : const Icon(Icons.send, color: Colors.white, size: 20),
                    onPressed: busy ? null : ask,
                    tooltip: 'Send message',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
