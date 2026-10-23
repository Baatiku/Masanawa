import 'dart:math';

/// Generated once per exact user intent, then retained through recovery.
String communityRequestId() =>
    'room-${DateTime.now().microsecondsSinceEpoch}-${Random.secure().nextInt(1 << 30)}';
