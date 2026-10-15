import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa_admin/src/core/whatsapp_channel_api.dart';
import 'package:masanawa_admin/src/screens/whatsapp_channel_page.dart';

void main() {
  const onePixelPng =
      'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJ'
      'AAAADUlEQVQIHWP4z8DwHwAFgAI/ScL/nwAAAABJRU5ErkJggg==';

  test('rejects invalid and oversized pairing QR payloads', () {
    expect(decodeWhatsAppPairingQr('https://example.com/qr'), isNull);
    expect(decodeWhatsAppPairingQr('data:image/png;base64,###'), isNull);
    expect(decodeWhatsAppPairingQr(List.filled(1024 * 1024 + 1, 'x').join()), isNull);
    expect(
      decodeWhatsAppPairingQr('data:image/png;base64,$onePixelPng'),
      isNotNull,
    );
  });

  testWidgets('polling pairing dialog refreshes QR and detects connection',
      (tester) async {
    var connected = false;
    var qrCount = 0;
    Future<WhatsAppChannelStatus> status() async => WhatsAppChannelStatus(
          mode: 'linked-device',
          status: connected ? 'connected' : 'qr',
          connected: connected,
          phone: connected ? '+2348012345678' : null,
          lastEvent: connected ? 'connected' : 'qr-ready',
          reconnectAttempt: 0,
          qrReady: !connected,
        );
    Future<WhatsAppQr> qr() async {
      qrCount++;
      return WhatsAppQr(
        dataUrl: 'data:image/png;base64,$onePixelPng',
        status: 'qr',
      );
    }

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: WhatsAppPairingDialog(loadStatus: status, loadQr: qr),
      ),
    ));
    await tester.pump();
    expect(find.text('Link Gwani WhatsApp'), findsOneWidget);
    expect(qrCount, greaterThanOrEqualTo(1));
    connected = true;
    await tester.tap(find.text('Refresh QR'));
    await tester.pump();
    expect(find.text('WhatsApp linked'), findsOneWidget);
    expect(find.text('The dedicated Gwani phone is now connected.'),
        findsOneWidget);
    await tester.tap(find.text('Done'));
    await tester.pump();
  });
}
