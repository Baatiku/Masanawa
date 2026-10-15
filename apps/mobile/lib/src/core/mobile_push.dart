import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/services.dart';

import '../agents/agent_shell.dart';
import 'request_id.dart';
import 'shell_deep_link.dart';

const _firebaseApiKey = String.fromEnvironment(
  'FIREBASE_API_KEY',
  defaultValue: '',
);
const _firebaseAppId = String.fromEnvironment(
  'FIREBASE_APP_ID',
  defaultValue: '',
);
const _firebaseSenderId = String.fromEnvironment(
  'FIREBASE_MESSAGING_SENDER_ID',
  defaultValue: '',
);
const _firebaseProjectId = String.fromEnvironment(
  'FIREBASE_PROJECT_ID',
  defaultValue: '',
);

bool get firebasePushConfigured =>
    _firebaseApiKey.isNotEmpty &&
    _firebaseAppId.isNotEmpty &&
    _firebaseSenderId.isNotEmpty &&
    _firebaseProjectId.isNotEmpty;

FirebaseOptions get _firebaseOptions => const FirebaseOptions(
  apiKey: _firebaseApiKey,
  appId: _firebaseAppId,
  messagingSenderId: _firebaseSenderId,
  projectId: _firebaseProjectId,
);

const _incomingCallChannel = AndroidNotificationChannel(
  'masanawa_calls',
  'Incoming Masana calls',
  description: 'Ringing invitations from your Masana contacts',
  importance: Importance.max,
  playSound: true,
);

const _workChannel = AndroidNotificationChannel(
  'masanawa_work',
  'Masanawa updates',
  description: 'Agent replies, approvals and completed work',
  importance: Importance.high,
);

const _callNotificationDetails = NotificationDetails(
  android: AndroidNotificationDetails(
    'masanawa_calls',
    'Incoming Masana calls',
    channelDescription: 'Ringing invitations from your Masana contacts',
    category: AndroidNotificationCategory.call,
    importance: Importance.max,
    priority: Priority.max,
    playSound: true,
  ),
  iOS: DarwinNotificationDetails(presentSound: true),
);

const _workNotificationDetails = NotificationDetails(
  android: AndroidNotificationDetails(
    'masanawa_work',
    'Masanawa updates',
    channelDescription: 'Agent replies, approvals and completed work',
    importance: Importance.high,
    priority: Priority.high,
  ),
  iOS: DarwinNotificationDetails(),
);

bool isIncomingCallPush(Map<String, dynamic> data) {
  if (data['type'] != 'incoming_call' || data['callId'] is! String) {
    return false;
  }
  final callId = data['callId'] as String;
  final uri = Uri.tryParse(
    'masanawa://calls/incoming/${Uri.encodeComponent(callId)}',
  );
  return uri != null &&
      shellDeepLinkRoute(uri)?.startsWith('/calls/incoming/') == true;
}

@pragma('vm:entry-point')
Future<void> masanawaFirebaseBackgroundMessage(RemoteMessage message) async {
  if (!firebasePushConfigured) return;
  await Firebase.initializeApp(options: _firebaseOptions);
  // Notification-bearing FCM messages are already displayed by Android
  // while backgrounded. Only show data-only call invitations here.
  if (!isIncomingCallPush(message.data) || message.notification != null) {
    return;
  }
  final notifications = FlutterLocalNotificationsPlugin();
  await notifications.initialize(
    settings: const InitializationSettings(
      android: AndroidInitializationSettings('ic_launcher'),
      iOS: DarwinInitializationSettings(),
    ),
  );
  final android = notifications.resolvePlatformSpecificImplementation<
      AndroidFlutterLocalNotificationsPlugin>();
  await android?.createNotificationChannel(_incomingCallChannel);
  final callId = message.data['callId'] as String;
  await notifications.show(
    id: callId.hashCode,
    title: 'Incoming Masana call',
    body: 'Open Calls to respond',
    notificationDetails: _callNotificationDetails,
    payload: 'masanawa://calls/incoming/${Uri.encodeComponent(callId)}',
  );
}

class MobilePushService {
  MobilePushService._();

