import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:masanawa/src/core/app_permissions.dart';

/// Real Android test: Android's OS permission sheet is not reachable from
/// flutter_test widget tests. No user account or paid provider is required.
void main() {
  patrolTest('microphone permission is handled and app resumes from Home',
    (PatrolIntegrationTester $) async {
      final result = Completer<AppPermissionResult>();
      await $.pumpWidgetAndSettle(MaterialApp(
        home: Scaffold(
          body: Center(child: ElevatedButton(
            key: const Key('request-microphone'),
            onPressed: () async {
              try {
                result.complete(await AppPermissions.request(AppPermission.microphone));
              } catch (error, stack) {
                result.completeError(error, stack);
              }
            },
            child: const Text('Request microphone'),
          )),
        ),
      ));
      await $(#request-microphone).tap();
      if (await $.platform.mobile.isPermissionDialogVisible(
        timeout: const Duration(seconds: 5),
      )) {
        await $.platform.mobile.grantPermissionWhenInUse();
      }
      expect((await result.future).granted, isTrue,
          reason: 'Microphone must be granted to record voice notes.');
      await $.platform.mobile.pressHome();
      await $.platform.mobile.openApp();
      expect($(#request-microphone).exists, isTrue);
    },
  );
}
