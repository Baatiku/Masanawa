import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/screens/profile/creator_earnings_screen.dart';

void main() {
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
