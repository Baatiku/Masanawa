import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/app_permissions.dart';
import '../core/live_call_foreground.dart';
import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'controller.dart';

Future<void> humanCallStart(
  BuildContext context,
  WidgetRef ref,
  String handle,
) async {
  if (LiveCallForeground.active &&
      !ref.read(humanCallControllerProvider).active) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Finish your current call first.')),
    );
    return;
  }
  final session = ref.read(sessionProvider);
  if (session is! SessionSignedIn) return;
  final owner = session.user.id;
  final authorizationEpoch =
      ref.read(sessionProvider.notifier).authorizationEpoch;
  final controller = ref.read(humanCallControllerProvider);
  final id = await controller.start(handle);
  final current = ref.read(sessionProvider);
  if (!context.mounted ||
      current is! SessionSignedIn ||
      current.user.id != owner ||
      ref.read(sessionProvider.notifier).authorizationEpoch != authorizationEpoch)
    return;
  if (id != null) {
    await context.push('/human/call/${Uri.encodeComponent(id)}');
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(controller.error ?? 'Could not start this call.')),
    );
  }
}

class HumanCallScreen extends ConsumerStatefulWidget {
  const HumanCallScreen({super.key, required this.callId});
  final String callId;
  @override
  ConsumerState<HumanCallScreen> createState() => _HumanCallScreenState();
}

class _HumanCallScreenState extends ConsumerState<HumanCallScreen> {
  Timer? _clock;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted)
        unawaited(ref.read(humanCallControllerProvider).open(widget.callId));
    });
    _clock = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _clock?.cancel();
    super.dispose();
  }

  String _status(HumanCallController c, HumanCallRecord? call) {
    if (call == null)
      return c.active
          ? 'Another call is already active.'
          : c.error == null ? 'Loading call…' : 'Call unavailable';
    if (!c.active)
      return switch (call.state) {
        'missed' => 'Missed call',
        'declined' => 'Call declined',
        'cancelled' => 'Call cancelled',
        'busy' => 'Busy',
        _ => 'Call ended',
      };
    if (call.state == 'ringing')
      return call.incoming ? 'Incoming voice call' : 'Calling…';
    return switch (c.mediaState) {
      'connected' => 'Connected',
      'waiting' => 'Waiting for ${call.name}…',
      'reconnecting' => 'Reconnecting…',
      'failed' => 'Audio unavailable',
      _ => 'Connecting audio…',
    };
  }

  @override
  Widget build(BuildContext context) {
    final c = ref.watch(humanCallControllerProvider), u = context.masanawa;
    final call = c.call?.id == widget.callId ? c.call : null;
    final thisCallActive = call != null && c.active;
    final incoming =
        call?.incoming == true && call?.state == 'ringing' && thisCallActive;
    final since = c.connectedAt;
    final seconds = since == null
        ? 0
        : DateTime.now().difference(since).inSeconds.clamp(0, 864000);
    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: AppBar(
        title: const Text('Voice call'),
        actions: [
          IconButton(
            tooltip: 'Minimize call',
            icon: const Icon(Icons.keyboard_arrow_down),
            onPressed: () => context.canPop()
                ? context.pop()
                : context.go('/home?tab=calls'),
          ),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight - 48,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 56,
                    foregroundImage: call?.avatarUrl?.isNotEmpty == true
                        ? NetworkImage(call!.avatarUrl!)
                        : null,
                    onForegroundImageError: call?.avatarUrl?.isNotEmpty == true
                        ? (_, __) {}
                        : null,
                    child: const Icon(Icons.person_outline, size: 52),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    call?.name ?? 'Voice call',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Semantics(
                    liveRegion: true,
                    child: Text(_status(c, call), textAlign: TextAlign.center),
                  ),
                  if (c.mediaState == 'connected' && thisCallActive && since != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        '${seconds ~/ 60}:${(seconds % 60).toString().padLeft(2, '0')}',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  if (call != null && c.error != null) ...[
                    const SizedBox(height: 16),
                    Text(c.error!, textAlign: TextAlign.center),
                    if (thisCallActive && call?.state == 'accepted')
                      TextButton(
                        onPressed: c.retryAudio,
                        child: const Text('Retry audio'),
                      ),
                    if (c.error!.contains('microphone'))
                      TextButton(
                        onPressed: AppPermissions.openSettings,
                        child: const Text('Microphone settings'),
                      ),
                  ],
                  const SizedBox(height: 32),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 18,
                    runSpacing: 14,
                    children: [
                      if (incoming)
                        FilledButton.icon(
                          key: const ValueKey('human-call-answer'),
                          onPressed: c.busy ? null : c.accept,
                          icon: const Icon(Icons.call),
                          label: const Text('Answer'),
                        ),
                      if (thisCallActive && call?.state == 'accepted') ...[
                        _CallControl(
                          label: c.muted ? 'Unmute' : 'Mute',
                          icon: c.muted ? Icons.mic_off : Icons.mic,
                          onTap: c.toggleMute,
                          selected: c.muted,
                        ),
                        _CallControl(
                          label: c.speaker ? 'Speaker on' : 'Speaker',
                          icon: c.speaker ? Icons.volume_up : Icons.hearing,
                          onTap: c.toggleSpeaker,
                          selected: c.speaker,
                        ),
                      ],
                      if (thisCallActive)
                        FilledButton.icon(
                          key: const ValueKey('human-call-end'),
                          style: FilledButton.styleFrom(
                            backgroundColor: u.emergency,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: c.end,
                          icon: const Icon(Icons.call_end),
                          label: Text(
                            incoming
                                ? 'Decline'
                                : call?.state == 'ringing'
                                ? 'Cancel'
                                : 'End call',
                          ),
                        ),
                      if (call == null && !c.active)
                        TextButton(
                          onPressed: () => c.open(widget.callId),
                          child: const Text('Try again'),
                        ),
                      if (call != null && !c.active)
                        OutlinedButton.icon(
                          onPressed: () =>
                              humanCallStart(context, ref, call.handle),
                          icon: const Icon(Icons.call),
                          label: const Text('Call again'),
                        ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Wired and Bluetooth headsets follow your phone’s audio routing.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: u.textMuted),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CallControl extends StatelessWidget {
  const _CallControl({
    required this.label,
    required this.icon,
    required this.onTap,
    required this.selected,
  });
  final String label;
  final IconData icon;
  final VoidCallback onTap;
  final bool selected;
  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButton.filledTonal(
        tooltip: label,
        isSelected: selected,
        onPressed: onTap,
        icon: Icon(icon),
      ),
      Text(label),
    ],
  );
}
