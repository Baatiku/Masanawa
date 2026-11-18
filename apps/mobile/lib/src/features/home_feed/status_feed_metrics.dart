import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

/// DevTools-only Status performance spans; deliberately never receive user IDs,
/// text, source handles, media URLs, money amounts, or account identifiers.
class StatusFeedMetrics {
  const StatusFeedMetrics._();
  static const phases=<String>{
    'first-page','next-page','reaction-write','comments-page',
    'comment-send','preview-first-frame','frame-jank',
  };
  static void observe(String phase,Duration duration,{required bool succeeded}) {
    if(kReleaseMode||!phases.contains(phase))return;
    developer.Timeline.instantSync('masanawa.status.$phase',arguments:{
      'durationMs':duration.inMilliseconds,'success':succeeded,
    });
  }
}
