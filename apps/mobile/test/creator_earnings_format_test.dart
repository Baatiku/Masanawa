import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/screens/profile/creator_earnings_screen.dart';
import 'package:masanawa/src/screens/profile/my_masana_screen.dart';

void main() {
  test('creator edit review displays exact atomic fee without truncation', () {
    expect(creatorRevisionFeeLabel('1500000'), '1.5 MSNW');
    expect(creatorRevisionFeeLabel('1'), '0.000001 MSNW');
    expect(creatorRevisionFeeLabel('0'), '0 MSNW');
    expect(creatorRevisionFeeLabel('9007199254740993000001'),
        '9007199254740993.000001 MSNW');
    for (final malformed in [null, '', '-1', '1.2', 'unknown', 1500000]) {
      expect(() => creatorRevisionFeeLabel(malformed), throwsFormatException);
    }
  });
  test('formats MSNW atomic values exactly', () {
    expect(formatCreatorMsnwAtomic('0'), '0 MSNW');
    expect(formatCreatorMsnwAtomic('1'), '0.000001 MSNW');
    expect(formatCreatorMsnwAtomic('1200000'), '1.2 MSNW');
    expect(formatCreatorMsnwAtomic('10000000000000000000000'),
        '10000000000000000 MSNW');
    expect(formatCreatorMsnwAtomic('-100'), 'Unavailable');
    expect(formatCreatorMsnwAtomic('unknown'), 'Unavailable');
  });
}
