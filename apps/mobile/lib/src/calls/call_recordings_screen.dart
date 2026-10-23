import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:share_plus/share_plus.dart';

import '../core/call_recording.dart';
import '../core/live_call_foreground.dart';
import '../state/session_state.dart';

/// All searches are local to the authenticated owner's on-device recordings.
enum RecordingOrder { newest, oldest, longest }

List<CallRecording> selectRecordings(
  List<CallRecording> items, {
  required String search,
  required RecordingOrder order,
}) {
  final needle = search.trim().toLowerCase();
  final found = items
      .where(
        (item) =>
            needle.isEmpty || item.agentName.toLowerCase().contains(needle),
      )
      .toList();
  // Deterministic ties avoid rows jumping on refresh or files with equal times.
  int byNewest(CallRecording a, CallRecording b) {
    final time = b.createdAt.compareTo(a.createdAt);
    return time != 0 ? time : b.id.compareTo(a.id);
  }

  found.sort((a, b) {
    switch (order) {
      case RecordingOrder.newest:
        return byNewest(a, b);
      case RecordingOrder.oldest:
        return -byNewest(a, b);
      case RecordingOrder.longest:
        final duration = b.durationMs.compareTo(a.durationMs);
        return duration == 0 ? byNewest(a, b) : duration;
    }
  });
  return found;
}

String _duration(int ms) =>
    '${(ms ~/ 60000).toString().padLeft(2, '0')}:${(ms ~/ 1000 % 60).toString().padLeft(2, '0')}';
String _date(BuildContext context, DateTime value) {
  final local = value.toLocal(), strings = MaterialLocalizations.of(context);
  return '${strings.formatMediumDate(local)} · ${strings.formatTimeOfDay(TimeOfDay.fromDateTime(local))}';
}

bool _active(WidgetRef ref, String owner) {
  final s = ref.read(sessionProvider);
  return s is SessionSignedIn && s.user.id == owner;
}

class CallRecordingsScreen extends ConsumerStatefulWidget {
  const CallRecordingsScreen({
    super.key,
    required this.ownerId,
    this.store,
    this.createPlayer,
  });
  final String ownerId;
  final CallRecordingStore? store;
  final AudioPlayer Function()? createPlayer;
  @override
  ConsumerState<CallRecordingsScreen> createState() => _RecordingsState();
}

class _RecordingsState extends ConsumerState<CallRecordingsScreen> {
  late CallRecordingStore store;
  final searchController = TextEditingController();
  RecordingOrder order = RecordingOrder.newest;
  String search = '';
  List<CallRecording> rows = [];
  bool loading = true;
  String? error;
  int generation = 0;
  @override
  void initState() {
    super.initState();
    store = widget.store ?? CallRecordingStore(widget.ownerId);
    load();
  }

