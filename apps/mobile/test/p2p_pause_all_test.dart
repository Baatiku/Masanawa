import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/p2p_pause_all.dart';

DioException fail(int status) => DioException(
  requestOptions: RequestOptions(path: '/pause'),
  response: Response(
    requestOptions: RequestOptions(path: '/pause'),
    statusCode: status,
  ),
);

class Fixture {
  String? user = 'owner', stored;
  bool exists = false, lost = false, storageFailure = false, offline = false;
  int active = 3, newKeys = 0;
  final writes = <String>[], saved = <String?>[];
  Completer<Map<String, dynamic>>? held;
  Map<String, dynamic> receipt() => {
    'operation_id': 'original-pause',
    'paused_count': 3,
    'created_at': '2026-10-23T20:00:00Z',
  };
  Future<void> persist(String? key) async {
    saved.add(key);
    if (storageFailure) throw StateError('storage unavailable');
    stored = key;
  }

  Future<Map<String, dynamic>> recover(String key) async {
    if (held != null) return held!.future;
    if (!exists) throw fail(404);
    return receipt();
  }

  Future<Map<String, dynamic>> pause(String key) async {
    writes.add(key);
    exists = true;
    active = 0;
    if (lost) throw fail(503);
    return receipt();
  }

  Widget page({bool large = false}) => MaterialApp(
    home: MediaQuery(
      data: MediaQueryData(textScaler: TextScaler.linear(large ? 2 : 1)),
      child: Directionality(
        textDirection: large ? TextDirection.rtl : TextDirection.ltr,
        child: P2pPauseAllPage(
          expectedUserId: 'owner',
          currentUserId: () => user,
          load: () async {
            if (offline) throw fail(503);
            return {
              'active': active,
              'paused': 0,
              'closed': 1,
              'as_of': '2026-10-23T20:00:00Z',
            };
          },
          restore: () async => stored,
          persist: persist,
          newKey: () => 'pause-original-${++newKeys}',
          recover: recover,
          pause: pause,
        ),
      ),
    ),
  );
}

Future<void> press(WidgetTester t, String text) async {
  await t.scrollUntilVisible(
    find.text(text).hitTestable(),
    150,
    scrollable: find.byType(Scrollable).first,
  );
  await t.pumpAndSettle();
  await t.tap(find.text(text));
  await t.pumpAndSettle();
}

void main() {
  testWidgets(
    'explicit confirmation saves original identity before pausing and displays authoritative receipt',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      expect(f.writes, isEmpty);
      await press(t, 'Confirm pause all current ads');
      expect(f.writes, ['pause-original-1']);
      expect(f.saved, ['pause-original-1', null]);
      expect(f.stored, isNull);
      expect(find.text('Original request paused 3 ads.'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'lost result survives reopening and recovers original without pausing later ads',
    (t) async {
      final f = Fixture()..lost = true;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      await press(t, 'Confirm pause all current ads');
      expect(f.stored, 'pause-original-1');
      await t.pumpWidget(const SizedBox());
      f.active = 1;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      await press(t, 'Check or retry original pause');
      expect(f.writes, hasLength(1));
      expect(f.active, 1);
      expect(f.newKeys, 1);
      expect(find.text('original-pause'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'failed durable save prevents POST and retries only the same original identity',
    (t) async {
      final f = Fixture()..storageFailure = true;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      await press(t, 'Confirm pause all current ads');
      expect(f.writes, isEmpty);
      expect(f.newKeys, 1);
      f.storageFailure = false;
      await press(t, 'Check or retry original pause');
      expect(f.writes, ['pause-original-1']);
      expect(f.newKeys, 1);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'late original-missing response after account replacement cannot pause under replacement credentials',
    (t) async {
      final f = Fixture()..stored = 'saved-original-1';
      final held = Completer<Map<String, dynamic>>();
      f.held = held;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      await t.scrollUntilVisible(
        find.text('Check or retry original pause').hitTestable(),
        150,
        scrollable: find.byType(Scrollable).first,
      );
      await t.pumpAndSettle();
      await t.tap(find.text('Check or retry original pause'));
      await t.pump();
      f.user = 'replacement';
      await t.pump(const Duration(seconds: 1));
      held.completeError(fail(404));
      await t.pumpAndSettle();
      expect(f.writes, isEmpty);
      expect(find.text('Access changed. Reopen P2P.'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'offline initial summary blocks a new pause until authoritative refresh',
    (t) async {
      final f = Fixture()..offline = true;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      expect(
        t
            .widget<FilledButton>(
              find.widgetWithText(
                FilledButton,
                'Confirm pause all current ads',
              ),
            )
            .onPressed,
        isNull,
      );
      f.offline = false;
      await press(t, 'Refresh availability');
      await press(t, 'Confirm pause all current ads');
      expect(f.writes, hasLength(1));
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    '320dp 200percent RTL keeps pause confirmation reachable without overflow',
    (t) async {
      t.view.physicalSize = const Size(320, 850);
      t.view.devicePixelRatio = 1;
      addTearDown(t.view.resetPhysicalSize);
      addTearDown(t.view.resetDevicePixelRatio);
      final f = Fixture();
      await t.pumpWidget(f.page(large: true));
      await t.pumpAndSettle();
      await press(t, 'Confirm pause all current ads');
      expect(f.writes, hasLength(1));
      expect(t.takeException(), isNull);
      await t.pumpWidget(const SizedBox());
    },
  );
}
