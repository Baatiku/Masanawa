import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/mobile_push.dart';
import '../router/app_router.dart';
import '../state/session_state.dart';
import 'controller.dart';
import 'transport.dart';

/// Present across all routes; minimizes an active call without disposing media.
class HumanCallCoordinator extends ConsumerStatefulWidget {
  const HumanCallCoordinator({super.key, required this.child});
  final Widget child;
  @override
  ConsumerState<HumanCallCoordinator> createState() =>
      _HumanCallCoordinatorState();
}

class _HumanCallCoordinatorState extends ConsumerState<HumanCallCoordinator>
    with WidgetsBindingObserver {
  Timer? _timer;
  StreamSubscription<Uri>? _push;
  HumanCallRecord? _incoming;
  String? _owner;
  int? _authorizationEpoch;
  int _epoch = 0;
  bool _loading = false, _foreground = true;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _timer = Timer.periodic(
      const Duration(seconds: 4),
      (_) => unawaited(_refresh()),
    );
    _push = MobilePushService.instance.incomingHints.listen((_) {
      unawaited(_refresh());
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) unawaited(_refresh());
    });
  }

  @override
  void dispose() {
    _epoch++;
    _timer?.cancel();
    unawaited(_push?.cancel());
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _foreground = state == AppLifecycleState.resumed;
    if (_foreground) unawaited(_refresh());
  }

  Future<void> _refresh() async {
    if (!mounted || _loading || !_foreground) return;
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) return;
    final owner = session.user.id, epoch = _epoch;
    final authorizationEpoch =
        ref.read(sessionProvider.notifier).authorizationEpoch;
    _loading = true;
    try {
      final result = await ref
          .read(humanCallsTransportProvider)
          .request('GET', '/calls/incoming');
      final active = ref.read(sessionProvider);
      if (!mounted ||
          epoch != _epoch ||
          active is! SessionSignedIn ||
          active.user.id != owner ||
          ref.read(sessionProvider.notifier).authorizationEpoch !=
              authorizationEpoch)
        return;
      final rows = result['items'];
      final calls = rows is List
          ? rows
                .whereType<Map>()
                .map((r) => HumanCallRecord.fromJson(r.cast<String, dynamic>()))
                .where((c) =>
                    c.state == 'ringing' &&
                    (c.expiresAt == null ||
                        c.expiresAt!.isAfter(DateTime.now())))
                .toList()
          : <HumanCallRecord>[];
      setState(() => _incoming = calls.isEmpty ? null : calls.first);
    } catch (_) {
      /* Authorized screen rechecks each hint; polling resumes after error. */
    } finally {
      if (epoch == _epoch) _loading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    final owner = session is SessionSignedIn ? session.user.id : null;
    final authorizationEpoch =
        ref.read(sessionProvider.notifier).authorizationEpoch;
    if (owner != _owner || authorizationEpoch != _authorizationEpoch) {
      _owner = owner;
      _authorizationEpoch = authorizationEpoch;
      _epoch++;
      _incoming = null;
      _loading = false;
      if (owner != null)
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) unawaited(_refresh());
        });
    }
    if (owner == null) return widget.child;
    final c = ref.watch(humanCallControllerProvider);
    final active = c.active ? c.call : null;
    final incoming = active == null &&
            _incoming?.state == 'ringing' &&
            (_incoming?.expiresAt == null ||
                _incoming!.expiresAt!.isAfter(DateTime.now()))
        ? _incoming
        : null;
    final call = active ?? incoming;
    final router = ref.watch(appRouterProvider);
    final alreadyShowing = router.routerDelegate.currentConfiguration.uri.path
        .startsWith('/human/call/');
    if (call == null || alreadyShowing) return widget.child;
    void openCall() {
      final current = ref.read(sessionProvider);
      if (current is! SessionSignedIn ||
          current.user.id != owner ||
          ref.read(sessionProvider.notifier).authorizationEpoch !=
              authorizationEpoch ||
          (call.state == 'ringing' &&
              call.expiresAt != null &&
              !call.expiresAt!.isAfter(DateTime.now()))) return;
      router.push('/human/call/${Uri.encodeComponent(call.id)}');
    }
    return Stack(
      children: [
        widget.child,
        Positioned(
          top: MediaQuery.paddingOf(context).top + 8,
          left: 12,
          right: 12,
          child: Material(
            elevation: 6,
            borderRadius: BorderRadius.circular(14),
            color: Theme.of(context).colorScheme.primaryContainer,
            child: ListTile(
              leading: Icon(incoming != null ? Icons.ring_volume : Icons.call),
              title: Text(
                call.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                incoming != null ? 'Incoming voice call' : 'Return to call',
              ),
              trailing: IconButton(
                tooltip: incoming != null
                    ? 'Open incoming call'
                    : 'Return to call',
                icon: const Icon(Icons.open_in_full),
                onPressed: openCall,
              ),
              onTap: openCall,
            ),
          ),
        ),
      ],
    );
  }
}
