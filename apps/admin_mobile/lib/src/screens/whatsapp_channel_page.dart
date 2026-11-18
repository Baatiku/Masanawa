import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../core/admin_api.dart';
import '../core/whatsapp_channel_api.dart';
import '../theme/masanawa_theme.dart';

class WhatsAppChannelPage extends StatefulWidget {
  const WhatsAppChannelPage({super.key, required this.adminApi});
  final AdminApi adminApi;
  @override
  State<WhatsAppChannelPage> createState() => _WhatsAppChannelPageState();
}

class _WhatsAppChannelPageState extends State<WhatsAppChannelPage> {
  late final WhatsAppChannelApi _api = WhatsAppChannelApi(
    token: widget.adminApi.currentAccessToken,
    refreshAccessToken: widget.adminApi.refreshForExternalClient,
  );
  late Future<WhatsAppChannelStatus> _future = _api.status();
  bool _resetting = false;

  void _refresh() => setState(() => _future = _api.status());

  Future<void> _reset() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Relink Gwani WhatsApp?'),
        content: const Text('This logs out the linked session and creates a new pairing QR. Use it only when replacing or reconnecting the dedicated Gwani number.'),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(false), child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.of(context).pop(true), child: const Text('Relink')),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;
    setState(() => _resetting = true);
    try {
      await _api.reset();
      if (mounted) _refresh();
    } catch (error) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.toString())));
    } finally {
      if (mounted) setState(() => _resetting = false);
    }
  }

  Future<void> _showQr() async {
    await showDialog<void>(
      context: context,
      builder: (_) => WhatsAppPairingDialog(
        loadStatus: _api.status,
        loadQr: _api.qr,
      ),
    );
    if (mounted) _refresh();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder<WhatsAppChannelStatus>(
    future: _future,
    builder: (context, snapshot) {
      final status = snapshot.data;
      return RefreshIndicator(
        onRefresh: () async {
          final next = _api.status();
          setState(() => _future = next);
          await next;
        },
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            Text('WhatsApp', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 4),
            Text('One admin-linked Gwani number. Customers simply message it and use the same Masanawa account, wallet, Skills and memory.', style: TextStyle(color: context.masanawa.textMuted)),
            const SizedBox(height: 16),
            if (snapshot.connectionState == ConnectionState.waiting && status == null)
              const Center(child: Padding(padding: EdgeInsets.all(32), child: CircularProgressIndicator()))
            else if (snapshot.hasError)
              Card(child: ListTile(leading: const Icon(Icons.error_outline), title: const Text('Unable to read WhatsApp status'), subtitle: Text(snapshot.error.toString()), trailing: IconButton(onPressed: _refresh, icon: const Icon(Icons.refresh))))
            else if (status != null) ...[
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        CircleAvatar(
                          backgroundColor: status.connected ? context.masanawa.brand.withValues(alpha: .12) : context.masanawa.surfaceMuted,
                          child: Icon(status.connected ? Icons.check_circle_outline : status.qrReady ? Icons.qr_code_2 : Icons.link_off, color: status.connected ? context.masanawa.brand : context.masanawa.textMuted),
                        ),
                        const SizedBox(width: 12),
                        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Text(status.connected ? 'Connected' : _statusLabel(status.status), style: Theme.of(context).textTheme.titleMedium),
                          Text(status.phone ?? 'Gwani number not linked', style: TextStyle(color: context.masanawa.textMuted)),
                        ])),
                      ]),
                      const SizedBox(height: 14),
                      _Detail(label: 'Transport', value: status.mode),
                      _Detail(label: 'Last event', value: status.lastEvent),
                      _Detail(label: 'Reconnect attempts', value: '${status.reconnectAttempt}'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              if (!status.connected && status.qrReady)
                FilledButton.icon(onPressed: _showQr, icon: const Icon(Icons.qr_code_2), label: const Text('Show pairing QR')),
              if (!status.connected && !status.qrReady)
                OutlinedButton.icon(onPressed: _refresh, icon: const Icon(Icons.refresh), label: const Text('Check for pairing QR')),
              const SizedBox(height: 8),
              OutlinedButton.icon(
                onPressed: _resetting ? null : _reset,
                icon: _resetting ? const SizedBox.square(dimension: 18, child: CircularProgressIndicator(strokeWidth: 2)) : const Icon(Icons.restart_alt),
                label: Text(_resetting ? 'Relinking…' : 'Relink / replace number'),
              ),
              const SizedBox(height: 16),
              const Card(child: ListTile(leading: Icon(Icons.info_outline), title: Text('Customer experience'), subtitle: Text('Customers do not scan anything. They message the linked Gwani number directly. New numbers can become Masanawa customers automatically.'))),
            ],
          ],
        ),
      );
    },
  );

  String _statusLabel(String value) => switch (value) {
    'qr' => 'Ready to pair',
    'connecting' => 'Connecting',
    'reconnecting' => 'Reconnecting',
    'logged-out' => 'Logged out',
    _ => 'Offline',
  };
}

