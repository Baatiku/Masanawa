import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../core/wallet_payment_request.dart';

/// Untrusted, publicly shareable navigation hints only. This parser cannot
/// authorize a transaction; the authenticated Send form re-resolves the owner.
WalletPaymentRequest? parsePaymentQrPayload(String value, {DateTime? now}) {
  final raw = value.trim();
  if (raw.isEmpty || raw.length > 2000) return null;
  final uri = Uri.tryParse(raw);
  if (uri == null) return null;
  return parseWalletPaymentRequest(uri, now: now);
}

/// Permission is requested only when the person opens the live camera.
/// Gallery reads are separate explicit user actions; manual paste remains
/// available in the parent form even if this device has no scanning support.
class WalletPaymentQrScanner extends StatefulWidget {
  const WalletPaymentQrScanner({super.key, required this.onRequest});
  final ValueChanged<WalletPaymentRequest> onRequest;

  @override
  State<WalletPaymentQrScanner> createState() => _WalletPaymentQrScannerState();
}

class _WalletPaymentQrScannerState extends State<WalletPaymentQrScanner>
    with WidgetsBindingObserver {
  final MobileScannerController scanner = MobileScannerController(
    autoStart: false,
    formats: const [BarcodeFormat.qrCode],
    detectionSpeed: DetectionSpeed.noDuplicates,
  );
  bool cameraOpen = false, busy = false, completed = false;
  String? error;

  bool get nativeScanner => !kIsWeb && (Platform.isAndroid || Platform.isIOS);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!cameraOpen) return;
    if (state == AppLifecycleState.resumed) {
      if (!completed) _start();
    } else {
      scanner.stop();
    }
  }

  Future<void> _start() async {
    if (!nativeScanner || completed) return;
    setState(() {
      cameraOpen = true;
      error = null;
    });
    try {
      // The camera preview is inserted by the setState above. Starting
      // before its first frame fails on native scanner implementations.
      await WidgetsBinding.instance.endOfFrame;
      if (!mounted || !cameraOpen || completed) return;
      await scanner.start();
    } catch (_) {
      if (!mounted) return;
      setState(() {
        cameraOpen = false;
        error =
            'Camera unavailable or permission denied. Use a saved image or paste the link instead.';
      });
    }
  }

  void _usePayload(String? raw) {
    if (completed || raw == null) return;
    final parsed = parsePaymentQrPayload(raw);
    if (parsed == null) {
      if (mounted) {
        setState(
          () => error =
              'This is not a valid, unexpired Masanawa payment request.',
        );
      }
      return;
    }
    completed = true;
    scanner.stop();
    widget.onRequest(parsed);
  }

  Future<void> _gallery() async {
    if (!nativeScanner || busy || completed) return;
    setState(() {
      busy = true;
      error = null;
    });
    try {
      if (cameraOpen) {
        await scanner.stop();
        if (!mounted) return;
        setState(() => cameraOpen = false);
      }
      // The gallery picker requests only the permission needed for this action.
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null || !mounted || completed) return;
      final capture = await scanner.analyzeImage(image.path);
      if (!mounted || completed) return;
      final values =
          capture?.barcodes
              .where((barcode) => barcode.format == BarcodeFormat.qrCode)
              .map((barcode) => barcode.rawValue)
              .toList() ??
          [];
      for (final value in values) {
        if (value != null && parsePaymentQrPayload(value) != null) {
          _usePayload(value);
          return;
        }
      }
      setState(
        () => error = 'No supported Masanawa payment QR found in that image.',
      );
    } catch (_) {
      if (mounted) {
        setState(
          () => error =
              'Could not read this image. Paste the request link instead.',
        );
      }
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    scanner.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Scan a payment request',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            const Text(
              'Only Masanawa MSNW payment-request QR codes are supported. Scanning never sends money.',
            ),
            const SizedBox(height: 12),
            if (cameraOpen)
              SizedBox(
                height: 250,
                child: MobileScanner(
                  controller: scanner,
                  onDetect: (capture) {
                    for (final barcode in capture.barcodes) {
                      if (barcode.format == BarcodeFormat.qrCode) {
                        _usePayload(barcode.rawValue);
                        if (completed) break;
                      }
                    }
                  },
                  errorBuilder: (context, failure) => Center(
                    child: Text(
                      'Camera is unavailable. Choose an image or paste the request link.',
                    ),
                  ),
                ),
              ),
            if (error != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  error!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
            if (!nativeScanner)
              const Text(
                'Camera and photo QR reading are unavailable on this device. Use the link field.',
              ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                OutlinedButton.icon(
                  onPressed: nativeScanner && !busy
                      ? (cameraOpen
                            ? () {
                                scanner.stop();
                                setState(() => cameraOpen = false);
                              }
                            : _start)
                      : null,
                  icon: Icon(cameraOpen ? Icons.close : Icons.qr_code_scanner),
                  label: Text(cameraOpen ? 'Stop camera' : 'Use camera'),
                ),
                OutlinedButton.icon(
                  onPressed: nativeScanner && !busy ? _gallery : null,
                  icon: const Icon(Icons.photo_library_outlined),
                  label: const Text('Choose image'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Enter link instead'),
                ),
              ],
            ),
            if (busy) const LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
