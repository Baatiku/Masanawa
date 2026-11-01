/// Source chronology is always normalized to local time before selecting a
/// calendar-day label. The language is explicit so callers do not depend on
/// the process-wide Intl default (which may belong to a prior signed-in UI).
String formatChatTime(DateTime t, {String languageCode = 'en'}) {
  t = t.toLocal();
  final now = DateTime.now();
  // Compare civil dates in UTC after selecting local calendar components.
  // Duration between local midnights can be 23/25 hours at DST changes.
  final today = DateTime.utc(now.year, now.month, now.day);
  final day = DateTime.utc(t.year, t.month, t.day);
  final diff = today.difference(day).inDays;
  if (diff <= 0) return formatClock(t, languageCode: languageCode);
  if (diff == 1) return switch (languageCode) {
    'ha' => 'Jiya',
    'ar' => 'أمس',
    _ => 'Yesterday',
  };
  if (diff < 7) {
    final weekdays = switch (languageCode) {
      'ha' => const ['Litinin', 'Talata', 'Laraba', 'Alhamis',
        'Jumma’a', 'Asabar', 'Lahadi'],
      'ar' => const ['الاثنين', 'الثلاثاء', 'الأربعاء', 'الخميس',
        'الجمعة', 'السبت', 'الأحد'],
      _ => const ['Monday', 'Tuesday', 'Wednesday', 'Thursday',
        'Friday', 'Saturday', 'Sunday'],
    };
    return weekdays[t.weekday - 1];
  }
  return '${t.day}/${t.month}/${t.year % 100}';
}

String formatClock(DateTime t, {String languageCode = 'en'}) {
  t = t.toLocal();
  final h = t.hour % 12 == 0 ? 12 : t.hour % 12;
  final mm = t.minute.toString().padLeft(2, '0');
  final period = switch (languageCode) {
    'ha' => t.hour >= 12 ? 'na yamma' : 'na safe',
    'ar' => t.hour >= 12 ? 'م' : 'ص',
    _ => t.hour >= 12 ? 'PM' : 'AM',
  };
  return '$h:$mm $period';
}

String formatDurationMs(int ms) {
  final total = (ms / 1000).round();
  return '${total ~/ 60}:${(total % 60).toString().padLeft(2, '0')}';
}

String formatBytes(int bytes) {
  if (bytes < 1024) return '$bytes B';
  if (bytes < 1024 * 1024) {
    return '${(bytes / 1024).toStringAsFixed(1)} KB';
  }
  return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
}
