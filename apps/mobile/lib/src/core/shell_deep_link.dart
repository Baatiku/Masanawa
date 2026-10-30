import 'wallet_payment_request.dart';

/// Maps an incoming navigation hint to an existing app route. The Gateway still
/// authorizes the conversation and every action; links never carry execution
/// authority.
///
/// Public Masana links resolve straight to the public profile route; the
/// retired Twin lookup route no longer exists.
String? shellDeepLinkRoute(Uri uri) {
  final payment=parseWalletPaymentRequest(uri);
  if(payment!=null)return payment.route;
  if (uri.userInfo.isNotEmpty || uri.hasPort || uri.fragment.isNotEmpty) {
    return null;
  }

  // Old human communication links are validated and land directly on safe tabs.
  // No retired screen or call intent is instantiated.
  final human = uri.pathSegments;
  if (uri.queryParameters.isEmpty) {
    if (!uri.hasScheme &&
        !uri.hasAuthority &&
        human.length == 3 &&
        human[0] == 'human' &&
        const ['chat', 'call'].contains(human[1]) &&
        _validResourceId(human[2])) {
      return human[1] == 'call' ? '/home?tab=calls' : '/home?tab=chats';
    }
    if (uri.scheme == 'masanawa' &&
        uri.host == 'human' &&
        human.length == 2 &&
        const ['chat', 'call'].contains(human[0]) &&
        _validResourceId(human[1])) {
      return human[0] == 'call' ? '/home?tab=calls' : '/home?tab=chats';
    }
    if (uri.scheme == 'https' &&
        uri.host.toLowerCase() == 'masanawa.com' &&
        human.length == 3 &&
        human[0] == 'human' &&
        const ['chat', 'call'].contains(human[1]) &&
        _validResourceId(human[2])) {
      return human[1] == 'call' ? '/home?tab=calls' : '/home?tab=chats';
    }
    if ((uri.scheme == 'https' &&
            uri.host.toLowerCase() == 'masanawa.com' &&
            human.length == 2 &&
            human[0] == 'u') ||
        (uri.scheme == 'masanawa' && uri.host == 'u' && human.length == 1)) {
      final handle = human.last;
      if (RegExp(r'^[a-z0-9_][a-z0-9_.-]{1,39}$').hasMatch(handle))
        return '/u/${Uri.encodeComponent(handle)}';
    }
  }

  // The one opaque Status referral parameter is a navigation/attribution
  // hint, never access authority. All other caller-supplied queries remain
  // rejected, and the destination revalidates the token server-side.
  if (uri.scheme == 'masanawa' &&
      uri.host == 'status' &&
      uri.pathSegments.length == 1 &&
      _validResourceId(uri.pathSegments.single)) {
    return _statusResourceRoute(uri, uri.pathSegments.single);
  }

  // Navigation hints never grant access. The target screen loads its own
  // authorized resource after sign-in; no arbitrary tokens or queries.
  if (uri.scheme == 'masanawa' && uri.queryParameters.isEmpty) {
    final segments = uri.pathSegments;
    if (uri.host == 'rooms' &&
        segments.length == 1 &&
        _validResourceId(segments.single)) {
      return '/home?tab=status';
    }
    if (uri.host == 'masana' &&
        segments.length == 1 &&
        _validCharacterId(segments.single)) {
      return '/masana/${Uri.encodeComponent(segments.single)}';
    }
    if (uri.host == 'calls' &&
        segments.length == 1 &&
        segments.single == 'history') {
      return '/home?tab=calls';
    }
    if (uri.host == 'wallet' &&
        segments.length == 2 &&
        segments.first == 'transaction' &&
        _validTransactionId(segments.last)) {
      return '/home?tab=wallet';
    }
    if (uri.host == 'search' && segments.isEmpty) {
      return '/search';
    }
    if (uri.host == 'notifications' && segments.isEmpty) {
      return '/notifications';
    }
  }

  // Current-ledger links are navigation only; each destination reauthorizes the original record.
  if(uri.scheme=='masanawa'&&uri.host=='wallet'&&uri.queryParameters.isEmpty){
    final parts=uri.pathSegments;
    if(parts.length==1&&parts.single=='activity')return '/wallet/activity';
    if(parts.length==2&&parts.first=='activity'&&
      RegExp(r'^(mb:\d+|ngn:[A-Za-z0-9_:.-]{1,160})$').hasMatch(parts.last)){
      return '/wallet/activity/${Uri.encodeComponent(parts.last)}';
    }
    if(parts.length==2&&parts.first=='inquiry'&&
      RegExp(r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-8][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$').hasMatch(parts.last)){
      return '/home?tab=wallet';
    }
  }

  // P2P notifications must open only the authenticated Wallet surface;
  // the link is a navigation hint and never a payment authorization.
  if (uri.scheme == 'masanawa' && uri.host == 'wallet') {
    if (uri.pathSegments.isNotEmpty || uri.queryParameters.isNotEmpty) {
      return null;
    }
    return '/wallet';
  }

  if (uri.scheme == 'masanawa' &&
      (uri.host == 'status' || uri.host == 'masana')) {
    if (uri.pathSegments.isNotEmpty || uri.queryParameters.isNotEmpty) {
      return null;
    }
    return uri.host == 'status' ? '/home?tab=status' : '/masana';
  }

  if (uri.scheme == 'masanawa' && uri.host == 'calls') {
    if (uri.queryParameters.isNotEmpty ||
        uri.pathSegments.length != 2 ||
        uri.pathSegments.first != 'incoming' ||
        !RegExp(
          r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$',
        ).hasMatch(uri.pathSegments[1])) {
      return null;
    }
    return '/home?tab=calls';
  }

  if (uri.scheme == 'https') {
    if (uri.host.toLowerCase() != 'masanawa.com' ||
        uri.pathSegments.length != 2) {
      return null;
    }
    final kind = uri.pathSegments.first;
    final id = uri.pathSegments[1];
    if (kind == 'status' && _validResourceId(id)) {
      return _statusResourceRoute(uri, id);
    }
    if (uri.queryParameters.isNotEmpty) return null;
    if (kind == 'room' && _validResourceId(id)) {
      return '/home?tab=status';
    }
    if (kind == 'masana' && _validCharacterId(id)) {
      return '/masana/${Uri.encodeComponent(id)}';
    }
    if (kind == 'transaction' && _validTransactionId(id)) {
      return '/home?tab=wallet';
    }
    if (kind == 'twin') {
      if (!_validPublicId(id)) return null;
      return '/masana';
    }
    if (kind == 'talk') {
      if (!_validTalkId(id)) return null;
      return '/home?tab=status';
    }
    return null;
  }

  if (uri.scheme != 'masanawa' ||
      !{
        'chat',
        'work',
        'approval',
        'artifact',
        'twin',
        'talk',
        'activity',
      }.contains(uri.host)) {
    return null;
  }

  if (uri.host == 'twin') {
    if (uri.pathSegments.length != 1 || uri.queryParameters.isNotEmpty) {
      return null;
    }
    final publicId = uri.pathSegments.single;
    if (!_validPublicId(publicId)) return null;
    return '/masana';
  }

  if (uri.host == 'talk') {
    if (uri.pathSegments.length != 1 || uri.queryParameters.isNotEmpty) {
      return null;
    }
    final talkId = uri.pathSegments.single;
    if (!_validTalkId(talkId)) return null;
    return '/home?tab=status';
  }

  if (uri.host == 'activity') {
    if (uri.pathSegments.isNotEmpty || uri.queryParameters.isNotEmpty) {
      return null;
    }
    return '/home?tab=status';
  }

  String? characterId;
  if (uri.host == 'chat') {
    if (uri.pathSegments.length != 1 || uri.queryParameters.isNotEmpty) {
      return null;
    }
    characterId = uri.pathSegments.single;
  } else {
    characterId = uri.queryParameters['characterId'];
    if (characterId == null) return '/chats';
    if (uri.queryParameters.length != 1) return null;
  }

  if (!_validCharacterId(characterId)) return null;
  return '/chat/${Uri.encodeComponent(characterId)}';
}

String? _statusResourceRoute(Uri uri, String postId) {
  final destination = '/status/${Uri.encodeComponent(postId)}';
  if (uri.queryParameters.isEmpty) return destination;
  // Unknown query keys could be forged privileges and must not be forwarded.
  if (uri.queryParameters.keys.any((key) => key != 'r')) return null;
  final values = uri.queryParametersAll['r'];
  if (values == null || values.length != 1) return destination;
  final token = values.single;
  // Malformed or duplicated opaque referrals still open permitted content,
  // but never reach the view challenge as an earnable attribution claim.
  if (!RegExp(r'^[A-Za-z0-9_-]{20,128}$').hasMatch(token)) {
    return destination;
  }
  return '$destination?r=${Uri.encodeQueryComponent(token)}';
}

bool _validTransactionId(String value) =>
    RegExp(r'^[A-Za-z0-9][A-Za-z0-9_.:-]{1,159}$').hasMatch(value);

bool _validResourceId(String value) =>
    RegExp(r'^[A-Za-z0-9][A-Za-z0-9_-]{2,159}$').hasMatch(value);

bool _validCharacterId(String value) =>
    RegExp(r'^character_[A-Za-z0-9_-]+$').hasMatch(value);

bool _validPublicId(String value) =>
    RegExp(r'^[A-Za-z0-9][A-Za-z0-9_-]{2,63}$').hasMatch(value);

bool _validTalkId(String value) =>
    RegExp(r'^[A-Za-z0-9][A-Za-z0-9_-]{2,159}$').hasMatch(value);

/// Incoming hints cannot replace a voice destination or another active call.
/// Conversation routes can own inline audio; the caller supplies imperative
/// group/modal ownership separately. Other destinations retain normal routing.
bool canOpenIncomingCallRoute({
  required String currentPath,
  required String targetPath,
  bool hasActiveCall = false,
}) {
  if (!targetPath.startsWith('/calls/incoming/') &&
      !targetPath.startsWith('/human/call/'))
    return true;
  return !hasActiveCall &&
      !currentPath.startsWith('/calls/incoming/') &&
      !currentPath.startsWith('/human/call/') &&
      !currentPath.startsWith('/human/chat/') &&
      !currentPath.startsWith('/chat/');
}
