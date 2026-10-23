import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_ownership_transfer.dart';
import 'package:masanawa/src/features/rooms/room_community_screen.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

class _Api extends FakeCommunityApi {
  _Api({this.owner = false});
  final bool owner;
  String status = 'pending';
  bool loseResponse = false, denyRead = false;
  final writes = <String>[];
  Completer<Map<String, dynamic>>? pending;
  Map<String, dynamic> get snapshot => {
    'ownershipVersion': 1,
    'canOffer': owner,
    'transfer': {
      'transferId': 'offer_1',
      'status': status,
      'fromName': 'Alice',
      'targetName': 'Bob',
      'canAccept': !owner && status == 'pending',
      'canDecline': !owner && status == 'pending',
      'canCancel': owner && status == 'pending',
    },
  };
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async {
    if (method == 'GET') {
      if (denyRead)
        throw DioException(
          requestOptions: RequestOptions(),
          response: Response(requestOptions: RequestOptions(), statusCode: 403),
        );
      return snapshot;
    }
    writes.add(resource);
    if (pending != null) return pending!.future;
    status = resource.endsWith('/accept')
        ? 'accepted'
        : resource.endsWith('/decline')
        ? 'declined'
        : 'cancelled';
    if (loseResponse) {
      loseResponse = false;
      throw StateError('lost_after_commit');
    }
    return snapshot;
  }
}

