import '../calls/incoming_call_coordinator.dart';
import '../calls/incoming_call_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../finance/crypto_wallet_screen.dart';
import '../screens/billing/billing_screen.dart';
import '../screens/chat/ai_chat_screen.dart';
import '../screens/onboarding/name_screen.dart';
import '../screens/onboarding/otp_screen.dart';
import '../screens/onboarding/password_screen.dart';
import '../screens/onboarding/phone_login_screen.dart';
import '../screens/profile/edit_profile_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../screens/settings/notification_preferences_screen.dart';
import '../core/startup_metrics.dart';
import '../screens/chat/masana_list_screen.dart';
import '../screens/search/unified_search_screen.dart';
import '../screens/search/resource_link_screens.dart';
import '../screens/rooms/rooms_screen.dart' show MasanaRoomDetailScreen;
import '../screens/twin/shell_tab.dart';
import '../shell/five_tab_shell.dart';
import '../shell/startup_gate.dart';
import '../screens/wallet/wallet_screen.dart';
import '../state/session_state.dart';

/// The five canonical root destinations. These are navigation indices only,
/// not a pricing, identity or task-authority contract.
int shellRootTabIndex(String? tab) =>
    MasanawaRootTab.fromQuery(tab).index;

/// Retired shell links land on their closest current tab.
String? legacyShellDestination(String? tab) => switch (tab) {
      'create' => '/home?tab=status',
      'activity' => '/home?tab=status',
      'agents' => '/home?tab=chats',
      'wallet' => '/home?tab=wallet',
      'talk' => '/home?tab=status',
      'home' => '/home?tab=chats',
      _ => null,
    };

