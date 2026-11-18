import 'package:flutter/material.dart';

import '../../safety/twin_safety.dart';
import '../../theme/masanawa_theme.dart';

/// A full-page safety report: no popup form, and a failed submission never
/// discards the selected reason or the typed detail.
class MasanaReportScreen extends StatefulWidget {
  const MasanaReportScreen({
    super.key,
    required this.displayName,
    required this.onSubmit,
  });

  final String displayName;
  final Future<bool> Function(TwinReportReason reason, String? detail) onSubmit;

  @override
  State<MasanaReportScreen> createState() => _MasanaReportScreenState();
}

class _MasanaReportScreenState extends State<MasanaReportScreen> {
  final _details = TextEditingController();
  TwinReportReason? _selected;
  String? _error;
  bool _sending = false;

  @override
  void dispose() {
    _details.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final selected = _selected;
    if (_sending || selected == null) return;
    setState(() {
      _sending = true;
      _error = null;
    });
    bool ok = false;
    try {
      ok = await widget.onSubmit(
        selected,
        _details.text.trim().isEmpty ? null : _details.text.trim(),
      );
    } catch (_) {
      ok = false;
    }
    if (!mounted) return;
    if (ok) {
      Navigator.of(context).pop(true);
    } else {
      setState(() {
        _error = 'Could not confirm this report. Your details are still here. Check your connection before retrying.';
        _sending = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    return Scaffold(
      backgroundColor: colors.surfaceBg,
      appBar: AppBar(title: const Text('Report Masana')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 40),
          children: [
            Text(
              'Report ${widget.displayName}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            const Text('Choose the most relevant reason. Reports are reviewed for safety.'),
            const SizedBox(height: 16),
            for (final reason in TwinReportReason.values)
              Semantics(
                button: true,
                selected: _selected == reason,
                child: ListTile(
                  key: ValueKey('report-reason-${reason.name}'),
                  title: Text(twinReportReasonLabel(reason)),
                  leading: Icon(
                    _selected == reason
                        ? Icons.radio_button_checked
                        : Icons.radio_button_unchecked,
                    color: _selected == reason ? colors.brandStrong : colors.textMuted,
                  ),
                  selected: _selected == reason,
                  enabled: !_sending,
                  onTap: _sending ? null : () => setState(() {
                    _selected = reason;
                    _error = null;
                  }),
                ),
              ),
            const SizedBox(height: 12),
            TextField(
              key: const ValueKey('report-details'),
              controller: _details,
              maxLines: 4,
              minLines: 3,
              maxLength: 1000,
              enabled: !_sending,
              textCapitalization: TextCapitalization.sentences,
              decoration: const InputDecoration(
                labelText: 'Additional details (optional)',
                alignLabelWithHint: true,
                hintText: 'Describe what happened',
              ),
            ),
            if (_error != null) ...[
              const SizedBox(height: 8),
              Semantics(
                liveRegion: true,
                child: Text(_error!, style: TextStyle(color: colors.emergency)),
              ),
            ],
            const SizedBox(height: 20),
            FilledButton.icon(
              key: const ValueKey('report-submit'),
              onPressed: _selected == null || _sending ? null : _submit,
              icon: _sending
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.flag_outlined),
              label: Text(_sending ? 'Submitting…' : 'Submit report'),
            ),
          ],
        ),
      ),
    );
  }
}
