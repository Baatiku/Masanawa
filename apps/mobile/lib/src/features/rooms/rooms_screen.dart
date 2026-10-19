import 'dart:async';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../ui/components/masanawa_list_skeleton.dart';

import '../../agents/masana_portrait_avatar.dart';
import '../../theme/masanawa_theme.dart';
import 'room_discussion_api.dart';
import 'room_discussion_screen.dart';
import 'room_membership_client.dart';
import 'room_membership_screen.dart';
import 'rooms_client.dart';
import 'saved_lessons_client.dart';
import 'saved_lessons_screen.dart';

const _terminalQuestionStates=['failed','rejected','removed','deleted','moderated'];
String _questionPreview(RoomQuestion q)=>q.answer??(_terminalQuestionStates.contains(q.status)?'Answer unavailable. Refresh to check.':'Teacher is typing…');

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

  void _openRoomDetail(RoomInfo room) => _navigateToChat(room.id);

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
        protectDetail:widget.protectDetail,
      );
      return widget.protectDetail?.call(routeContext, detail) ?? detail;
    }));
    if (mounted) load();
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
                      suffixIcon: query.isEmpty ? null : IconButton(tooltip: 'Clear search',icon: const Icon(Icons.clear),onPressed: () { _searchController.clear(); setState(() => query = ''); load(); }),
                      hintText: 'Search Rooms',filled:true,fillColor:u.surfaceMuted,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide:BorderSide.none),
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
                    DropdownMenuItem(value: 'ar', child: Text('AR')),
                    DropdownMenuItem(value: 'hi', child: Text('HI')),
                    DropdownMenuItem(value: 'zh', child: Text('ZH')),
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
                                return Column(children:[
                                  ListTile(contentPadding:const EdgeInsets.symmetric(horizontal:4,vertical:6),
                                    leading:MasanaPortraitAvatar(displayName:r.teacher,size:48),
                                    title:Text(profession,style:TextStyle(fontWeight:FontWeight.w700,color:u.textPrimary)),
                                    subtitle:Text('${r.teacher}\n${r.members} members · ${r.paid?'Subscription':'Free'}',maxLines:2,overflow:TextOverflow.ellipsis),
                                    trailing:Icon(r.joined?Icons.check_circle_outline:Icons.chevron_right,color:r.joined?u.brand:u.textMuted),
                                    onTap:()=>_openRoomDetail(r)),
                                  Divider(height:1,color:u.structuralBorder),
                                ]);
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
    this.protectDetail,
  });

  final RoomDetailProtector? protectDetail;
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
  String? pendingKey,pendingBody;
  Timer? _answerPoll;
  int _viewVersion = 0, _pollFailures = 0, _detailDepth=0;
  bool _polling = false;
  String _timelineFilter = 'all';

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
      info?.joined == true && !paidAccessBlocked && items.any((item) => item.answer == null && !_terminalQuestionStates.contains(item.status));

  void _scheduleAnswers() {
    _answerPoll?.cancel();
    if (!mounted || !_hasPendingAnswers || loading || busy || _detailDepth>0) return;
    final delay = Duration(seconds: _pollFailures == 0 ? 3 : _pollFailures == 1 ? 8 : 20);
    _answerPoll = Timer(delay, _refreshAnswers);
  }

  Future<void> _refreshAnswers() async {
    if (!mounted || loading || busy || !_hasPendingAnswers || _detailDepth>0) return;
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
        final confirmed=await Navigator.push<bool>(context,MaterialPageRoute(builder:(routeContext){
          final page=Scaffold(appBar:AppBar(title:const Text('Leave Room')),body:ListView(padding:const EdgeInsets.all(24),children:[
            Text('Leave ${cleanProfessionTitle(info!.title)}?',style:Theme.of(context).textTheme.titleLarge),
            const SizedBox(height:16),const Text('You will need to join again to access lessons and questions.'),const SizedBox(height:24),
            FilledButton(onPressed:()=>Navigator.pop(routeContext,true),child:const Text('Leave Room')),
          ]));
          return widget.protectDetail?.call(routeContext,page)??page;
        }));
        if(confirmed!=true||!mounted)return;
        await widget.client.leave(widget.id);
      } else {
        await widget.client.join(widget.id);
      }
      await load();
    } catch (e) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(roomError(e))));
    } finally {
      if (mounted) {setState(() => busy = false);_scheduleAnswers();}
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
    openDetail(SavedRoomLessonsScreen(client:client,roomId:widget.id,accountKey:key,protectDetail:widget.protectDetail));
  }

  Future<void> ask() async {
    final text = question.text.trim();
    if (busy || text.isEmpty) return;
    if(pendingBody!=text){pendingKey=null;pendingBody=text;}
    pendingKey ??= 'rq_${DateTime.now().microsecondsSinceEpoch}_'
        '${List.generate(12, (_) => Random.secure().nextInt(16).toRadixString(16)).join()}';
    setState(() => busy = true);
    try {
      await widget.client.ask(widget.id, text, pendingKey!);
      pendingKey = null;pendingBody=null;
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
          if(widget.savedLessonsClient!=null)IconButton(tooltip:'Saved lessons',icon:const Icon(Icons.bookmarks_outlined),onPressed:info?.joined==true&&!paidAccessBlocked?openSaved:null),
          PopupMenuButton<String>(tooltip:'More',onSelected:(value){
            if(value=='info')openInfo();
            if(value=='leave')membership();
            if(value=='invitations'&&widget.membershipClient!=null)openDetail(RoomMembershipScreen(client:widget.membershipClient!,roomId:widget.id,onJoined:load));
          },itemBuilder:(_)=>[
            const PopupMenuItem(value:'info',child:Text('Room info')),
            if(widget.membershipClient!=null)const PopupMenuItem(value:'invitations',child:Text('Invitations')),
            if(info?.joined==true)const PopupMenuItem(value:'leave',child:Text('Leave Room')),
          ]),
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
                  '${info!.members} members',
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
                        ? 'Active subscription required'
                        : 'Free Room',
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

  Widget _buildChannelChatView(MasanawaColors u,String profession) {
    final allEntries=<({Object item,DateTime? at,int order})>[
      for(final lesson in lessons)(item:lesson,at:lesson.createdAt,order:0),
      for(final item in items)(item:item,at:item.createdAt,order:1),
    ].indexed.map((entry)=>(item:entry.$2.item,at:entry.$2.at,order:entry.$1)).toList();
    final timeline = allEntries.where((entry) =>
      _timelineFilter == 'all' ||
      (_timelineFilter == 'lessons' && entry.item is RoomLesson) ||
      (_timelineFilter == 'questions' && entry.item is RoomQuestion)).toList();
    timeline.sort((a,b){
      if(a.at==null&&b.at==null)return a.order.compareTo(b.order);
      if(a.at==null)return 1;if(b.at==null)return -1;
      final result=a.at!.compareTo(b.at!);return result==0?a.order.compareTo(b.order):result;
    });
    return Column(children:[
      Padding(padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
        child: Row(children: [
          Icon(Icons.groups_outlined, color: u.brandStrong, size: 20),
          const SizedBox(width: 8),
          Expanded(child: Text('Room timeline',
            style: Theme.of(context).textTheme.titleMedium)),
          TextButton(onPressed: openInfo, child: const Text('Room info')),
        ])),
      SingleChildScrollView(scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(children: [
          for (final filter in [('all', 'All'), ('lessons', 'Lessons'), ('questions', 'Questions')])
            Padding(padding: const EdgeInsetsDirectional.only(end: 8),
              child: FilterChip(label: Text(filter.$2),
                selected: _timelineFilter == filter.$1,
                onSelected: (_) => setState(() => _timelineFilter = filter.$1))),
        ])),
      Expanded(child:RefreshIndicator(onRefresh:load,child:timeline.isEmpty?
        ListView(children:[Padding(padding:const EdgeInsets.symmetric(horizontal:24,vertical:64),child:Column(children:[
          Icon(Icons.forum_outlined,size:42,color:u.textMuted),const SizedBox(height:16),
          Text(_timelineFilter == 'lessons' ? 'No lessons yet' : _timelineFilter == 'questions' ? 'No questions yet' : 'No lessons or questions yet',textAlign:TextAlign.center),
          const SizedBox(height:8),const Text('Ask your teacher a question below.',textAlign:TextAlign.center),
        ]))]):ListView.builder(controller:_scrollController,padding:const EdgeInsets.all(12),itemCount:timeline.length,itemBuilder:(context,index){
          final item=timeline[index].item;
          final lesson=item is RoomLesson?item:null;
          final q=item is RoomQuestion?item:null;
          return Padding(padding:const EdgeInsets.only(bottom:10),child:Material(color:u.surfaceCard,
            shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(14),side:BorderSide(color:u.structuralBorder)),
            child:InkWell(borderRadius:BorderRadius.circular(14),onTap:()=>lesson!=null?openLesson(lesson):openQuestion(q!),
              child:Padding(padding:const EdgeInsets.all(14),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
                Row(children:[Icon(lesson!=null?Icons.menu_book_outlined:Icons.question_answer_outlined,size:18,color:u.brandStrong),
                  const SizedBox(width:8),Expanded(child:Text(lesson==null?'Question':lesson.kind=='announcement'?'Announcement':'Lesson',style:TextStyle(fontWeight:FontWeight.w700,color:u.brandStrong))),
                  const Icon(Icons.chevron_right,size:18)]),
                const SizedBox(height:10),Text(lesson?.body??q!.body,maxLines:4,overflow:TextOverflow.ellipsis,style:TextStyle(color:u.textPrimary,height:1.4)),
                if(q!=null)...[const SizedBox(height:8),Text(_questionPreview(q),maxLines:2,overflow:TextOverflow.ellipsis,style:TextStyle(color:u.textMuted))],
              ])),
            )));
        }))),
      SafeArea(top:false,child:Padding(padding:const EdgeInsets.fromLTRB(12,8,12,10),child:Row(crossAxisAlignment:CrossAxisAlignment.end,children:[
        Expanded(child:TextField(controller:question,enabled:!busy,minLines:1,maxLines:4,maxLength:2000,
          buildCounter:(_, {required currentLength,required isFocused,maxLength})=>null,
          decoration:InputDecoration(hintText:'Ask a question',filled:true,fillColor:u.surfaceMuted,
            border:OutlineInputBorder(borderRadius:BorderRadius.circular(24),borderSide:BorderSide.none)))),
        const SizedBox(width:8),ValueListenableBuilder<TextEditingValue>(valueListenable:question,builder:(context,value,_)=>IconButton.filled(
          tooltip:'Send question',onPressed:busy||value.text.trim().isEmpty?null:ask,
          icon:busy?const SizedBox(width:20,height:20,child:CircularProgressIndicator(strokeWidth:2)):const Icon(Icons.send_outlined))),
      ]))),
    ]);
  }

  Future<void> openDetail(Widget detail) async {
    _answerPoll?.cancel();_detailDepth++;
    try { await Navigator.push<void>(context,MaterialPageRoute(builder:(routeContext)=>widget.protectDetail?.call(routeContext,detail)??detail)); } finally { _detailDepth--; }
    if(mounted&&_detailDepth==0)await load();
  }
  void openInfo(){
    final room=info;if(room==null)return;
    openDetail(Scaffold(appBar:AppBar(title:const Text('Room info')),body:ListView(padding:const EdgeInsets.all(24),children:[
      Center(child:MasanaPortraitAvatar(displayName:room.teacher,size:72)),const SizedBox(height:16),
      Text(cleanProfessionTitle(room.title),textAlign:TextAlign.center,style:Theme.of(context).textTheme.headlineSmall),
      const SizedBox(height:10),Text(room.teacher,textAlign:TextAlign.center),const SizedBox(height:24),
      ListTile(leading:const Icon(Icons.people_outline),title:Text('${room.members} members')),
      ListTile(leading:const Icon(Icons.language),title:Text(room.language.toUpperCase())),
      ListTile(leading:Icon(room.paid?Icons.lock_outline:Icons.check_circle_outline),title:Text(room.paid?'Subscription Room':'Free Room')),
    ])));
  }
  void openLesson(RoomLesson lesson)=>openDetail(_RoomLessonDetail(lesson:lesson,teacher:info!.teacher,
    onSave:widget.savedLessonsClient==null?null:()=>bookmark(lesson),
    onDiscuss:widget.discussionApi==null||widget.discussionAccountScope==null?null:()=>openDiscussion(RoomDiscussionTarget(kind:'lesson',id:lesson.id,label:lesson.body))));
  void openQuestion(RoomQuestion q)=>openDetail(_RoomQuestionDetail(client:widget.client,roomId:widget.id,question:q,teacher:info!.teacher,
    onDiscuss:widget.discussionApi==null||widget.discussionAccountScope==null?null:()=>openDiscussion(RoomDiscussionTarget(kind:'question',id:q.id,label:q.body))));
  Future<void> openDiscussion(RoomDiscussionTarget target)=>openDetail(Scaffold(appBar:AppBar(title:const Text('Discussion')),body:RoomDiscussionScreen(
    roomId:widget.id,api:widget.discussionApi!,accountScope:widget.discussionAccountScope!,initialTarget:target,onReport:widget.onDiscussionReport)));
}

