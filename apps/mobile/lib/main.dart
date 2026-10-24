import 'src/core/live_call_foreground.dart';
import 'src/human_calls/human_calls.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'src/localization/masanawa_localization.dart';
import 'src/localization/locale_preference.dart';
import 'src/localization/locale_preference_scope.dart';
import 'src/core/mobile_push.dart';
import 'src/core/startup_metrics.dart';
import 'src/core/mobile_diagnostics.dart';
import 'src/core/pending_deep_link.dart';
import 'src/core/shell_deep_link.dart';
import 'src/features/share_intake/incoming_share.dart';
import 'src/features/notification_reply/notification_reply.dart';
import 'src/router/app_router.dart';
import 'src/state/session_state.dart';
import 'src/theme/masanawa_theme.dart';

Future<void> main() async {
  MasanawaStartupMetrics.mark('dart_main');
  WidgetsFlutterBinding.ensureInitialized();
  MasanawaDiagnostics.instance.install();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    MasanawaStartupMetrics.mark('first_flutter_frame');
  });
  runApp(const ProviderScope(child: MasanawaApp()));
}

class MasanawaApp extends ConsumerStatefulWidget {
  const MasanawaApp({super.key});

  @override
  ConsumerState<MasanawaApp> createState() => _MasanawaAppState();
}

class _MasanawaAppState extends ConsumerState<MasanawaApp> {
  StreamSubscription<Uri>? _links;
  final _pendingLink = PendingDeepLink();
  final _incomingShare = IncomingShareService.instance;
  final _quickReply = HumanNotificationReplyInbox.instance;
  bool _linkDrainScheduled = false;
  bool _shareDrainScheduled = false;
  bool _replyDrainScheduled = false;
  late int _linkAuthorizationEpoch;
  late final GoRouter _router;
  late final LocalePreferenceController _localePreference;