  @override
  void didUpdateWidget(covariant CallRecordingsScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.ownerId != widget.ownerId ||
        oldWidget.store != widget.store) {
      // A State can be reused by Flutter when a parent changes owners. Never
      // let the previous account's device-only list leak into the new one.
      generation++;
      store = widget.store ?? CallRecordingStore(widget.ownerId);
      rows = [];
      error = null;
      loading = true;
      order = RecordingOrder.newest;
      search = '';
      searchController.clear();
      load();
    }
  }

  @override
  void dispose() {
    generation++;
    searchController.dispose();
    super.dispose();
  }

  Future<void> load() async {
    final version = ++generation;
    setState(() {
      loading = true;
      error = null;
    });
    if (!_active(ref, widget.ownerId)) {
      if (mounted && version == generation) setState(() => loading = false);
      return;
    }
    try {
      final result = await store.list();
      if (!mounted || version != generation || !_active(ref, widget.ownerId))
        return;
      setState(() {
        rows = result;
        loading = false;
      });
    } catch (_) {
      if (mounted && version == generation)
        setState(() {
          loading = false;
          error = 'Could not load recordings. Check device storage.';
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(sessionProvider);
    if (s is! SessionSignedIn || s.user.id != widget.ownerId) {
      return Scaffold(
        appBar: AppBar(title: const Text('Call recordings')),
        body: const Center(child: Text('Sign in to view your recordings.')),
      );
    }
    final visible = selectRecordings(rows, search: search, order: order);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Call recordings'),
        actions: [
          PopupMenuButton<RecordingOrder>(
            tooltip: 'Sort recordings',
            icon: const Icon(Icons.sort),
            initialValue: order,
            onSelected: (value) => setState(() => order = value),
            itemBuilder: (_) => [
              for (final choice in RecordingOrder.values)
                CheckedPopupMenuItem<RecordingOrder>(
                  value: choice,
                  checked: order == choice,
                  child: Text(switch (choice) {
                    RecordingOrder.newest => 'Newest first',
                    RecordingOrder.oldest => 'Oldest first',
                    RecordingOrder.longest => 'Longest first',
                  }),
                ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 4),
            child: TextField(
              controller: searchController,
              onChanged: (value) => setState(() => search = value),
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                labelText: 'Search recordings',
                hintText: 'Search by name',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: search.isNotEmpty
                    ? IconButton(
                        tooltip: 'Clear recording search',
                        onPressed: () {
                          searchController.clear();
                          setState(() => search = '');
                        },
                        icon: const Icon(Icons.close),
                      )
                    : null,
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                loading
                    ? 'Loading recordings on this device'
                    : error != null
                    ? 'Recordings on this device'
                    : '${visible.length} of ${rows.length} recordings on this device',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          Expanded(
            child: loading
                ? const Center(child: CircularProgressIndicator())
                : error != null
                ? Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(error!, textAlign: TextAlign.center),
                        TextButton(onPressed: load, child: const Text('Retry')),
                      ],
                    ),
                  )
                : rows.isEmpty
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'No recordings yet. Use Record call during a one-to-one call. Recordings stay on this device.',
                            textAlign: TextAlign.center,
                          ),
                          TextButton.icon(
                            onPressed: load,
                            icon: const Icon(Icons.refresh),
                            label: const Text('Refresh recordings'),
                          ),
                        ],
                      ),
                    ),
                  )
                : visible.isEmpty
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.search_off, size: 40),
                          const Text(
                            'No recordings match this search.',
                            textAlign: TextAlign.center,
                          ),
                          TextButton(
                            onPressed: () {
                              searchController.clear();
                              setState(() => search = '');
                            },
                            child: const Text('Clear search'),
                          ),
                          TextButton.icon(
                            onPressed: load,
                            icon: const Icon(Icons.refresh),
                            label: const Text('Refresh recordings'),
                          ),
                        ],
                      ),
                    ),
                  )
                : RefreshIndicator(
                    onRefresh: load,
                    child: ListView.separated(
                      itemCount: visible.length,
                      separatorBuilder: (_, __) => const Divider(height: 1),
                      itemBuilder: (context, index) {
                        final item = visible[index];
                        return ListTile(
                          leading: const Icon(Icons.graphic_eq),
                          title: Text(item.agentName),
                          subtitle: Text(
                            '${_date(context, item.createdAt)} · ${_duration(item.durationMs)}',
                          ),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (_) => _RecordingDetail(
                                  owner: widget.ownerId,
                                  store: store,
                                  item: item,
                                  createPlayer: widget.createPlayer,
                                ),
                              ),
                            );
                            if (mounted && _active(ref, widget.ownerId))
                              await load();
                          },
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

class _RecordingDetail extends ConsumerStatefulWidget {
  const _RecordingDetail({
    required this.owner,
    required this.store,
    required this.item,
    this.createPlayer,
  });
  final String owner;
  final CallRecordingStore store;
  final CallRecording item;
  final AudioPlayer Function()? createPlayer;
  @override
  ConsumerState<_RecordingDetail> createState() => _RecordingDetailState();
}

class _RecordingDetailState extends ConsumerState<_RecordingDetail>
    with WidgetsBindingObserver {
  AudioPlayer? player;
  StreamSubscription<PlayerState>? states;
  StreamSubscription<Duration>? positions;
  bool playing = false, busy = false, loaded = false;
  Duration position = Duration.zero;
  String? error;
  double speed = 1;
  Future<void> pausing = Future.value();
  int playbackGeneration = 0;
  ProviderSubscription<SessionState>? sessionChanges;
  bool get foreground =>
      WidgetsBinding.instance.lifecycleState == null ||
      WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    LiveCallForeground.activity.addListener(callActivityChanged);
    sessionChanges = ref.listenManual<SessionState>(sessionProvider, (_, next) {
      if (next is! SessionSignedIn || next.user.id != widget.owner)
        unawaited(interruptPlayback());
    });
  }

  @override
  void dispose() {
    playbackGeneration++;
    WidgetsBinding.instance.removeObserver(this);
    LiveCallForeground.activity.removeListener(callActivityChanged);
    sessionChanges?.close();
    states?.cancel();
    positions?.cancel();
    player?.dispose();
    super.dispose();
  }

  Future<void> pauseSafely() {
    final p = player;
    if (p == null) return Future.value();
    pausing = pausing.then((_) async {
      try {
        await p.pause();
      } catch (_) {
        try {
          await p.stop();
        } catch (_) {
          /* Native player unavailable. */
        }
      }
    });
    return pausing;
  }

  Future<void> interruptPlayback([String? message]) {
    playbackGeneration++;
    if (mounted)
      setState(() {
        playing = false;
        if (message != null && player != null) error = message;
      });
    return pauseSafely();
  }

  void callActivityChanged() {
    if (LiveCallForeground.active)
      unawaited(
        interruptPlayback(
          'Playback paused for the current call. Tap Play after the call ends.',
        ),
      );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state != AppLifecycleState.resumed)
      unawaited(
        interruptPlayback('Playback paused. Tap Play when you return.'),
      );
  }

  Future<void> toggle() async {
    if (busy || !_active(ref, widget.owner)) return;
    if (!foreground) return;
    if (LiveCallForeground.active) {
      setState(
        () => error = 'End the current call before playing a recording.',
      );
      return;
    }
    final attempt = ++playbackGeneration;
    bool current() =>
        mounted &&
        attempt == playbackGeneration &&
        foreground &&
        _active(ref, widget.owner) &&
        !LiveCallForeground.active;
    setState(() {
      busy = true;
      error = null;
    });
    try {
      await pausing;
      if (!current()) return;
      if (player == null) {
        final p = widget.createPlayer?.call() ?? AudioPlayer();
        player = p;
        states = p.playerStateStream.listen((state) {
          if (!mounted) return;
          if (state.processingState == ProcessingState.completed) {
            setState(() {
              playing = false;
              position = Duration.zero;
            });
            unawaited(
              p
                  .pause()
                  .then((_) => p.seek(Duration.zero))
                  .catchError((Object _) {}),
            );
          }
        });
        positions = p.positionStream.listen((value) {
          if (mounted) setState(() => position = value);
        });
        await p.setLoopMode(LoopMode.off);
        if (!current()) return;
      }
      if (!loaded) {
        await player!.setFilePath(widget.item.file.path);
        loaded = true;
      }
      if (!current()) return;
      if (playing) {
        await player!.pause();
        if (mounted) setState(() => playing = false);
      } else {
        await player!.setSpeed(speed);
        if (!current()) return;
        setState(() => playing = true);
        unawaited(
          player!.play().catchError((Object _) {
            if (current())
              setState(() {
                playing = false;
                error = 'Could not play this recording.';
              });
          }),
        );
      }
    } catch (_) {
      if (current()) setState(() => error = 'Could not play this recording.');
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  Future<void> share() async {
    if (!_active(ref, widget.owner)) return;
    await interruptPlayback();
    if (!mounted || !_active(ref, widget.owner)) return;
    try {
      final box = context.findRenderObject() as RenderBox?;
      await SharePlus.instance.share(
        ShareParams(
          files: [XFile(widget.item.file.path, mimeType: 'audio/wav')],
          subject: 'Call with ${widget.item.agentName}',
          sharePositionOrigin: box == null
              ? null
              : box.localToGlobal(Offset.zero) & box.size,
        ),
      );
    } catch (_) {
      if (mounted) setState(() => error = 'Could not share this recording.');
    }
  }

  Future<void> delete() async {
    await interruptPlayback();
    if (!mounted || !_active(ref, widget.owner)) return;
    final confirmed = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => Consumer(
          builder: (context, ref, _) {
            final session = ref.watch(sessionProvider);
            final current =
                session is SessionSignedIn && session.user.id == widget.owner;
            return Scaffold(
              appBar: AppBar(title: const Text('Delete recording')),
              body: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      widget.item.agentName,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'This recording will be permanently removed from this device.',
                    ),
                    const SizedBox(height: 24),
                    FilledButton(
                      onPressed: current
                          ? () => Navigator.pop(context, true)
                          : null,
                      child: const Text('Delete recording'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
    if (confirmed != true || !mounted || !_active(ref, widget.owner)) return;
    try {
      await player?.stop();
      await widget.store.delete(widget.item);
      if (mounted) Navigator.pop(context);
    } catch (_) {
      if (mounted)
        setState(() => error = 'Could not delete the recording. Retry.');
    }
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn || session.user.id != widget.owner) {
      return Scaffold(
        appBar: AppBar(title: const Text('Recording')),
        body: const Center(child: Text('Sign in to view your recording.')),
      );
    }
    final maximum = widget.item.durationMs
        .toDouble()
        .clamp(1, double.infinity)
        .toDouble();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recording'),
        actions: [
          IconButton(
            tooltip: 'Share recording',
            onPressed: share,
            icon: const Icon(Icons.share_outlined),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Icon(Icons.graphic_eq, size: 72),
          const SizedBox(height: 24),
          Text(
            widget.item.agentName,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            _date(context, widget.item.createdAt),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Slider(
            label: _duration(position.inMilliseconds),
            min: 0,
            max: maximum,
            value: position.inMilliseconds
                .toDouble()
                .clamp(0, maximum)
                .toDouble(),
            onChanged: player == null
                ? null
                : (value) {
                    unawaited(
                      player!.seek(Duration(milliseconds: value.toInt())),
                    );
                  },
          ),
          Text(
            '${_duration(position.inMilliseconds)} / ${_duration(widget.item.durationMs)}',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                tooltip: 'Back 10 seconds',
                onPressed: player == null
                    ? null
                    : () => player!.seek(
                        Duration(
                          milliseconds: (position.inMilliseconds - 10000).clamp(
                            0,
                            widget.item.durationMs,
                          ),
                        ),
                      ),
                icon: const Icon(Icons.replay_10),
              ),
              IconButton(
                tooltip: playing ? 'Pause' : 'Play',
                onPressed: busy ? null : toggle,
                iconSize: 56,
                icon: Icon(
                  playing
                      ? Icons.pause_circle_outline
                      : Icons.play_circle_outline,
                ),
              ),
              IconButton(
                tooltip: 'Forward 10 seconds',
                onPressed: player == null
                    ? null
                    : () => player!.seek(
                        Duration(
                          milliseconds: (position.inMilliseconds + 10000).clamp(
                            0,
                            widget.item.durationMs,
                          ),
                        ),
                      ),
                icon: const Icon(Icons.forward_10),
              ),
            ],
          ),
          Center(
            child: TextButton(
              onPressed: () {
                setState(
                  () => speed = speed == 1
                      ? 1.5
                      : speed == 1.5
                      ? 2
                      : 1,
                );
                unawaited(player?.setSpeed(speed) ?? Future.value());
              },
              child: Text('${speed}×'),
            ),
          ),
          if (error != null) Text(error!, textAlign: TextAlign.center),
          const SizedBox(height: 24),
          OutlinedButton.icon(
            onPressed: delete,
            icon: const Icon(Icons.delete_outline),
            label: const Text('Delete recording'),
          ),
        ],
      ),
    );
  }
}