  static final instance = MobilePushService._();
  static const _storage = FlutterSecureStorage();
  static const _installationKey = 'masanawa.push.installation.v1';
  static const _enabledKey = 'masanawa.push.enabled.v1';
  static final _links = StreamController<Uri>.broadcast(sync: true);
  static final _incomingHints = StreamController<Uri>.broadcast(sync: true);
  static final _notifications = FlutterLocalNotificationsPlugin();
  static bool _initialized = false;
  static bool _nativeLinksInitialized = false;
  static Future<void>? _initializing;
  static Uri? _initialLink;
  static const _nativeLinks = MethodChannel('masanawa/deep_links');
  static String? _installationId;
  static AgentShellTransport? _transport;
  static String? _characterId;
  static int _contextGeneration = 0;
  static StreamSubscription<String>? _tokenRefresh;
  static StreamSubscription<RemoteMessage>? _foreground;
  static StreamSubscription<RemoteMessage>? _opened;

  Stream<Uri> get deepLinks => _links.stream;
  Stream<Uri> get incomingHints => _incomingHints.stream;
  bool get configured => firebasePushConfigured;

  Uri? takeInitialDeepLink() {
    final link = _initialLink;
    _initialLink = null;
    return link;
  }

  Future<void> initialize() async {
    if (_initialized) return;
    final active = _initializing;
    if (active != null) return active;
    final future = _initialize();
    _initializing = future;
    try {
      await future;
    } finally {
      _initializing = null;
    }
  }

  Future<void> _initialize() async {
    if (!_nativeLinksInitialized) {
      _nativeLinks.setMethodCallHandler((call) async {
        if (call.method == 'open' && call.arguments is String) {
          _emitLink(call.arguments as String);
        }
      });
      try {
        final raw = await _nativeLinks.invokeMethod<String>('initial');
        if (raw != null) _emitLink(raw);
      } on MissingPluginException {
        // Native URI bridge is Android-only.
      } on PlatformException {
        // Push navigation remains available independently.
      }
      _nativeLinksInitialized = true;
    }
    if (!firebasePushConfigured) return;
    await Firebase.initializeApp(options: _firebaseOptions);
    FirebaseMessaging.onBackgroundMessage(masanawaFirebaseBackgroundMessage);

    await _notifications.initialize(
      settings: const InitializationSettings(
        android: AndroidInitializationSettings('ic_launcher'),
        iOS: DarwinInitializationSettings(
          requestAlertPermission: false,
          requestBadgePermission: false,
          requestSoundPermission: false,
        ),
      ),
      onDidReceiveNotificationResponse: (response) {
        final payload = response.payload;
        if (payload != null) _emitLink(payload);
      },
    );

    // FCM background notification payloads reference these exact channel IDs.
    // Register them before token registration; otherwise Android may silently
    // fall back to a generic system channel for incoming calls.
    final channels = _notifications.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();
    await channels?.createNotificationChannel(_workChannel);
    await channels?.createNotificationChannel(_incomingCallChannel);

    final launch = await _notifications.getNotificationAppLaunchDetails();
    final localPayload = launch?.notificationResponse?.payload;
    if (launch?.didNotificationLaunchApp == true && localPayload != null) {
      _emitLink(localPayload);
    }

    final initial = await FirebaseMessaging.instance.getInitialMessage();
    if (initial != null) _emitMessageLink(initial);

    _foreground = FirebaseMessaging.onMessage.listen((message) async {
      final hint = _linkFor(message);
      if (hint != null) {
        final uri = Uri.tryParse(hint);
        if (uri != null &&
            shellDeepLinkRoute(uri)?.startsWith('/calls/incoming/') == true) {
          _incomingHints.add(uri);
        }
      }
      final isCall = isIncomingCallPush(message.data);
      final notification = message.notification;
      if (notification == null && !isCall) return;
      await _notifications.show(
        id: isCall
            ? (message.data['callId'] as String).hashCode
            : (message.messageId?.hashCode ??
                DateTime.now().millisecondsSinceEpoch),
        title: notification?.title ??
            (isCall ? 'Incoming Masana call' : 'Masanawa'),
        body: notification?.body ??
            (isCall ? 'Open Calls to respond' : null),
        notificationDetails: isCall
            ? _callNotificationDetails
            : _workNotificationDetails,
        payload: _linkFor(message),
      );
    });
    _opened = FirebaseMessaging.onMessageOpenedApp.listen(_emitMessageLink);
    _tokenRefresh = FirebaseMessaging.instance.onTokenRefresh.listen((_) {
      final transport = _transport;
      final characterId = _characterId;
      if (transport != null && characterId != null) {
        unawaited(
          registerForCharacter(transport, characterId).catchError((_) {}),
        );
      }
    });
    _initialized = true;
  }

