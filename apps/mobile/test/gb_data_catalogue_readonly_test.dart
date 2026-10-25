import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/gb_data_catalogue.dart';

Map<String, dynamic> _bundle() => {
  'id': 'MTN:2GB-30DAY',
  'version': 'v1',
  'network': 'MTN',
  'allowanceGb': 2,
  'costMb': 2000,
  'validityDays': 30,
  'providerAmount': '1000.00',
  'expiresAt': '2099-01-01T00:00:00.000Z',
};

void main() {
  test('Nigerian SIM normalization follows the Gateway country boundary', () {
    expect(normalizeNigerianDataPhone('08012345678'), '+2348012345678');
    expect(normalizeNigerianDataPhone(' +2348012345678 '),
        '+2348012345678');
    expect(normalizeNigerianDataPhone('08012345'), isNull);
    expect(normalizeNigerianDataPhone('+15555555555'), isNull);
  });

  test('whole-GB bundle rejects unfounded or malformed provider claims', () {
    final item = GbVerifiedBundle.fromJson(_bundle());
    expect(item.costMb, item.allowanceGb * 1000);
    for (final changed in [
      {..._bundle(), 'costMb': 1999},
      {..._bundle(), 'network': 'UNKNOWN'},
      {..._bundle(), 'validityDays': 0},
      {..._bundle(), 'allowanceGb': 0},
      {..._bundle(), 'providerAmount': '-100'},
      {..._bundle(), 'expiresAt': '2020-01-01T00:00:00.000Z'},
    ]) {
      expect(() => GbVerifiedBundle.fromJson(changed),
          throwsFormatException);
    }
  });

  test('signed preview is only accepted for the same selected bundle and SIM', () {
    final item = GbVerifiedBundle.fromJson(_bundle());
    final response = {
      'previewOnly': true,
      'quote': {
        ..._bundle(),
        'recipientPhone': '+2348012345678',
        'quoteExpiresAt': '2098-12-01T00:00:00.000Z',
        'requiresWalletReservation': true,
        'feeMb': 0,
      },
    };
    expect(GbReadOnlyQuote.fromJson(
      response, selected: item, enteredPhone: '08012345678',
    ).recipientPhone, '+2348012345678');
    for (final bad in [
      {...response, 'previewOnly': false},
      {...response, 'quote': {..._bundle(),
        'recipientPhone': '+2348099999999',
        'quoteExpiresAt': '2098-12-01T00:00:00.000Z',
        'requiresWalletReservation': true, 'feeMb': 0}},
      {...response, 'quote': {...(response['quote'] as Map),
        'feeMb': 1}},
      {...response, 'quote': {...(response['quote'] as Map),
        'costMb': 1000}},
    ]) {
      expect(() => GbReadOnlyQuote.fromJson(
        bad, selected: item, enteredPhone: '08012345678',
      ), throwsFormatException);
    }
  });
}