class _RoomLessonDetail extends StatefulWidget {
  const _RoomLessonDetail({required this.lesson,required this.teacher,this.onSave,this.onDiscuss});
  final RoomLesson lesson;final String teacher;final Future<void> Function()? onSave;final Future<void> Function()? onDiscuss;
  @override State<_RoomLessonDetail> createState()=>_LessonDetailState();
}
class _LessonDetailState extends State<_RoomLessonDetail>{
  bool saving=false;
  @override Widget build(BuildContext context)=>Scaffold(appBar:AppBar(title:Text(widget.lesson.kind=='announcement'?'Announcement':'Lesson'),actions:[
    if(widget.onSave!=null)IconButton(tooltip:'Save lesson',onPressed:saving?null:()async{setState(()=>saving=true);try{await widget.onSave!();}finally{if(mounted)setState(()=>saving=false);}},icon:const Icon(Icons.bookmark_add_outlined)),
  ]),body:ListView(padding:const EdgeInsets.all(24),children:[
    Text(widget.teacher,style:Theme.of(context).textTheme.titleMedium),const SizedBox(height:20),SelectableText(widget.lesson.body,style:const TextStyle(fontSize:16,height:1.6)),
    if(widget.onDiscuss!=null)...[const SizedBox(height:28),OutlinedButton.icon(onPressed:widget.onDiscuss,icon:const Icon(Icons.forum_outlined),label:const Text('Open discussion'))],
  ]));
}
class _RoomQuestionDetail extends StatefulWidget {
  const _RoomQuestionDetail({required this.client,required this.roomId,required this.question,required this.teacher,this.onDiscuss});
  final RoomsClient client;final String roomId,teacher;final RoomQuestion question;final Future<void> Function()? onDiscuss;
  @override State<_RoomQuestionDetail> createState()=>_QuestionDetailState();
}
class _QuestionDetailState extends State<_RoomQuestionDetail>{
  late RoomQuestion value=widget.question;Timer? timer;bool busy=false;String? error;int version=0,failures=0;
  @override void initState(){super.initState();schedule();}
  @override void dispose(){version++;timer?.cancel();super.dispose();}
  void schedule(){timer?.cancel();if(value.answer==null&&!_terminalQuestionStates.contains(value.status)&&mounted)timer=Timer(Duration(seconds:failures==0?3:failures==1?8:20),refresh);}
  Future<void> refresh()async{
    if(busy)return;final current=++version;setState(()=>busy=true);
    try{final rows=await widget.client.questions(widget.roomId);if(!mounted||current!=version)return;
      final matches=rows.where((q)=>q.id==value.id);setState((){if(matches.isNotEmpty)value=matches.first;error=null;failures=0;});
    }catch(e){if(mounted&&current==version)setState((){error=roomError(e);failures=(failures+1).clamp(0,2);});}
    finally{if(mounted&&current==version){setState(()=>busy=false);schedule();}}
  }
  @override Widget build(BuildContext context)=>Scaffold(appBar:AppBar(title:const Text('Question'),actions:[IconButton(tooltip:'Refresh answer',onPressed:busy?null:refresh,icon:const Icon(Icons.refresh))]),
    body:ListView(padding:const EdgeInsets.all(24),children:[
      SelectableText(value.body,style:Theme.of(context).textTheme.titleLarge),const SizedBox(height:28),
      Text(widget.teacher,style:Theme.of(context).textTheme.titleMedium),const SizedBox(height:12),
      SelectableText(_questionPreview(value),style:const TextStyle(fontSize:16,height:1.5)),
      if(error!=null)...[const SizedBox(height:16),Text(error!,textAlign:TextAlign.center)],
      if(widget.onDiscuss!=null)...[const SizedBox(height:28),OutlinedButton.icon(onPressed:()async{timer?.cancel();await widget.onDiscuss!();if(mounted)await refresh();},icon:const Icon(Icons.forum_outlined),label:const Text('Open discussion'))],
    ]));
}