  Future<bool> notificationEnabled() async {
    if (!firebasePushConfigured) return false;
    await initialize();
    if (await _storage.read(key: _enabledKey) == 'false') return false;
    final settings = await FirebaseMessaging.instance.getNotificationSettings();
    return settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional;
  }

  Future<bool> requestPermission() async {
    if (!firebasePushConfigured) return false;
    await initialize();
    final settings = await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );
    final android = _notifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();
    if (android != null) {
      await android.requestNotificationsPermission();
    }
    final allowed =
        settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional;
    await _storage.write(key: _enabledKey, value: allowed ? 'true' : 'false');
    final transport = _transport;
    final characterId = _characterId;
    if (allowed && transport != null && characterId != null) {
      await registerForCharacter(transport, characterId).catchError((_) {});
    }
    return allowed;
  }

  Future<String> _installation() async {
    final cached =
        _installationId ?? await _storage.read(key: _installationKey);
    if (cached != null && cached.length >= 16) {
      _installationId = cached;
      return cached;
    }
    final created = createRequestId().replaceFirst('request_', 'install_');
    await _storage.write(key: _installationKey, value: created);
    _installationId = created;
    return created;
  }

  Future<void> registerForCharacter(
    AgentShellTransport transport,
    String characterId,
  ) async {
    if (!firebasePushConfigured) return;
    _transport = transport;
    _characterId = characterId;
    final generation = ++_contextGeneration;
    await initialize();
    if (generation != _contextGeneration) return;
    if (await _storage.read(key: _enabledKey) == 'false') return;
    final settings = await FirebaseMessaging.instance.getNotificationSettings();
    if (settings.authorizationStatus != AuthorizationStatus.authorized &&
        settings.authorizationStatus != AuthorizationStatus.provisional) {
      return;
    }
    final token = await FirebaseMessaging.instance.getToken();
    if (token == null || token.isEmpty) return;
    final installationId = await _installation();
    if (generation != _contextGeneration) return;
    await transport.registerPush(
      characterId: characterId,
      installationId: installationId,
      platform: Platform.isIOS ? 'ios' : 'android',
      token: token,
    );
  }

  Future<void> unregister() async {
    final transport = _transport;
    final characterId = _characterId;
    ++_contextGeneration;
    _transport = null;
    _characterId = null;
    _initialLink = null;
    await _storage.write(key: _enabledKey, value: 'false');
    if (transport != null && characterId != null) {
      try {
        await transport.unregisterPush(
          characterId: characterId,
          installationId: await _installation(),
        );
      } catch (_) {}
    }
    try {
      await FirebaseMessaging.instance.deleteToken();
    } catch (_) {}
  }

  void _emitMessageLink(RemoteMessage message) {
    final link = _linkFor(message);
    if (link != null) _emitLink(link);
  }

  String? _linkFor(RemoteMessage message) {
    final explicit = message.data['deepLink'];
    if (explicit is String && explicit.isNotEmpty) return explicit;
    final callId = message.data['callId'];
    if (message.data['type'] == 'incoming_call' && callId is String) {
      final raw = 'masanawa://calls/incoming/${Uri.encodeComponent(callId)}';
      final uri = Uri.tryParse(raw);
      if (uri != null && shellDeepLinkRoute(uri) != null) return raw;
      return null;
    }
    final characterId = message.data['characterId'];
    if (characterId is String && characterId.startsWith('character_')) {
      return 'masanawa://chat/${Uri.encodeComponent(characterId)}';
    }
    return null;
  }

  void _emitLink(String raw) {
    final uri = Uri.tryParse(raw);
    if (uri == null || shellDeepLinkRoute(uri) == null) return;
    if (_links.hasListener) {
      _links.add(uri);
    } else {
      _initialLink = uri;
    }
  }

  Future<void> dispose() async {
    await _tokenRefresh?.cancel();
    await _foreground?.cancel();
    await _opened?.cancel();
    _tokenRefresh = null;
    _foreground = null;
    _opened = null;
    _initialized = false;
  }
}
