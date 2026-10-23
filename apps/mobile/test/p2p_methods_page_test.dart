import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/p2p_methods_page.dart';
import 'package:masanawa/src/finance/msnw_p2p_screen.dart';

class Fixture {
  String? nickname;
  bool preferred = false, archived = false, used = false;
  int preferences = 0;
  String? user = 'owner';
  bool disabled = false, fail = false, failDisable = false, revoked = false;
  int writes = 0, reads = 0;
  Completer<Map<String, dynamic>>? held;
  Future<Map<String, dynamic>> load() async {
    reads++;
    if (revoked)
      throw DioException(
        requestOptions: RequestOptions(path: '/methods'),
        response: Response(
          requestOptions: RequestOptions(path: '/methods'),
          statusCode: 401,
        ),
      );
    if (held != null) return held!.future;
    if (fail) throw StateError('offline');
    return {
      'items': archived
          ? []
          : [
              {
                'private_label': nickname,
                'preferred': preferred,
                'can_archive': !used,
                'method_id': 'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa',
                'bank_name': 'Verified Bank',
                'account_last_four': '1234',
                'verified_at': '2026-10-23T09:00:00Z',
                'disabled_at': disabled ? '2026-10-23T10:00:00Z' : null,
              },
            ],
    };
  }

  Future<void> disable(String id) async {
    expect(id, 'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa');
    writes++;
    disabled = true;
    if (failDisable) throw StateError('response lost');
  }

  Widget page({bool large = false, bool prefs = false}) => MaterialApp(
    home: MediaQuery(
      data: MediaQueryData(textScaler: TextScaler.linear(large ? 2 : 1)),
      child: Directionality(
        textDirection: large ? TextDirection.rtl : TextDirection.ltr,
        child: P2pMethodsPage(
          expectedUserId: 'owner',
          currentUserId: () => user,
          load: load,
          disable: disable,
          rename: prefs
              ? (id, label) async {
                  preferences++;
                  nickname = label;
                }
              : null,
          prefer: prefs
              ? (id) async {
                  preferences++;
                  preferred = true;
                }
              : null,
          archive: prefs
              ? (id) async {
                  preferences++;
                  if (used)
                    throw DioException(
                      requestOptions: RequestOptions(path: '/archive'),
                      response: Response(
                        requestOptions: RequestOptions(path: '/archive'),
                        statusCode: 409,
                        data: {'error': 'p2p.method_in_use'},
                      ),
                    );
                  archived = true;
                }
              : null,
        ),
      ),
    ),
  );
}