  @override
  void initState() {
    super.initState();
    _linkAuthorizationEpoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    final initialSession = ref.read(sessionProvider);
    _incomingShare.updateAuthorization(
      initialSession is SessionSignedIn ? initialSession.user.id : null,
      _linkAuthorizationEpoch,
    );
    _quickReply.bindAuthorization(
      initialSession is SessionSignedIn ? initialSession.user.id : null,
      _linkAuthorizationEpoch,
    );
    MobilePushService.instance.bindHumanReplyAuthorization(
      initialSession is SessionSignedIn ? initialSession.user.id : null,
      _linkAuthorizationEpoch,
    );
    _incomingShare.addListener(_scheduleShareDrain);
    _quickReply.addListener(_scheduleReplyDrain);
    _localePreference = LocalePreferenceController(
      SecureLocalePreferenceStore(),
    );
    unawaited(_localePreference.load());
    _links = MobilePushService.instance.deepLinks.listen(_openDeepLink);
    final initial = MobilePushService.instance.takeInitialDeepLink();
    if (initial != null) _pendingLink.offer(initial);
    _router = ref.read(appRouterProvider);
    _router.routeInformationProvider.addListener(_scheduleLinkDrain);
    _router.routeInformationProvider.addListener(_scheduleShareDrain);
    _router.routeInformationProvider.addListener(_scheduleReplyDrain);
    _scheduleLinkDrain();

    // Push/Firebase/native-link setup is useful but not required to paint the
    // first usable frame. Starting it after first paint avoids competing with
    // router/theme/session startup on slower Android devices.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      unawaited(MobilePushService.instance.initialize().catchError((_) {}));
      unawaited(_incomingShare.initialize().catchError((_) {}));
    });
  }

  void _openDeepLink(Uri uri) {
    if (!mounted) return;
    _pendingLink.offer(uri);
    _scheduleLinkDrain();
  }

  void _scheduleLinkDrain() {
    if (!mounted || _linkDrainScheduled) return;
    _linkDrainScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _linkDrainScheduled = false;
      if (!mounted) return;
      final session = ref.read(sessionProvider);
      final router = ref.read(appRouterProvider);
      final uri = _pendingLink.take(
        ready: session is SessionSignedIn && !session.user.isNewUser,
      );
      if (uri != null) {
        final route = shellDeepLinkRoute(uri);
        if (route != null &&
            canOpenIncomingCallRoute(
              currentPath: router.routeInformationProvider.value.uri.path,
              targetPath: route,
              hasActiveCall:
                  LiveCallForeground.active ||
                  ref.read(humanCallControllerProvider).active,
            )) {
          router.go(route);
        }
      }
    });
    WidgetsBinding.instance.ensureVisualUpdate();
  }

  void _scheduleShareDrain() {
    if (!mounted || _shareDrainScheduled) return;
    _shareDrainScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _shareDrainScheduled = false;
      if (!mounted) return;
      final session = ref.read(sessionProvider);
      final draft = _incomingShare.pending;
      if (session is! SessionSignedIn || session.user.isNewUser || draft == null ||
          (_quickReply.pending != null &&
              _quickReply.authorized(_quickReply.pending!)) ||
          LiveCallForeground.active ||
          ref.read(humanCallControllerProvider).active) return;
      final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
      if (!_incomingShare.authorized(session.user.id, epoch, draft.token)) return;
      final router = ref.read(appRouterProvider);
      if (router.routeInformationProvider.value.uri.path != '/share') {
        router.go('/share');
      }
    });
    WidgetsBinding.instance.ensureVisualUpdate();
  }

  void _scheduleReplyDrain() {
    if (!mounted || _replyDrainScheduled) return;
    _replyDrainScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _replyDrainScheduled = false;
      if (!mounted) return;
      final session = ref.read(sessionProvider);
      final reply = _quickReply.pending;
      if (session is! SessionSignedIn || session.user.isNewUser ||
          reply == null ||
          LiveCallForeground.active ||
          ref.read(humanCallControllerProvider).active ||
          !_quickReply.authorized(reply)) return;
      final router = ref.read(appRouterProvider);
      if (router.routeInformationProvider.value.uri.path != '/human/quick-reply') {
        router.go('/human/quick-reply');
      }
    });
    WidgetsBinding.instance.ensureVisualUpdate();
  }

  @override
  void dispose() {
    _links?.cancel();
    _incomingShare.removeListener(_scheduleShareDrain);
    _quickReply.removeListener(_scheduleReplyDrain);
    _localePreference.dispose();
    _router.routeInformationProvider.removeListener(_scheduleLinkDrain);
    _router.routeInformationProvider.removeListener(_scheduleShareDrain);
    _router.routeInformationProvider.removeListener(_scheduleReplyDrain);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(sessionProvider, (previous, next) {
      final nextEpoch = ref.read(sessionProvider.notifier).authorizationEpoch;
      if (previous is SessionSignedIn &&
          (next is! SessionSignedIn || next.user.id != previous.user.id ||
              nextEpoch != _linkAuthorizationEpoch)) {
        // A queued private navigation hint cannot cross accounts.
        _pendingLink.clear();
      }
      _linkAuthorizationEpoch = nextEpoch;
      _incomingShare.updateAuthorization(
        next is SessionSignedIn ? next.user.id : null, nextEpoch,
      );
      _quickReply.bindAuthorization(
        next is SessionSignedIn ? next.user.id : null, nextEpoch,
      );
      MobilePushService.instance.bindHumanReplyAuthorization(
        next is SessionSignedIn ? next.user.id : null, nextEpoch,
      );
      _scheduleLinkDrain();
      _scheduleShareDrain();
      _scheduleReplyDrain();
    });
    final router = ref.watch(appRouterProvider);
    return ListenableBuilder(
      listenable: _localePreference,
      builder: (context, _) => LocalePreferenceScope(
        controller: _localePreference,
        child: MaterialApp.router(
          title: 'Masanawa',
          // Keep low-sensitivity UI position over Android process recreation.
          restorationScopeId: 'masanawa-app',
          debugShowCheckedModeBanner: false,
          theme: buildMasanawaTheme(brightness: Brightness.light),
          // R01: never follow the device into an unrequested dark theme.
          themeMode: ThemeMode.light,
          locale: _localePreference.localeOverride,
          supportedLocales: MasanawaLocalization.supportedLocales,
          localizationsDelegates: MasanawaLocalization.delegates,
          localeListResolutionCallback: (deviceLocales, supportedLocales) =>
              MasanawaLocalization.resolvePreferred(
                deviceLocales,
                supportedLocales,
              ),
          routerConfig: router,
          builder: (context, child) =>
              HumanCallCoordinator(child: child ?? const SizedBox.shrink()),
        ),
      ),
    );
  }
}
