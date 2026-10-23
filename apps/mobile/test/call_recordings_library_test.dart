import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/calls/call_recordings_screen.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/call_recording.dart';
import 'package:masanawa/src/state/session_state.dart';

CallRecording row(String id, String name, int day, int duration) =>
    CallRecording(
      id: id,
      agentName: name,
      createdAt: DateTime.utc(2026, 10, day),
      durationMs: duration,
      file: File('/private/$id.wav'),
    );

SessionSignedIn signed(String owner) {
  final user = AuthUser(
    id: owner,
    name: owner,
    locale: 'en',
    status: 'ACTIVE',
    role: 'USER',
    isNewUser: false,
    createdAt: '2026-10-17T00:00:00Z',
  );
  return SessionSignedIn(
    user,
    AuthTokens(
      accessToken: 'synthetic',
      refreshToken: 'synthetic',
      accessExpiresIn: 3600,
      user: user,
    ),
  );
}

class RecordingSession extends SessionController {
  @override
  SessionState build() => signed('a');
  void changeTo(String owner) => state = signed(owner);
  void signOut() => state = const SessionSignedOut();
}

class RecordingStoreStub extends CallRecordingStore {
  RecordingStoreStub(String owner, this.rows) : super(owner);
  List<CallRecording> rows;
  Future<List<CallRecording>>? pending;
  int reads = 0;
  @override
  Future<List<CallRecording>> list() async {
    reads++;
    if (pending != null) return pending!;
    return List.of(rows);
  }
}

Future<void> mount(
  WidgetTester tester,
  RecordingSession session,
  String owner,
  RecordingStoreStub store,
) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [sessionProvider.overrideWith(() => session)],
      child: MaterialApp(
        home: CallRecordingsScreen(ownerId: owner, store: store),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

List<String?> listedNames(WidgetTester tester) => tester
    .widgetList<ListTile>(find.byType(ListTile))
    .map((tile) => (tile.title as Text).data)
    .toList();

void main() {
  test(
    'local search is case-insensitive; newest/oldest/longest use stable ordering',
    () {
      final items = [
        row('1-a', 'Amina', 10, 6000),
        row('2-b', 'Sadiq', 11, 10000),
        row('3-c', 'amina Two', 11, 8000),
      ];
      expect(
        selectRecordings(
          items,
          search: ' AMINA ',
          order: RecordingOrder.newest,
        ).map((e) => e.id).toList(),
        ['3-c', '1-a'],
      );
      expect(
        selectRecordings(
          items,
          search: '',
          order: RecordingOrder.oldest,
        ).map((e) => e.id).toList(),
        ['1-a', '2-b', '3-c'],
      );
      expect(
        selectRecordings(
          items,
          search: '',
          order: RecordingOrder.longest,
        ).map((e) => e.id).toList(),
        ['2-b', '3-c', '1-a'],
      );
      expect(items.first.id, '1-a'); // Local sort never mutates the store.
    },
  );

  testWidgets(
    'search, no-match, clear and sort remain on private recording list',
    (tester) async {
      final session = RecordingSession();
      final store = RecordingStoreStub('a', [
        row('1-a', 'Gwani', 17, 10000),
        row('2-b', 'Zainab', 18, 30000),
        row('3-c', 'Gwani other', 16, 5000),
      ]);
      await mount(tester, session, 'a', store);
      expect(listedNames(tester), ['Zainab', 'Gwani', 'Gwani other']);
      await tester.enterText(find.byType(TextField), 'GwAnI');
      await tester.pumpAndSettle();
      expect(listedNames(tester), ['Gwani', 'Gwani other']);
      expect(find.text('2 of 3 recordings on this device'), findsOneWidget);
      await tester.enterText(find.byType(TextField), 'not-here');
      await tester.pumpAndSettle();
      expect(find.text('No recordings match this search.'), findsOneWidget);
      expect(find.textContaining('No recordings yet'), findsNothing);
      await tester.tap(find.text('Refresh recordings'));
      await tester.pumpAndSettle();
      expect(store.reads, greaterThanOrEqualTo(2));
      expect(find.text('No recordings match this search.'), findsOneWidget);
      await tester.tap(find.text('Clear search'));
      await tester.pumpAndSettle();
      expect(listedNames(tester), ['Zainab', 'Gwani', 'Gwani other']);
      await tester.tap(find.byTooltip('Sort recordings'));
      await tester.pumpAndSettle();
      await tester.tap(find.byType(CheckedPopupMenuItem<RecordingOrder>).at(1));
      await tester.pumpAndSettle();
      expect(listedNames(tester), ['Gwani other', 'Gwani', 'Zainab']);
      await tester.tap(find.byTooltip('Sort recordings'));
      await tester.pumpAndSettle();
      await tester.tap(find.byType(CheckedPopupMenuItem<RecordingOrder>).at(2));
      await tester.pumpAndSettle();
      expect(listedNames(tester), ['Zainab', 'Gwani', 'Gwani other']);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'account replacement isolates device lists and ignores late old-owner read',
    (tester) async {
      final session = RecordingSession();
      final old = RecordingStoreStub('a', [
        row('1-a', 'Old private', 17, 10000),
      ]);
      final pending = Completer<List<CallRecording>>();
      old.pending = pending.future;
      final next = RecordingStoreStub('b', [
        row('2-b', 'New private', 18, 12000),
      ]);
      await tester.pumpWidget(
        ProviderScope(
          overrides: [sessionProvider.overrideWith(() => session)],
          child: MaterialApp(
            home: CallRecordingsScreen(ownerId: 'a', store: old),
          ),
        ),
      );
      await tester
          .pump(); // Deliberate pending load; settling would never finish.
      expect(find.text('Old private'), findsNothing);
      session.changeTo('b');
      await tester.pump();
      await tester.pumpWidget(
        ProviderScope(
          overrides: [sessionProvider.overrideWith(() => session)],
          child: MaterialApp(
            home: CallRecordingsScreen(ownerId: 'b', store: next),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('New private'), findsOneWidget);
      expect(find.text('Old private'), findsNothing);
      pending.complete(old.rows);
      await tester.pumpAndSettle();
      expect(find.text('Old private'), findsNothing);
      expect(find.text('New private'), findsOneWidget);
    },
  );

  testWidgets(
    'recording list has usable controls at 320dp, 200% text and RTL',
    (tester) async {
      tester.view.physicalSize = const Size(320, 720);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final session = RecordingSession();
      final store = RecordingStoreStub('a', [row('1-a', 'Sadiq', 17, 10000)]);
      await tester.pumpWidget(
        ProviderScope(
          overrides: [sessionProvider.overrideWith(() => session)],
          child: MaterialApp(
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: const TextScaler.linear(2)),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: child!,
              ),
            ),
            home: CallRecordingsScreen(ownerId: 'a', store: store),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Sadiq'), findsOneWidget);
      expect(find.byTooltip('Sort recordings'), findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );
}
