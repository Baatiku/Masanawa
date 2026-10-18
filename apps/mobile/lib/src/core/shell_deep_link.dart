/// Maps an incoming navigation hint to an existing app route. The Gateway still
/// authorizes the conversation and every action; links never carry execution
/// authority.
///
/// Public Masana links resolve straight to the public profile route; the
/// retired Twin lookup route no longer exists.
String? shellDeepLinkRoute(Uri uri) {
  if (uri.userInfo.isNotEmpty || uri.hasPort || uri.fragment.isNotEmpty) {
    return null;
  }

  // Navigation hints never grant access. The target screen loads its own
  // authorized resource after sign-in; no caller-supplied tokens or queries.
  if (uri.scheme == 'masanawa' && uri.queryParameters.isEmpty) {
    final segments = uri.pathSegments;
    if (uri.host == 'rooms' && segments.length == 1 &&
        _validResourceId(segments.single)) {
      return '/rooms/${Uri.encodeComponent(segments.single)}';
    }
    if (uri.host == 'masana' && segments.length == 1 &&
        _validCharacterId(segments.single)) {
      return '/masana/${Uri.encodeComponent(segments.single)}';
    }
    if (uri.host == 'status' && segments.length == 1 &&
        _validResourceId(segments.single)) {
      return '/status/${Uri.encodeComponent(segments.single)}';
    }
    if (uri.host == 'calls' && segments.length == 1 &&
        segments.single == 'history') {
      return '/home?tab=calls';
    }
    if (uri.host == 'wallet' && segments.length == 2 &&
        segments.first == 'transaction' &&
        _validResourceId(segments.last)) {
      return '/wallet/transactions/${Uri.encodeComponent(segments.last)}';
    }
    if (uri.host == 'search' && segments.isEmpty) {
      return '/search';
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
    return '/calls/incoming/${uri.pathSegments[1]}';
  }

  if (uri.scheme == 'https') {
    if (uri.host.toLowerCase() != 'masanawa.com' ||
        uri.queryParameters.isNotEmpty ||
        uri.pathSegments.length != 2) {
      return null;
    }
    final kind = uri.pathSegments.first;
    final id = uri.pathSegments[1];
    if (kind == 'room' && _validResourceId(id)) {
      return '/rooms/${Uri.encodeComponent(id)}';
    }
    if (kind == 'masana' && _validCharacterId(id)) {
      return '/masana/${Uri.encodeComponent(id)}';
    }
    if (kind == 'status' && _validResourceId(id)) {
      return '/status/${Uri.encodeComponent(id)}';
    }
    if (kind == 'transaction' && _validResourceId(id)) {
      return '/wallet/transactions/${Uri.encodeComponent(id)}';
    }
    if (kind == 'twin') {
      if (!_validPublicId(id)) return null;
      return '/persona/${Uri.encodeComponent(id)}';
    }
    if (kind == 'talk') {
      if (!_validTalkId(id)) return null;
      return '/talk/${Uri.encodeComponent(id)}';
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
    return '/persona/${Uri.encodeComponent(publicId)}';
  }

  if (uri.host == 'talk') {
    if (uri.pathSegments.length != 1 || uri.queryParameters.isNotEmpty) {
      return null;
    }
    final talkId = uri.pathSegments.single;
    if (!_validTalkId(talkId)) return null;
    return '/talk/${Uri.encodeComponent(talkId)}';
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

bool _validResourceId(String value) =>
    RegExp(r'^[A-Za-z0-9][A-Za-z0-9_-]{2,159}
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
  if (!targetPath.startsWith('/calls/incoming/')) return true;
  return !hasActiveCall &&
      !currentPath.startsWith('/calls/incoming/') &&
      !currentPath.startsWith('/chat/');
}
).hasMatch(value);

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
  if (!targetPath.startsWith('/calls/incoming/')) return true;
  return !hasActiveCall &&
      !currentPath.startsWith('/calls/incoming/') &&
      !currentPath.startsWith('/chat/');
}
