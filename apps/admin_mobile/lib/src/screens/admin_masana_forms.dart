import 'package:flutter/material.dart';

import '../core/admin_masana_api.dart';

/// Dedicated full-page draft editor. The existing approved record is immutable:
/// this creates a new revision through the caller's authenticated API.
class AdminMasanaRevisionForm extends StatefulWidget {
  const AdminMasanaRevisionForm({
    super.key,
    required this.current,
    required this.onSave,
  });

  final AdminMasanaRevision current;
  final Future<void> Function(Map<String, dynamic> profile) onSave;

  @override
  State<AdminMasanaRevisionForm> createState() => _AdminMasanaRevisionFormState();
}

class _AdminMasanaRevisionFormState extends State<AdminMasanaRevisionForm> {
  static const _labels = <String, String>{
    'displayName': 'Display name',
    'handle': 'Handle',
    'profession': 'Profession',
    'biography': 'Biography',
    'lifeStory': 'Life story',
    'languages': 'Languages (comma-separated)',
    'talents': 'Skills / talents (comma-separated)',
    'goals': 'Goals (comma-separated)',
  };
  static const _requiredKeys = <String>{
    'displayName', 'handle', 'profession', 'biography', 'lifeStory',
  };
  final _form = GlobalKey<FormState>();
  late final Map<String, TextEditingController> _controllers;
  bool _busy = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    final profile = widget.current.profile;
    _controllers = {
      for (final field in _labels.keys)
        field: TextEditingController(
          text: const {'languages', 'talents', 'goals'}.contains(field)
              ? (profile[field] as List<dynamic>? ?? const [])
                  .map((entry) => entry.toString())
                  .join(', ')
              : profile[field]?.toString() ?? '',
        ),
    };
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  Future<void> _save() async {
    if (_busy || !_form.currentState!.validate()) return;
    final profile = Map<String, dynamic>.from(widget.current.profile);
    for (final key in _labels.keys) {
      final value = _controllers[key]!.text.trim();
      profile[key] = const {'languages', 'talents', 'goals'}.contains(key)
          ? value.split(',').map((part) => part.trim())
              .where((part) => part.isNotEmpty).toList(growable: false)
          : value;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await widget.onSave(profile);
      if (mounted) Navigator.of(context).pop(true);
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = 'Revision not confirmed: $error. '
            'Your draft is retained. Check current revisions before retrying.';
      });
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('New Masana revision')),
    body: SafeArea(
      child: Form(
        key: _form,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 36),
          children: [
            Text(
              widget.current.profile['displayName']?.toString() ??
                  widget.current.characterId,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Creates a new revision after revision ${widget.current.revision}. '
              'Existing approved content is preserved.',
            ),
            const SizedBox(height: 20),
            for (final field in _labels.entries)
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: TextFormField(
                  key: ValueKey<String>('masana-revision-${field.key}'),
                  controller: _controllers[field.key],
                  enabled: !_busy,
                  maxLines: field.key == 'lifeStory'
                      ? 5 : field.key == 'biography' ? 3 : 1,
                  maxLength: field.key == 'lifeStory' ? 8000 :
                    field.key == 'biography' ? 800 :
                    field.key == 'displayName' || field.key == 'profession'
                        ? 100 : field.key == 'handle' ? 40 : 500,
                  textInputAction: field.key == 'goals'
                      ? TextInputAction.done : TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: field.value,
                    border: const OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      _requiredKeys.contains(field.key) &&
                      (value?.trim().isEmpty ?? true)
                          ? '${field.value} is required' : null,
                ),
              ),
            const Text(
              'Verified portrait, banner and Room link remain unchanged '
              'unless a separate authorized media revision is created.',
            ),
            if (_error != null) ...[
              const SizedBox(height: 14),
              Semantics(
                liveRegion: true,
                child: Text(
                  _error!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
            ],
            const SizedBox(height: 24),
            FilledButton.icon(
              key: const ValueKey('masana-revision-submit'),
              onPressed: _busy ? null : _save,
              icon: const Icon(Icons.save_outlined),
              label: Text(_busy ? 'Saving…' : 'Create draft'),
            ),
          ],
        ),
      ),
    ),
  );
}

/// Rights-cleared media attach form; never accepts external arbitrary URLs.
class AdminMasanaMediaForm extends StatefulWidget {
  const AdminMasanaMediaForm({super.key, required this.onSave});

  final Future<void> Function(String kind, String mediaId, String rightsNote)
      onSave;

  @override
  State<AdminMasanaMediaForm> createState() => _AdminMasanaMediaFormState();
}

class _AdminMasanaMediaFormState extends State<AdminMasanaMediaForm> {
  final _form = GlobalKey<FormState>();
  final _mediaId = TextEditingController();
  final _rights = TextEditingController();
  String _kind = 'portrait';
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _mediaId.dispose();
    _rights.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_busy || !_form.currentState!.validate()) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await widget.onSave(_kind, _mediaId.text.trim(), _rights.text.trim());
      if (mounted) Navigator.of(context).pop(true);
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = 'Media attachment not confirmed: $error. '
            'Your entries are retained; review the latest revision before retrying.';
      });
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Attach verified media')),
    body: SafeArea(
      child: Form(
        key: _form,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 36),
          children: [
            const Text(
              'Select an existing media item from the private Masana catalogue. '
              'The image must have verified publication rights.',
            ),
            const SizedBox(height: 24),
            DropdownButtonFormField<String>(
              key: const ValueKey('masana-media-kind'),
              initialValue: _kind,
              items: const [
                DropdownMenuItem(value: 'portrait', child: Text('Portrait')),
                DropdownMenuItem(value: 'banner', child: Text('Banner')),
              ],
              onChanged: _busy ? null : (value) {
                if (value != null) setState(() => _kind = value);
              },
              decoration: const InputDecoration(labelText: 'Image type'),
            ),
            const SizedBox(height: 16),
            TextFormField(
              key: const ValueKey('masana-media-id'),
              controller: _mediaId,
              enabled: !_busy,
              maxLength: 150,
              decoration: const InputDecoration(
                labelText: 'Verified media ID',
                border: OutlineInputBorder(),
              ),
              validator: (value) => value == null || value.trim().isEmpty
                  ? 'Verified media ID is required' : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              key: const ValueKey('masana-media-rights'),
              controller: _rights,
              enabled: !_busy,
              minLines: 2,
              maxLines: 4,
              maxLength: 1024,
              decoration: const InputDecoration(
                labelText: 'Rights / license reference',
                border: OutlineInputBorder(),
              ),
              validator: (value) => (value?.trim().length ?? 0) < 5
                  ? 'Enter a rights reference of at least 5 characters'
                  : null,
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
            const SizedBox(height: 24),
            FilledButton.icon(
              key: const ValueKey('masana-media-submit'),
              onPressed: _busy ? null : _save,
              icon: const Icon(Icons.attach_file),
              label: Text(_busy ? 'Attaching…' : 'Attach verified media'),
            ),
          ],
        ),
      ),
    ),
  );
}
