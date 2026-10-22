import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/private_screen_shield.dart';

void main() {
  const native = MethodChannel('masanawa/private_screen');
  testWidgets('hides sensitive content until the native guard acknowledges', (
    tester,
  ) async {
    final pending = Completer<bool>();
    final calls = <MethodCall>[];
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(native, (call) async {
          calls.add(call);
          return call.method == 'acquire' ? pending.future : true;
        });
    addTearDown(
      () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(native, null),
    );
    await tester.pumpWidget(
      const MaterialApp(
        home: PrivateScreenShield(
          requireAndroidProtection: true,
          child: Text('Sensitive content'),
        ),
      ),
    );
    await tester.pump();
    expect(find.text('Sensitive content'), findsNothing);
    pending.complete(true);
    await tester.pumpAndSettle();
    expect(find.text('Sensitive content'), findsOneWidget);
    expect(calls.first.method, 'acquire');
    final owner = calls.first.arguments['owner'];
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump();
    expect(calls.last.method, 'release');
    expect(calls.last.arguments['owner'], owner);
  });
  testWidgets('native protection failure is fail-closed until explicit retry', (
    tester,
  ) async {
    var attempts = 0;
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(native, (call) async {
          if (call.method == 'acquire' && attempts++ == 0) {
            throw PlatformException(code: 'privacy_unavailable');
          }
          return true;
        });
    addTearDown(
      () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(native, null),
    );
    await tester.pumpWidget(
      const MaterialApp(
        home: PrivateScreenShield(
          requireAndroidProtection: true,
          child: Text('Protected details'),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Protected details'), findsNothing);
    expect(find.text('Retry protection'), findsOneWidget);
    await tester.tap(find.text('Retry protection'));
    await tester.pumpAndSettle();
    expect(find.text('Protected details'), findsOneWidget);
    expect(attempts, 2);
  });

  testWidgets('late native acquire is released after route disposal', (
    tester,
  ) async {
    final pending = Completer<bool>();
    final calls = <MethodCall>[];
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(native, (call) async {
          calls.add(call);
          return call.method == 'acquire' ? pending.future : true;
        });
    addTearDown(
      () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(native, null),
    );
    await tester.pumpWidget(
      const MaterialApp(
        home: PrivateScreenShield(
          requireAndroidProtection: true,
          child: Text('Details'),
        ),
      ),
    );
    await tester.pump();
    await tester.pumpWidget(const SizedBox.shrink());
    pending.complete(true);
    await tester.pump();
    expect(calls.map((call) => call.method), ['acquire', 'release']);
  });
}