Future<void> mount(
  WidgetTester tester,
  _Api api, {
  Future<void> Function()? onChanged,
  bool narrow = false,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: TextScaler.linear(narrow ? 2 : 1)),
        child: child!,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: RoomOwnershipTransferPanel(
            api: api,
            roomId: 'room_1',
            onChanged: onChanged ?? () async {},
          ),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

class _OfferingApi extends _Api {
  _OfferingApi() : super(owner: true) {
    role = 'owner';
  }
  final offers = <Map<String, dynamic>>[];
  @override
  Future<List<Map<String, dynamic>>> items(
    String id,
    String collection,
  ) async => collection == 'members'
      ? [
          {'userId': 'bob', 'role': 'member', 'state': 'active'},
        ]
      : [];
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async {
    if (method == 'POST' && resource == 'ownership-transfer') {
      offers.add(Map.from(values));
      return {
        'ownershipVersion': 1,
        'transfer': {'targetUserId': 'bob'},
      };
    }
    return super.request(id, method, resource, values);
  }
}

void main() {
  testWidgets(
    'Room info offers ownership with a request key and preserves the current role',
    (tester) async {
      final api = _OfferingApi();
      await tester.pumpWidget(
        MaterialApp(
          home: RoomCommunityScreen(api: api, roomId: 'room_1'),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('Garden'));
      await tester.pumpAndSettle();
      await tester.scrollUntilVisible(
        find.byTooltip('Manage member'),
        220,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.tap(find.byTooltip('Manage member'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Offer ownership'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 350));
      expect(api.offers, isEmpty);
      expect(find.textContaining('You stay owner until then.'), findsOneWidget);
      await tester.tap(find.text('Confirm'));
      await tester.pumpAndSettle();
      expect(api.offers.single['targetUserId'], 'bob');
      expect(api.offers.single['requestId'], isNotEmpty);
      expect(api.role, 'owner');
    },
  );
  testWidgets(
    'recipient explicitly confirms before canonical acceptance and parent readback',
    (tester) async {
      final api = _Api();
      var reads = 0;
      await mount(
        tester,
        api,
        onChanged: () async {
          reads++;
        },
      );
      expect(find.text('Awaiting acceptance'), findsOneWidget);
      await tester.tap(find.text('Accept ownership'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 350));
      expect(api.writes, isEmpty);
      expect(find.text('Accept Room ownership?'), findsOneWidget);
      await tester.tap(find.text('Confirm'));
      await tester.pumpAndSettle();
      expect(api.writes, ['ownership-transfer/offer_1/accept']);
      expect(reads, 1);
      expect(find.text('Ownership accepted'), findsOneWidget);
      expect(find.text('Accept ownership'), findsNothing);
    },
  );
  testWidgets('back from confirmation leaves roles and request untouched', (
    tester,
  ) async {
    final api = _Api();
    await mount(tester, api);
    await tester.tap(find.text('Accept ownership'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 350));
    await tester.tap(find.text('Back'));
    await tester.pumpAndSettle();
    expect(api.writes, isEmpty);
    expect(api.status, 'pending');
  });
  for (final owner in [false, true]) {
    testWidgets(
      owner
          ? 'source can cancel but cannot accept'
          : 'recipient can decline but cannot cancel',
      (tester) async {
        final api = _Api(owner: owner);
        await mount(tester, api);
        expect(
          find.text(owner ? 'Accept ownership' : 'Cancel offer'),
          findsNothing,
        );
        await tester.tap(find.text(owner ? 'Cancel offer' : 'Decline offer'));
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 350));
        await tester.tap(find.text('Confirm'));
        await tester.pumpAndSettle();
        expect(api.status, owner ? 'cancelled' : 'declined');
        expect(api.writes, hasLength(1));
      },
    );
  }
  testWidgets(
    'lost committed response requires original-offer readback before another decision',
    (tester) async {
      final api = _Api()..loseResponse = true;
      await mount(tester, api);
      await tester.tap(find.text('Accept ownership'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 350));
      await tester.tap(find.text('Confirm'));
      await tester.pumpAndSettle();
      expect(find.textContaining('outcome is unconfirmed'), findsOneWidget);
      expect(
        tester
            .widget<FilledButton>(
              find.widgetWithText(FilledButton, 'Accept ownership'),
            )
            .onPressed,
        isNull,
      );
      await tester.tap(find.text('Refresh ownership status'));
      await tester.pumpAndSettle();
      expect(find.text('Ownership accepted'), findsOneWidget);
      expect(api.writes, hasLength(1));
    },
  );
  testWidgets('permission loss clears participant names and decisions', (
    tester,
  ) async {
    final api = _Api();
    await mount(tester, api);
    expect(find.text('From Alice to Bob'), findsOneWidget);
    api.denyRead = true;
    await tester.tap(find.text('Refresh ownership status'));
    await tester.pumpAndSettle();
    expect(find.text('From Alice to Bob'), findsNothing);
    expect(find.text('Accept ownership'), findsNothing);
  });
  testWidgets(
    'API replacement during confirmation cannot submit the old offer',
    (tester) async {
      final first = _Api(), second = _Api(owner: true);
      await mount(tester, first);
      await tester.tap(find.text('Accept ownership'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 350));
      await mount(tester, second);
      await tester.tap(find.text('Confirm'));
      await tester.pumpAndSettle();
      expect(first.writes, isEmpty);
      expect(second.writes, isEmpty);
    },
  );
  testWidgets(
    'late previous account response cannot overwrite replacement state',
    (tester) async {
      final first = _Api()..pending = Completer<Map<String, dynamic>>(),
          second = _Api(owner: true);
      await mount(tester, first);
      await tester.tap(find.text('Accept ownership'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 350));
      await tester.tap(find.text('Confirm'));
      await tester.pump();
      await mount(tester, second);
      first.status = 'accepted';
      first.pending!.complete(first.snapshot);
      await tester.pumpAndSettle();
      expect(find.text('Awaiting acceptance'), findsOneWidget);
      expect(find.text('Ownership accepted'), findsNothing);
      expect(find.text('Cancel offer'), findsOneWidget);
    },
  );
  testWidgets('320dp and 200 percent text keeps decisions reachable', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await mount(tester, _Api(), narrow: true);
    await tester.ensureVisible(find.text('Decline offer'));
    expect(tester.takeException(), isNull);
    await tester.tap(find.text('Decline offer'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 350));
    expect(find.text('Decline ownership offer?'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
