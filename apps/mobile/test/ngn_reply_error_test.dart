import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/masanawa_transport.dart';

void main() {
  test('insufficient NGN reply balance explains the actual ₦2 price', () {
    final error = agentReplyStreamFailure({'code': 'ngn.insufficient_balance'});
    expect(error.code, 'ngn.insufficient_balance');
    expect(error.statusCode, 409);
    expect(error.message, contains('₦2'));
    expect(error.message, isNot(contains('Buy Data')));
  });

  test('legacy MB failure never recommends buying GB as chat currency', () {
    final error = agentReplyStreamFailure({'code': 'gb.wallet.insufficient_mb'});
    expect(error.code, 'gb.wallet.insufficient_mb');
    expect(error.message, contains('NGN wallet'));
    expect(error.message, isNot(contains('Buy Data')));
  });

  test('restricted NGN wallet gives an actionable support message', () {
    final error = agentReplyStreamFailure({'code': 'ngn.account_frozen'});
    expect(error.statusCode, 403);
    expect(error.message, contains('restricted'));
  });
}
