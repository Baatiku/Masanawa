import '../gb_wallet/ngn_funding_screen.dart';
import '../gb_wallet/recharge_screen.dart';
import '../gb_wallet/gb_send_screen.dart';
import '../gb_wallet/gb_request_screen.dart';
import '../gb_wallet/gb_wallet_activity_screen.dart';
import '../gb_wallet/gb_wallet_activity_detail_screen.dart';
import '../screens/profile/person_profile_screen.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../screens/chat/ai_chat_screen.dart';
import '../screens/onboarding/name_screen.dart';
import '../screens/onboarding/otp_screen.dart';
import '../screens/onboarding/phone_login_screen.dart';
import '../screens/profile/edit_profile_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../screens/settings/notification_preferences_screen.dart';
import '../core/startup_metrics.dart';
import '../screens/chat/masana_list_screen.dart';
import '../screens/search/unified_search_screen.dart';
import '../screens/search/resource_link_screens.dart';
import '../screens/twin/shell_tab.dart';
import '../shell/five_tab_shell.dart';
import '../shell/startup_gate.dart';
import '../state/session_state.dart';

/// The five canonical root destinations. These are navigation indices only,
/// not a pricing, identity or task-authority contract.
int shellRootTabIndex(String? tab) => MasanawaRootTab.fromQuery(tab).index;

/// Retired shell links land on their closest current tab.
String? legacyShellDestination(String? tab) => switch (tab) {
  'create' => '/home?tab=status',
  'activity' => '/home?tab=status',
  'rooms' => '/home?tab=status',
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
      if (isSignedIn &&
          resumeLocation != null &&
          (path == '/chats' ||
              path == '/phone-login' ||
              path == '/otp' ||
              path == '/home')) {
        final target = resumeLocation;
        final owner = resumeOwner;
        resumeLocation = null;
        resumeOwner = null;
        if (owner == session.user.id &&
            target != null &&
            target.length <= 300 &&
            target.startsWith('/')) {
          if (target != state.uri.toString()) return target;
        }
      }
      if (!isSignedIn &&
          path == '/phone-login' &&
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
        if (session is SessionPasswordRequired) return '/phone-login';
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

      final protected =
          path.startsWith('/human/') ||
          path == '/share' ||
          path == '/privacy' ||
          path.startsWith('/calls/incoming/') ||
          path.startsWith('/status/') ||
          path.startsWith('/masana/') ||
          path.startsWith('/wallet/') ||
          path == '/wallet/pay' ||
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
        final expiredOwner = ref
            .read(sessionProvider.notifier)
            .recentlyExpiredOwnerId;
        if (expiredOwner != null && state.uri.toString().length <= 300) {
          resumeLocation = state.uri.toString();
          resumeOwner = expiredOwner;
        }
        return '/phone-login';
      }

      // Retired shell deep links land on their closest current tab.
      if (path == '/home') {
        final oldDestination = legacyShellDestination(
          state.uri.queryParameters['tab'],
        );
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
      GoRoute(path: '/password', redirect: (_, __) => '/phone-login'),
      GoRoute(path: '/name', builder: (_, _) => const NameScreen()),
      GoRoute(
        path: '/home',
        builder: (_, state) {
          final index = shellRootTabIndex(state.uri.queryParameters['tab']);
          return StartupGate(child: FiveTabShell(initialIndex: index));
        },
      ),
      // Legacy publishing, user-to-user Talks, personal
      // Twins are retired. Preserve inbound URLs without mounting forbidden
      // workflows or implying that users may create content.
      GoRoute(path: '/activity', redirect: (_, __) => '/home?tab=status'),
      GoRoute(path: '/search', builder: (_, __) => const UnifiedSearchScreen()),
      GoRoute(
        path: '/notifications',
        builder: (_, __) => const NotificationPreferencesScreen(),
      ),
      GoRoute(path: '/talk/create', redirect: (_, __) => '/home?tab=status'),
      GoRoute(path: '/talk/:id', redirect: (_, __) => '/home?tab=status'),
      GoRoute(
        path: '/u/:handle',
        builder: (_, state) =>
            PersonProfileScreen(handle: state.pathParameters['handle']!),
      ),
      GoRoute(path: '/persona/:publicId', redirect: (_, __) => '/masana'),
      // Legacy finance links cannot mount old currency, custody or bill
      // screens during the MB-ledger cutover.
      GoRoute(path: '/wallet/pay', redirect: (_, __) => '/home?tab=wallet'),
      GoRoute(
        path: '/wallet/transactions/:id',
        redirect: (_, __) => '/home?tab=wallet',
      ),
      GoRoute(path: '/wallet', redirect: (_, __) => '/home?tab=wallet'),
      GoRoute(path: '/wallet/activity',
        builder: (_, __) => const GbWalletActivityScreen()),
      GoRoute(path: '/wallet/activity/:entryId',
        builder: (_, state) => GbWalletActivityDetailScreen(
          entryId: state.pathParameters['entryId']!)),
      GoRoute(
        path: '/wallet/fund',
        builder: (_, __) => const NgnFundingScreen(),
      ),
      GoRoute(
        path: '/wallet/add',
        builder: (_, __) => const RechargePackagesScreen(),
      ),
      GoRoute(
        path: '/wallet/request',
        builder: (_, __) => const GbRequestScreen(),
      ),
      GoRoute(path: '/wallet/send', builder: (_, __) => const GbSendScreen()),
      GoRoute(
        path: '/calls/incoming/:callId',
        redirect: (_, __) => '/home?tab=calls',
      ),
      GoRoute(path: '/chats', redirect: (_, __) => '/home?tab=chats'),
      GoRoute(path: '/share', redirect: (_, __) => '/home?tab=chats'),
      GoRoute(
        path: '/human/quick-reply',
        redirect: (_, __) => '/home?tab=chats',
      ),
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
      GoRoute(path: '/agents', redirect: (_, __) => '/home?tab=chats'),
      GoRoute(path: '/masana', builder: (_, _) => const MasanaListScreen()),
      GoRoute(
        path: '/masana/:id',
        builder: (_, state) =>
            MasanaResourceLinkScreen(characterId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/status/:postId',
        builder: (_, state) =>
            StatusResourceLinkScreen(postId: state.pathParameters['postId']!),
      ),
      GoRoute(path: '/rooms/:id', redirect: (_, __) => '/home?tab=status'),
      GoRoute(path: '/human/chat/:id', redirect: (_, __) => '/home?tab=chats'),
      GoRoute(path: '/human/call/:id', redirect: (_, __) => '/home?tab=calls'),
      GoRoute(path: '/privacy', redirect: (_, __) => '/settings'),
      GoRoute(path: '/human/requests', redirect: (_, __) => '/home?tab=chats'),
      GoRoute(path: '/settings', builder: (_, _) => const SettingsScreen()),
      GoRoute(path: '/billing', redirect: (_, __) => '/home?tab=data'),
      GoRoute(path: '/crypto', redirect: (_, __) => '/home?tab=wallet'),
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
