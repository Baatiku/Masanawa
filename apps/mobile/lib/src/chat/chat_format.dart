String formatChatTime(DateTime t) {
  t = t.toLocal();
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final day = DateTime(t.year, t.month, t.day);
  final diff = today.difference(day).inDays;
  if (diff <= 0) return formatClock(t);
  if (diff == 1) return 'Yesterday';
  if (diff < 7) {
    const weekdays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday',
      'Friday', 'Saturday', 'Sunday'];
    return weekdays[t.weekday - 1];
  }
  return '${t.day}/${t.month}/${t.year % 100}';
}

String formatClock(DateTime t) {
  t = t.toLocal();
  final h = t.hour % 12 == 0 ? 12 : t.hour % 12;
  final mm = t.minute.toString().padLeft(2, '0');
  return '$h:$mm ${t.hour >= 12 ? 'PM' : 'AM'}';
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