class _Detail extends StatelessWidget {
  const _Detail({required this.label, required this.value});
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 6),
    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(width: 135, child: Text(label, style: TextStyle(color: context.masanawa.textMuted))),
      Expanded(child: Text(value)),
    ]),
  );
}

 
/// Scan data stays in memory, never in preferences, logs, or an external URL.
Uint8List? decodeWhatsAppPairingQr(String raw) {
  if (raw.length > 1024 * 1024) return null;
  final match = RegExp(r'^data:image/png;base64,([A-Za-z0-9+/=]+)$')
      .firstMatch(raw);
  if (match == null) return null;
  try {
    final bytes = base64Decode(match.group(1)!);
    return bytes.isEmpty ? null : Uint8List.fromList(bytes);
  } catch (_) {
    return null;
  }
}

/// A live pairing QR, rather than a stale one-time screenshot. While the
/// Gateway rotates QR challenges, the admin sees the latest value and an
/// immediate success state when the linked phone connects.
class WhatsAppPairingDialog extends StatefulWidget {
  const WhatsAppPairingDialog({
    super.key,
    required this.loadStatus,
    required this.loadQr,
  });

  final Future<WhatsAppChannelStatus> Function() loadStatus;
  final Future<WhatsAppQr> Function() loadQr;

  @override
  State<WhatsAppPairingDialog> createState() => _WhatsAppPairingDialogState();
}

class _WhatsAppPairingDialogState extends State<WhatsAppPairingDialog> {
  Timer? _poll;
  Uint8List? _qrBytes;
  bool _busy = false;
  bool _connected = false;
  String? _problem;

  @override
  void initState() {
    super.initState();
    unawaited(_refreshQr());
    _poll = Timer.periodic(
      const Duration(seconds: 5),
      (_) => unawaited(_refreshQr()),
    );
  }

  Future<void> _refreshQr() async {
    if (_busy || _connected || !mounted) return;
    _busy = true;
    try {
      final status = await widget.loadStatus();
      if (!mounted) return;
      if (status.connected) {
        _poll?.cancel();
        setState(() {
          _connected = true;
          _qrBytes = null;
          _problem = null;
        });
        return;
      }
      if (!status.qrReady) {
        setState(() {
          _qrBytes = null;
          _problem = 'Waiting for a new pairing QR from the Gateway.';
        });
        return;
      }
      final qr = await widget.loadQr();
      if (!mounted) return;
      final image = decodeWhatsAppPairingQr(qr.dataUrl);
      setState(() {
        _qrBytes = image;
        _problem = image == null
            ? 'The Gateway returned an invalid QR. Refresh to try again.'
            : null;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _qrBytes = null;
        _problem = 'Could not refresh the pairing QR. Check the connection.';
      });
    } finally {
      _busy = false;
    }
  }

  @override
  void dispose() {
    _poll?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: Text(_connected ? 'WhatsApp linked' : 'Link Gwani WhatsApp'),
    content: SizedBox(
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_connected) ...[
            const Icon(Icons.check_circle, size: 54, color: Colors.green),
            const SizedBox(height: 12),
            const Text('The dedicated Gwani phone is now connected.'),
          ] else ...[
            const Text(
              'On the dedicated phone, open WhatsApp → Linked devices → '
              'Link a device, then scan this QR. It refreshes automatically.',
            ),
            const SizedBox(height: 16),
            if (_qrBytes != null)
              Image.memory(_qrBytes!, width: 260, height: 260, gaplessPlayback: true)
            else
              const Padding(
                padding: EdgeInsets.all(24),
                child: Icon(Icons.qr_code_2, size: 100),
              ),
            if (_problem != null) ...[
              const SizedBox(height: 12),
              Text(_problem!, textAlign: TextAlign.center),
            ],
          ],
        ],
      ),
    ),
    actions: [
      if (!_connected)
        TextButton.icon(
          onPressed: _busy ? null : _refreshQr,
          icon: const Icon(Icons.refresh),
          label: const Text('Refresh QR'),
        ),
      FilledButton(
        onPressed: () => Navigator.of(context).pop(),
        child: Text(_connected ? 'Done' : 'Close'),
      ),
    ],
  );
}
