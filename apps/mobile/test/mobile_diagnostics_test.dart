import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/mobile_diagnostics.dart';

void main() {
  test('diagnostics serialize exception type only, never message contents', () {
    const secret = 'Bearer live-customer-secret';
    final error = StateError('private chat $secret');
    final value = MasanawaDiagnostics.safeErrorType(error);
    expect(value, 'StateError');
    expect(value, isNot(contains(secret)));
  });

  test('first-party file and line accepted, arbitrary URLs/device paths rejected', () {
    final trace = StackTrace.fromString(
      '#0 token=https://private.invalid/key at /data/user/phone\n'
      '#1 package:masanawa/src/core/network/api_client.dart:207:12\n'
      '#2 package:other/secret.dart:101:1',
    );
    expect(MasanawaDiagnostics.safeAppFrame(trace),
      'src/core/network/api_client.dart:207');
    expect(MasanawaDiagnostics.safeAppFrame(
      StackTrace.fromString('/data/user/0/secret.txt:37')), 'unknown');
  });

  test('unknown locations and invalid exception classes are safe', () {
    expect(MasanawaDiagnostics.safeAppFrame(null), 'unknown');
    expect(MasanawaDiagnostics.safeErrorType(AssertionError('test')),
      'AssertionError');
  });
}
