import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/shell_deep_link.dart';

void main() {
  test('P2P push links route to authenticated Wallet, not payment execution', () {
    expect(shellDeepLinkRoute(Uri.parse('masanawa://wallet')), '/wallet');
    expect(shellDeepLinkRoute(Uri.parse('masanawa://wallet/?order=attacker')), isNull);
    expect(shellDeepLinkRoute(Uri.parse('masanawa://wallet/transfer')), isNull);
    expect(shellDeepLinkRoute(Uri.parse('masanawa://wallet#bypass')), isNull);
  });
}
