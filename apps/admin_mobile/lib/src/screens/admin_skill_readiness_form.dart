import 'package:flutter/material.dart';

import '../core/admin_api.dart';

/// A normal administrative route; failure does not discard the selected state
/// or reason. The admin API owns authorization and optimistic revision checks.
class AdminSkillReadinessForm extends StatefulWidget {
  const AdminSkillReadinessForm({
    super.key,
    required this.skill,
    required this.onSave,
  });

  final AdminSkill skill;
  final Future<void> Function(String state, bool advertised, String reasonCode)
      onSave;

  @override
  State<AdminSkillReadinessForm> createState() => _AdminSkillReadinessFormState();
}

class _AdminSkillReadinessFormState extends State<AdminSkillReadinessForm> {
  late String _readiness;
  late bool _advertised;
  late final TextEditingController _reason;
  bool _saving = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    final initial = widget.skill.readiness;
    _readiness = const {'ready', 'degraded', 'blocked', 'disabled'}.contains(initial)
        ? initial
        : 'disabled';
    _advertised = _readiness == 'ready' && widget.skill.advertised;
    _reason = TextEditingController(text: widget.skill.reasonCode ?? '');
  }

  @override
  void dispose() {
    _reason.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_saving) return;
    final currentState = _readiness;
    final currentAdvertised = currentState == 'ready' && _advertised;
    final currentReason = _reason.text.trim();
    setState(() {
      _saving = true;
      _error = null;
    });
    try {
      await widget.onSave(currentState, currentAdvertised, currentReason);
      if (mounted) Navigator.of(context).pop(true);
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _saving = false;
        _error = 'Readiness could not be saved. Your settings are still here. '
            'Check your connection and retry.';
      });
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Skill readiness')),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 36),
            children: [
              Text(
                widget.skill.displayName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 6),
              Text('Version ${widget.skill.version}'),
              const SizedBox(height: 22),
              DropdownButtonFormField<String>(
                key: const ValueKey('skill-readiness-status'),
                initialValue: _readiness,
                decoration: const InputDecoration(labelText: 'Readiness'),
                items: const [
                  DropdownMenuItem(value: 'ready', child: Text('Ready')),
                  DropdownMenuItem(value: 'degraded', child: Text('Degraded')),
                  DropdownMenuItem(value: 'blocked', child: Text('Blocked')),
                  DropdownMenuItem(value: 'disabled', child: Text('Disabled')),
                ],
                onChanged: _saving ? null : (value) {
                  if (value == null) return;
                  setState(() {
                    _readiness = value;
                    if (_readiness != 'ready') _advertised = false;
                    _error = null;
                  });
                },
              ),
              const SizedBox(height: 16),
              SwitchListTile(
                key: const ValueKey('skill-readiness-advertised'),
                contentPadding: EdgeInsets.zero,
                title: const Text('Advertise to runtime'),
                subtitle: const Text('Only Ready Skills can be advertised.'),
                value: _readiness == 'ready' && _advertised,
                onChanged: _saving || _readiness != 'ready'
                    ? null
                    : (value) => setState(() => _advertised = value),
              ),
              const SizedBox(height: 12),
              TextField(
                key: const ValueKey('skill-readiness-reason'),
                controller: _reason,
                enabled: !_saving,
                maxLength: 256,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  labelText: 'Reason code (optional)',
                  hintText: 'e.g. provider.degraded',
                ),
              ),
              if (_error != null) ...[
                const SizedBox(height: 12),
                Semantics(
                  liveRegion: true,
                  child: Text(
                    _error!,
                    style: TextStyle(color: Theme.of(context).colorScheme.error),
                  ),
                ),
              ],
              const SizedBox(height: 20),
              FilledButton.icon(
                key: const ValueKey('skill-readiness-submit'),
                onPressed: _saving ? null : _save,
                icon: _saving
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.save_outlined),
                label: Text(_saving ? 'Saving…' : 'Save readiness'),
              ),
            ],
          ),
        ),
      );
}
