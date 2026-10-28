import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/phone/country_codes.dart';
import 'package:masanawa/src/localization/masanawa_localization.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/ui/components/phone_field.dart';

void main() {
  test('device locale is an editable country suggestion, not phone proof', () {
    expect(suggestPhoneCountryFromLocale('ng').iso, 'NG');
    expect(suggestPhoneCountryFromLocale('CA').iso, 'CA');
    expect(suggestPhoneCountryFromLocale('GB').dialCode, '44');
    expect(suggestPhoneCountryFromLocale('ZZ').iso, 'NG');
    expect(suggestPhoneCountryFromLocale(null).iso, 'NG');
  });
  testWidgets(
    'local digits keep Nigeria while explicit international input changes country',
    (tester) async {
      final controller = TextEditingController();
      addTearDown(controller.dispose);
      await tester.pumpWidget(
        MaterialApp(
          theme: buildMasanawaTheme(brightness: Brightness.light),
          supportedLocales: MasanawaLocalization.supportedLocales,
          localizationsDelegates: MasanawaLocalization.delegates,
          home: Scaffold(body: PhoneField(controller: controller)),
        ),
      );
      await tester.enterText(find.byType(TextField), '1');
      await tester.pump();
      expect(find.text('+234'), findsOneWidget);
      await tester.enterText(find.byType(TextField), '+44 20 7946 0000');
      await tester.pump();
      expect(find.text('+44'), findsOneWidget);
    },
  );

  testWidgets(
    'manual country choice survives local typing and normalizes correctly',
    (tester) async {
      final controller = TextEditingController();
      addTearDown(controller.dispose);
      PhoneCountry selected = kDefaultCountry;
      await tester.pumpWidget(
        MaterialApp(
          theme: buildMasanawaTheme(brightness: Brightness.light),
          supportedLocales: MasanawaLocalization.supportedLocales,
          localizationsDelegates: MasanawaLocalization.delegates,
          home: Scaffold(
            body: PhoneField(
              controller: controller,
              onCountryChanged: (country) => selected = country,
            ),
          ),
        ),
      );
      await tester.tap(find.byKey(const Key('phone-country-picker')));
      await tester.pumpAndSettle();
      final choice = find.byKey(const Key('phone-country-GB'));
      expect(choice, findsOneWidget);
      await tester.ensureVisible(choice);
      await tester.tap(choice);
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField), '020 7946 0000');
      await tester.pump();
      expect(find.text('+44'), findsOneWidget);
      expect(selected.iso, 'GB');
      expect(
        normalizeE164(controller.text, country: selected),
        '+442079460000',
      );
    },
  );

  testWidgets('national entry never duplicates or exposes the calling prefix',
      (tester) async {
    final controller = TextEditingController(text: '+234');
    addTearDown(controller.dispose);
    PhoneCountry selected = kDefaultCountry;
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      supportedLocales: MasanawaLocalization.supportedLocales,
      localizationsDelegates: MasanawaLocalization.delegates,
      home: Scaffold(body: PhoneField(controller: controller,
        nationalEntry: true, onCountryChanged: (c) => selected = c)),
    ));
    final national = find.byKey(const Key('phone-national-number'));
    expect(tester.widget<TextField>(national).controller!.text, isEmpty);
    expect(find.text('+234'), findsOneWidget);

    await tester.enterText(national, '08031234567');
    await tester.pump();
    expect(controller.text, '+23408031234567');
    expect(normalizeE164(controller.text, country: selected), '+2348031234567');
    expect(tester.widget<TextField>(national).controller!.text, '08031234567');

    // A pasted international number suggests its country, strips the prefix
    // from the editable portion and updates one canonical E.164 controller.
    await tester.enterText(national, '+44 20 7946 0000');
    await tester.pump();
    expect(selected.iso, 'GB');
    expect(controller.text, '+442079460000');
    expect(tester.widget<TextField>(national).controller!.text, '2079460000');
    expect(find.text('+44'), findsOneWidget);

    await tester.enterText(national, '+ 44 20 7946 0000');
    await tester.pump();
    expect(controller.text, '+442079460000');
    expect(tester.widget<TextField>(national).controller!.text, '2079460000');
    await tester.enterText(national, '00 44 20 7946 0000');
    await tester.pump();
    expect(controller.text, '+442079460000');
    expect(tester.widget<TextField>(national).controller!.text, '2079460000');
  });

  testWidgets('national entry keeps digits on country switch and explicit +1',
      (tester) async {
    final controller = TextEditingController(text: '+14165550123');
    addTearDown(controller.dispose);
    PhoneCountry selected = kPhoneCountries.firstWhere((c) => c.iso == 'CA');
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      supportedLocales: MasanawaLocalization.supportedLocales,
      localizationsDelegates: MasanawaLocalization.delegates,
      home: Scaffold(body: PhoneField(controller: controller,
        nationalEntry: true, initialCountry: selected,
        onCountryChanged: (c) => selected = c)),
    ));
    final national = find.byKey(const Key('phone-national-number'));
    expect(tester.widget<TextField>(national).controller!.text, '4165550123');
    await tester.enterText(national, '+1 416 555 0199');
    await tester.pump();
    expect(selected.iso, 'CA', reason: 'Shared +1 must preserve explicit Canada');
    expect(controller.text, '+14165550199');
    await tester.tap(find.byKey(const Key('phone-country-picker')));
    await tester.pumpAndSettle();
    final choice = find.byKey(const Key('phone-country-GB'));
    await tester.ensureVisible(choice);
    await tester.tap(choice);
    await tester.pumpAndSettle();
    expect(selected.iso, 'GB');
    expect(controller.text, '+444165550199');
    expect(tester.widget<TextField>(national).controller!.text, '4165550199');
  });

  testWidgets('shared +1 international paste requires picker and never doubles prefix',
      (tester)async{
    final controller=TextEditingController(text:'+234');
    addTearDown(controller.dispose);
    PhoneCountry selected=kDefaultCountry;
    await tester.pumpWidget(MaterialApp(
      theme:buildMasanawaTheme(brightness:Brightness.light),
      supportedLocales:MasanawaLocalization.supportedLocales,
      localizationsDelegates:MasanawaLocalization.delegates,
      home:Scaffold(body:PhoneField(controller:controller,nationalEntry:true,
        onCountryChanged:(country)=>selected=country))));
    final national=find.byKey(const Key('phone-national-number'));
    await tester.enterText(national,'+1 (416) 555-0123');
    await tester.pump();
    expect(selected.iso,'UN');
    expect(controller.text,'+14165550123');
    await tester.tap(find.byKey(const Key('phone-country-picker')));
    await tester.pumpAndSettle();
    final canada=find.byKey(const Key('phone-country-CA'));
    await tester.ensureVisible(canada);
    await tester.tap(canada);
    await tester.pumpAndSettle();
    expect(selected.iso,'CA');
    expect(controller.text,'+14165550123');
    expect(tester.widget<TextField>(national).controller!.text,'4165550123');
  });

  testWidgets('national entry stays legible at large type in Hausa and RTL',
      (tester)async{
    tester.view.physicalSize=const Size(720,1440);
    tester.view.devicePixelRatio=2;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final controller=TextEditingController(text:'+234');
    addTearDown(controller.dispose);
    await tester.pumpWidget(MaterialApp(
      theme:buildMasanawaTheme(brightness:Brightness.light),
      locale:const Locale('ha'),
      supportedLocales:MasanawaLocalization.supportedLocales,
      localizationsDelegates:MasanawaLocalization.delegates,
      builder:(context,child)=>MediaQuery(
        data:MediaQuery.of(context).copyWith(textScaler:const TextScaler.linear(1.5)),
        child:Directionality(textDirection:TextDirection.rtl,child:child!)),
      home:Scaffold(body:SingleChildScrollView(child:PhoneField(
        controller:controller,nationalEntry:true))));
    await tester.pump();
    expect(find.text('Sauran lambobin wayarka'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });
}