void main() {
  testWidgets(
    'masked bank, consent and authoritative readback preserve original instructions',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      expect(find.text('Account ending 1234'), findsOneWidget);
      expect(find.textContaining('third-party'), findsOneWidget);
      await t.tap(find.text('Deactivate bank method'));
      await t.pumpAndSettle();
      expect(
        find.textContaining('Existing orders keep their original'),
        findsOneWidget,
      );
      expect(f.writes, 0);
      await t.tap(find.text('Keep active'));
      await t.pumpAndSettle();
      expect(f.writes, 0);
      await t.tap(find.text('Deactivate bank method'));
      await t.pumpAndSettle();
      await t.tap(find.text('Deactivate'));
      await t.pumpAndSettle();
      expect(f.writes, 1);
      expect(f.reads, 2);
      expect(
        find.text('Deactivated · Existing order instructions retained'),
        findsOneWidget,
      );
      expect(find.text('Deactivate bank method'), findsNothing);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'lost retirement result checks original method without claiming false success',
    (t) async {
      final f = Fixture()..failDisable = true;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      await t.tap(find.text('Deactivate bank method'));
      await t.pumpAndSettle();
      await t.tap(find.text('Deactivate'));
      await t.pumpAndSettle();
      expect(
        find.textContaining('Deactivation is not confirmed'),
        findsOneWidget,
      );
      expect(f.writes, 1);
      await t.tap(find.text('Check bank methods'));
      await t.pumpAndSettle();
      expect(
        find.text('Deactivated · Existing order instructions retained'),
        findsOneWidget,
      );
      expect(f.writes, 1);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets('offline load has retry and no unsafe action', (t) async {
    final f = Fixture()..fail = true;
    await t.pumpWidget(f.page());
    await t.pumpAndSettle();
    expect(find.textContaining('could not be checked'), findsOneWidget);
    expect(find.text('Deactivate bank method'), findsNothing);
    f.fail = false;
    await t.tap(find.text('Check bank methods'));
    await t.pumpAndSettle();
    expect(find.text('Account ending 1234'), findsOneWidget);
    await t.pumpWidget(const SizedBox());
  });
  testWidgets('account replacement while confirmation is open cannot retire', (
    t,
  ) async {
    final f = Fixture();
    await t.pumpWidget(f.page());
    await t.pumpAndSettle();
    await t.tap(find.text('Deactivate bank method'));
    await t.pumpAndSettle();
    f.user = 'replacement';
    await t.pump(const Duration(seconds: 1));
    await t.tap(find.text('Deactivate'));
    await t.pumpAndSettle();
    expect(f.writes, 0);
    expect(find.text('Account changed. Reopen P2P.'), findsOneWidget);
    expect(find.text('Account ending 1234'), findsNothing);
    await t.pumpWidget(const SizedBox());
  });
  testWidgets(
    'late account-scoped read never displays private methods after replacement',
    (t) async {
      final f = Fixture(), held = Completer<Map<String, dynamic>>();
      f.held = held;
      await t.pumpWidget(f.page());
      await t.pump();
      f.user = 'replacement';
      await t.pump(const Duration(seconds: 1));
      held.complete({'items': []});
      await t.pumpAndSettle();
      expect(find.text('Account changed. Reopen P2P.'), findsOneWidget);
      expect(
        find.text(
          'No verified bank methods. Return to My offers to verify your own bank.',
        ),
        findsNothing,
      );
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'revoked authorization clears cached method history and permits a fresh retry',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      expect(find.text('Account ending 1234'), findsOneWidget);
      f.revoked = true;
      await t.tap(find.text('Check bank methods'));
      await t.pumpAndSettle();
      expect(find.text('Account ending 1234'), findsNothing);
      expect(find.text('Deactivate bank method'), findsNothing);
      f.revoked = false;
      await t.tap(find.text('Check bank methods'));
      await t.pumpAndSettle();
      expect(find.text('Account ending 1234'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets('320dp 200percent RTL confirmation and cancel stay reachable', (
    t,
  ) async {
    t.view.physicalSize = const Size(320, 850);
    t.view.devicePixelRatio = 1;
    addTearDown(t.view.resetPhysicalSize);
    addTearDown(t.view.resetDevicePixelRatio);
    final f = Fixture();
    await t.pumpWidget(f.page(large: true));
    await t.pumpAndSettle();
    await t.scrollUntilVisible(
      find.text('Deactivate bank method').hitTestable(),
      200,
      scrollable: find.byType(Scrollable).first,
    );
    await t.pumpAndSettle();
    await t.tap(find.text('Deactivate bank method'));
    await t.pumpAndSettle();
    await t.ensureVisible(find.text('Keep active'));
    await t.tap(find.text('Keep active'));
    await t.pumpAndSettle();
    expect(f.writes, 0);
    expect(t.takeException(), isNull);
    await t.pumpWidget(const SizedBox());
  });
  testWidgets(
    'private nickname is explicit and read back without replacing verified bank identity',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page(prefs: true));
      await t.pumpAndSettle();
      await t.tap(find.text('Edit private nickname'));
      await t.pumpAndSettle();
      await t.enterText(
        find.widgetWithText(TextFormField, 'Private nickname'),
        'Daily bank',
      );
      expect(f.preferences, 0);
      await t.tap(find.text('Save nickname'));
      await t.pumpAndSettle();
      expect(f.preferences, 1);
      expect(find.text('Nickname: Daily bank'), findsOneWidget);
      expect(find.text('Verified Bank'), findsOneWidget);
      await t.tap(find.text('Edit private nickname'));
      await t.pumpAndSettle();
      await t.enterText(
        find.widgetWithText(TextFormField, 'Private nickname'),
        '',
      );
      await t.tap(find.text('Save nickname'));
      await t.pumpAndSettle();
      expect(f.nickname, isNull);
      expect(find.textContaining('Nickname:'), findsNothing);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'default and unused removal require confirmation and authoritative readback',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page(prefs: true));
      await t.pumpAndSettle();
      await t.tap(find.text('Use by default'));
      await t.pumpAndSettle();
      expect(f.preferences, 0);
      expect(
        find.textContaining('Existing ads and accepted orders keep'),
        findsOneWidget,
      );
      await t.tap(find.text('Use by default').last);
      await t.pumpAndSettle();
      expect(f.preferences, 1);
      expect(find.text('Default for new P2P ads'), findsOneWidget);
      await t.scrollUntilVisible(
        find.text('Remove unused method').hitTestable(),
        150,
        scrollable: find.byType(Scrollable).first,
      );
      await t.pumpAndSettle();
      await t.tap(find.text('Remove unused method'));
      await t.pumpAndSettle();
      await t.tap(find.text('Remove method'));
      await t.pumpAndSettle();
      expect(f.archived, isTrue);
      expect(find.text('Verified Bank'), findsNothing);
      expect(find.textContaining('No verified bank methods'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'account replacement while nickname dialog is open cannot change preferences',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page(prefs: true));
      await t.pumpAndSettle();
      await t.tap(find.text('Edit private nickname'));
      await t.pumpAndSettle();
      await t.enterText(
        find.widgetWithText(TextFormField, 'Private nickname'),
        'New name',
      );
      f.user = 'other';
      await t.pump(const Duration(seconds: 1));
      await t.tap(find.text('Save nickname'));
      await t.pumpAndSettle();
      expect(f.preferences, 0);
      expect(find.text('Account changed. Reopen P2P.'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'server refusal of removal keeps method and gives a deactivation recovery path',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page(prefs: true));
      await t.pumpAndSettle();
      await t.scrollUntilVisible(
        find.text('Remove unused method').hitTestable(),
        150,
        scrollable: find.byType(Scrollable).first,
      );
      await t.pumpAndSettle();
      await t.tap(find.text('Remove unused method'));
      await t.pumpAndSettle();
      f.used = true;
      await t.tap(find.text('Remove method'));
      await t.pumpAndSettle();
      expect(f.archived, isFalse);
      expect(
        find.text(
          'This bank method is used by an ad or order. Deactivate it instead.',
        ),
        findsOneWidget,
      );
      expect(find.text('Verified Bank'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'server default prefills only new ad selection and preserves an existing draft bank',
    (t) async {
      final banks = <Map<String, dynamic>>[
        {
          'method_id': 'bank-one',
          'bank_name': 'First Bank',
          'private_label':'Emergency account',
          'account_name': 'Synthetic Owner',
          'account_number': '••••1234',
        },
        {
          'method_id': 'bank-two',
          'bank_name': 'Default Bank',
          'account_name': 'Synthetic Owner',
          'account_number': '••••5678',
          'preferred': true,
        },
      ];
      Widget form(Map<String, String>? draft) => MaterialApp(
        home: Scaffold(
          body: MsnwP2pSellerOfferForm(
            key: ValueKey(draft == null ? 'new' : 'draft'),
            methods: banks,
            initialDraft: draft,
            onPublish: (_) async {},
          ),
        ),
      );
      await t.pumpWidget(form(null));
      await t.pumpAndSettle();
      expect(find.text('Default Bank · Synthetic Owner · ••••5678'),findsOneWidget);
      await t.pumpWidget(form({'methodId': 'bank-one'}));
      await t.pumpAndSettle();
      expect(find.text('First Bank · Emergency account · Synthetic Owner · ••••1234'),findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
 testWidgets('320dp 200percent RTL nickname and default remain reachable',(t)async{
  t.view.physicalSize=const Size(320,850);t.view.devicePixelRatio=1;addTearDown(t.view.resetPhysicalSize);addTearDown(t.view.resetDevicePixelRatio);
  final f=Fixture();await t.pumpWidget(f.page(large:true,prefs:true));await t.pumpAndSettle();
  await t.scrollUntilVisible(find.text('Edit private nickname').hitTestable(),150,scrollable:find.byType(Scrollable).first);await t.pumpAndSettle();await t.tap(find.text('Edit private nickname'));await t.pumpAndSettle();
  await t.enterText(find.widgetWithText(TextFormField,'Private nickname'),'Daily bank');await t.ensureVisible(find.text('Save nickname'));await t.tap(find.text('Save nickname'));await t.pumpAndSettle();expect(f.nickname,'Daily bank');
  await t.scrollUntilVisible(find.text('Use by default').hitTestable(),150,scrollable:find.byType(Scrollable).first);await t.pumpAndSettle();await t.tap(find.text('Use by default'));await t.pumpAndSettle();await t.ensureVisible(find.text('Use by default').last);await t.tap(find.text('Use by default').last);await t.pumpAndSettle();expect(f.preferred,isTrue);expect(f.writes,0);expect(t.takeException(),isNull);await t.pumpWidget(const SizedBox());
 });

}
