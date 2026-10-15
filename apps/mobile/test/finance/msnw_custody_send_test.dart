import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_custody_send.dart';

void main() {
  group('MSNW exact-value Send input', () {
    test('accepts six decimal atomic precision without floating point', () {
      expect(parseMsnwMicro('1'), '1000000');
      expect(parseMsnwMicro('1.000001'), '1000001');
      expect(parseMsnwMicro('0.000001'), '1');
      expect(parseMsnwMicro('19.45'), '19450000');
      expect(parseMsnwMicro(' 99.5 '), '99500000');
      expect(parseMsnwMicro('100000000000000000'), '100000000000000000000000');
    });
    test('rejects zero, negative, overflow of precision and bad formats', () {
      for (final value in [
        '0','0.000000','-1','1.0000001','1,000','NaN','1e6',
        '0x10','abc','1.','', '0.1234567',
      ]) {
        expect(parseMsnwMicro(value), isNull, reason: value);
      }
    });
  });
}