/// Chats-first router. Secure local session restoration happens inline on
/// /home, not through a separate branded splash screen or a fixed timer.
/// Legacy links remain redirects to supported destinations.
final appRouterProvider = Provider<GoRouter>((ref) {
  String? resumeLocation;
  String? resumeOwner;
  final router = GoRouter(
    initialLocation: '/home?tab=chats',
    redirect: (context, state) {
      final path = state.matchedLocation;

      if (path == '/splash') return '/home?tab=chats';
      if (path == '/chat' || path == '/chats') return '/home?tab=chats';
      if (path == '/agents') return '/home?tab=chats';

      final session = ref.read(sessionProvider);
      final isSignedIn = session is SessionSignedIn;

      // Redirect only to internal protected paths, and only after the same
      // account returns. A different account must not inherit a private route.
      if (isSignedIn && resumeLocation != null &&
          (path == '/chats' || path == '/phone-login' ||
           path == '/otp' || path == '/home')) {
        final target = resumeLocation;
        final owner = resumeOwner;
        resumeLocation = null;
        resumeOwner = null;
        if (owner == session.user.id && target != null &&
            target.length <= 300 && target.startsWith('/')) {
          if (target != state.uri.toString()) return target;
        }
      }
      if (!isSignedIn && path == '/phone-login' &&
          ref.read(sessionProvider.notifier).recentlyExpiredOwnerId == null) {
        resumeLocation = null;
        resumeOwner = null;
      }

      // The /home widget itself only paints a neutral progress indicator
      // during secure-storage restoration; neither local conversations nor
      // protected child widgets are mounted until an account is restored.
      if (session is SessionRestoring ||
          session is SessionSendingOtp ||
          session is SessionVerifying) {
        return null;
      }

      // Resume in-progress sign-up states without showing authenticated Chats.
      if (path == '/home') {
        if (session is SessionNameRequired ||
            session is SessionRegisterProfile) {
          return '/name';
        }
        if (session is SessionPasswordRequired) {
          return '/password?phone=${Uri.encodeComponent(session.identifier)}'
              '&setup=${session.setup ? '1' : '0'}';
        }
        if (session is SessionAwaitingOtp) return '/otp';
        // Signed-in users have completed account creation. Optional
        // profile fields belong to Settings, not a mandatory auth loop.
      }

      if (isSignedIn && (path == '/phone-login' || path == '/otp')) {
        return '/home';
      }

      if (path == '/name') {
        if (session is SessionNameRequired) return null;
        if (isSignedIn) return '/home';
        return '/phone-login';
      }

      final protected = path.startsWith('/calls/incoming/') ||
          path.startsWith('/status/') ||
          path.startsWith('/masana/') ||
          path.startsWith('/wallet/transactions/') ||
          path == '/home' ||
          path == '/activity' ||
          path == '/search' ||
          path == '/notifications' ||
          path == '/chats' ||
          path.startsWith('/chat/') ||
          path.startsWith('/rooms/') ||
          path.startsWith('/talk/') ||
          path.startsWith('/u/') ||
          path.startsWith('/persona/') ||
          path == '/agents' ||
          path == '/masana' ||
          path == '/settings' ||
          path == '/wallet' ||
          path == '/billing' ||
          path == '/crypto' ||
          path == '/profile';
      if (!isSignedIn && protected) {
        final expiredOwner=ref.read(sessionProvider.notifier).recentlyExpiredOwnerId;
        if(expiredOwner!=null && state.uri.toString().length<=300) {
          resumeLocation=state.uri.toString();
          resumeOwner=expiredOwner;
        }
        return '/phone-login';
      }

      // Retired shell deep links land on their closest current tab.
      if (path == '/home') {
        final oldDestination = legacyShellDestination(
          state.uri.queryParameters['tab']);
        if (oldDestination != null) return oldDestination;
      }
      return null;
    },
    routes: [
      // Old splash links now redirect; no splash page is constructed.
      GoRoute(path: '/splash', redirect: (_, __) => '/home?tab=chats'),
      GoRoute(
        path: '/phone-login',
        builder: (_, _) => const PhoneLoginScreen(),
      ),
      GoRoute(path: '/otp', builder: (_, _) => const OtpScreen()),
      GoRoute(
        path: '/password',
        builder: (_, state) => PasswordScreen(
          phone: state.uri.queryParameters['phone'] ?? '',
          setup: state.uri.queryParameters['setup'] == '1',
        ),
      ),
      GoRoute(path: '/name', builder: (_, _) => const NameScreen()),
      GoRoute(
        path: '/home',
        builder: (_, state) {
          final index = shellRootTabIndex(
            state.uri.queryParameters['tab']);
          return StartupGate(
            child: IncomingCallCoordinator(
              child: FiveTabShell(initialIndex: index),
            ),
          );
        },
      ),
      // Legacy publishing, user-to-user Talks, human profiles and personal
      // Twins are retired. Preserve inbound URLs without mounting forbidden
      // workflows or implying that users may create content.
      GoRoute(path: '/activity',
        redirect: (_, __) => '/home?tab=status'),
      GoRoute(path: '/search',
        builder: (_, __) => const UnifiedSearchScreen()),
      GoRoute(path: '/notifications',
        builder: (_, __) => const NotificationPreferencesScreen()),
      GoRoute(path: '/talk/create',
        redirect: (_, __) => '/home?tab=status'),
      GoRoute(path: '/talk/:id',
        redirect: (_, __) => '/home?tab=status'),
      GoRoute(path: '/u/:handle',
        redirect: (_, __) => '/masana'),
      GoRoute(path: '/persona/:publicId',
        redirect: (_, __) => '/masana'),
      GoRoute(
        path: '/wallet/transactions/:id',
        builder: (context, state) => WalletScreen(
          initialTransactionId: state.pathParameters['id'],
          onBuyBills: () => context.push('/billing'),
          onOpenCrypto: () => context.push('/crypto'),
        ),
      ),
      GoRoute(
        path: '/wallet',
        builder: (context, _) => WalletScreen(
          onBuyBills: () => context.push('/billing'),
          onOpenCrypto: () => context.push('/crypto'),
        ),
      ),
      GoRoute(
        path: '/calls/incoming/:callId',
        builder: (context, state) => IncomingCallScreen(
          callId: state.pathParameters['callId']!,
        ),
      ),
      GoRoute(path: '/chats', redirect: (_, __) => '/home?tab=chats'),
      GoRoute(
        path: '/chat/:id',
        builder: (context, state) {
          final entry = switch (state.uri.queryParameters['entry']) {
            'study' => AiChatEntryMode.study,
            'voice-note' => AiChatEntryMode.liveTalk,
            'live-talk' => AiChatEntryMode.liveTalk,
            'live-voice' => AiChatEntryMode.liveVoice,
            'cafe' => AiChatEntryMode.cafe,
            _ => AiChatEntryMode.chat,
          };
          return AiChatScreen(
            characterId: state.pathParameters['id']!,
            entryMode: entry,
            initialPrompt: state.uri.queryParameters['prompt'],
          );
        },
      ),
      GoRoute(
        path: '/agents', redirect: (_, __) => '/home?tab=chats'),
      GoRoute(path: '/masana', builder: (_, _) => const MasanaListScreen()),
      GoRoute(path: '/masana/:id', builder: (_, state) =>
        MasanaResourceLinkScreen(characterId: state.pathParameters['id']!)),
      GoRoute(path: '/status/:postId', builder: (_, state) =>
        StatusResourceLinkScreen(postId: state.pathParameters['postId']!)),
      GoRoute(path:'/rooms/:id',builder:(_,state)=>MasanaRoomDetailScreen(roomId:state.pathParameters['id']!)),
      GoRoute(path: '/settings', builder: (_, _) => const SettingsScreen()),
      GoRoute(
        path: '/billing',
        builder: (_, state) => BillingScreen(
          initialService: state.uri.queryParameters['service'],
        ),
      ),
      GoRoute(path: '/crypto', builder: (_, _) => const CryptoWalletScreen()),
      GoRoute(path: '/profile', builder: (_, _) => const EditProfileScreen()),
    ],
  );

  // Restoring -> SignedOut keeps isSignedIn=false throughout; listening only
  // to the boolean would leave the launch page stuck indefinitely. Refresh
  // on the actual session transition, including a failed restore.
  ref.listen<SessionState>(sessionProvider, (_, next) {
    if (next is! SessionRestoring) {
      MasanawaStartupMetrics.mark('session_resolved');
    }
    router.refresh();
  });
  return router;
});
