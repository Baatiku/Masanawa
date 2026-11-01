import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/chat/chat_format.dart';

void main() {
  test('chat clock keeps local chronology and translates day-period labels', () {
    final morning = DateTime(2026, 10, 31, 9, 5);
    final evening = DateTime(2026, 10, 31, 21, 5);
    expect(formatClock(morning), '9:05 AM');
    expect(formatClock(evening), '9:05 PM');
    expect(formatClock(morning, languageCode: 'ha'), '9:05 na safe');
    expect(formatClock(evening, languageCode: 'ha'), '9:05 na yamma');
    expect(formatClock(morning, languageCode: 'ar'), '9:05 ص');
    expect(formatClock(evening, languageCode: 'ar'), '9:05 م');
  });

  test('yesterday and weekday previews are not English in Hausa or Arabic', () {
    final today = DateTime.now();
    final yesterday = DateTime(today.year, today.month, today.day)
        .subtract(const Duration(days: 1))
        .add(const Duration(hours: 12));
    expect(formatChatTime(yesterday), 'Yesterday');
    expect(formatChatTime(yesterday, languageCode: 'ha'), 'Jiya');
    expect(formatChatTime(yesterday, languageCode: 'ar'), 'أمس');

    final earlier = DateTime(today.year, today.month, today.day)
        .subtract(const Duration(days: 3))
        .add(const Duration(hours: 12));
    const ha = ['Litinin', 'Talata', 'Laraba', 'Alhamis',
        'Jumma’a', 'Asabar', 'Lahadi'];
    const ar = ['الاثنين', 'الثلاثاء', 'الأربعاء', 'الخميس',
        'الجمعة', 'السبت', 'الأحد'];
    expect(formatChatTime(earlier, languageCode: 'ha'), ha[earlier.weekday - 1]);
    expect(formatChatTime(earlier, languageCode: 'ar'), ar[earlier.weekday - 1]);
  });

  test('UTC timestamps are converted to local instants before display', () {
    final instant = DateTime.utc(2026, 10, 31, 23, 30);
    final local = instant.toLocal();
    for (final language in ['en', 'ha', 'ar']) {
      expect(formatClock(instant, languageCode: language),
          formatClock(local, languageCode: language));
      expect(formatChatTime(instant, languageCode: language),
          formatChatTime(local, languageCode: language));
    }
  });
}
