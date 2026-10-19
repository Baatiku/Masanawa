import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:masanawa/src/core/mobile_diagnostics.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('support export identifies installed version/build without package identifiers', () async {
    FlutterSecureStorage.setMockInitialValues({});
    PackageInfo.setMockInitialValues(
      appName: 'Private App Name', packageName: 'private.package.name',
      version: '1.0.4', buildNumber: '39151671982', buildSignature: 'private-signature',
    );
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(const MethodChannel('masanawa/diagnostics'),
          (_) async => <String>[]);
    addTearDown(() => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(const MethodChannel('masanawa/diagnostics'), null));
    final report = await MasanawaDiagnostics.instance.exportSanitizedReport();
    expect(report, contains('App version: 1.0.4'));
    expect(report, contains('App build: 39151671982'));
    expect(report, contains('Source commit: unknown'));
    expect(report, isNot(contains('private.package.name')));
    expect(report, isNot(contains('private-signature')));
    expect(report, isNot(contains('Private App Name')));
  });

  test('support projection rejects raw data and bounds captured error vocabulary', () {
    final payload = MasanawaDiagnostics.supportPayload(
      'App version: 1.0.4\nApp build: 42\nSource commit: ${'a' * 40}\n'
      '2026-10-19 PrivateUserName src/core/client.dart:42\n'
      '2026-02-30 StateError src/core/client.dart:42\n'
      'Bearer customer-token\nhttps://private.invalid\nanr\n', 'request_test');
    expect(payload['events'], [{'day':'2026-10-19','type':'OtherError','frame':'src/core/client.dart:42'}]);
    expect(payload['exits'], ['anr']);
    expect(payload.toString(), isNot(contains('customer-token')));
    expect(payload.toString(), isNot(contains('PrivateUserName')));
    expect(payload['source'], 'a' * 40);
  });

  test('release metadata rejects injected text, overlong values and non-SHA source', () {
    expect(MasanawaDiagnostics.safeReleaseValue('1.2.3-beta.1'), '1.2.3-beta.1');
    expect(MasanawaDiagnostics.safeReleaseValue('1.2.3\nBearer secret'), 'unknown');
    expect(MasanawaDiagnostics.safeReleaseValue('1' * 49), 'unknown');
    expect(MasanawaDiagnostics.safeReleaseValue('private.package.name'), 'unknown');
    expect(MasanawaDiagnostics.safeSourceCommit('A' * 40), 'a' * 40);
    expect(MasanawaDiagnostics.safeSourceCommit('main'), 'unknown');
    expect(MasanawaDiagnostics.safeSourceCommit(''), 'unknown');
  });

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
