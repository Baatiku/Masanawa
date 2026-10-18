import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/providers.dart';
import '../../theme/masanawa_theme.dart';

/// Reuses current WhatsApp-like profile patterns and the existing MSNW Wallet.
/// Only authenticated server operations can publish or charge a character.
class MyMasanaScreen extends ConsumerStatefulWidget {
  const MyMasanaScreen({super.key});
  @override
  ConsumerState<MyMasanaScreen> createState() => _MyMasanaScreenState();
}

class _MyMasanaScreenState extends ConsumerState<MyMasanaScreen> {
  List<Map<String, dynamic>> _agents = const [];
  bool _loading = true;
  String? _error;
  @override
  void initState() {
    super.initState();
    _refresh();
  }

  Future<void> _refresh() async {
    if (mounted) {
      setState(() {
        _loading = true;
        _error = null;
      });
    }
    try {
      final response = await ref
          .read(apiClientProvider)
          .dio
          .get<Map<String, dynamic>>('/v1/creator/masana');
      final items = response.data?['items'];
      if (items is! List) throw const FormatException('Invalid response');
      if (!mounted) return;
      setState(() {
        _agents = items
            .map((item) => Map<String, dynamic>.from(item as Map))
            .toList(growable: false);
        _loading = false;
      });
    } catch (_) {
      if (mounted) {
        setState(() {
          _error = 'Unable to load your Masana. Check your connection.';
          _loading = false;
        });
      }
    }
  }

  Future<void> _create() async {
    final saved = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => const _CreateMasanaScreen(),
        settings: const RouteSettings(name: '/creator/masana/create'),
      ),
    );
    if (saved == true) await _refresh();
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
…[1 chars truncated — re-run with head/grep/tail for full output]…
: u.surfaceBg,
      appBar: AppBar(title: const Text('My Masana')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _create,
        icon: const Icon(Icons.add),
        label: const Text('Create Masana'),
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: _loading
            ? const Center(child: CircularProgressIndicator())
            : _error != null
            ? ListView(
                children: [
                  const SizedBox(height: 95),
                  Center(child: Text(_error!)),
                  Center(
                    child: TextButton(
                      onPressed: _refresh,
                      child: const Text('Try again'),
                    ),
                  ),
                ],
              )
            : _agents.isEmpty
            ? ListView(
                children: const [
                  SizedBox(height: 115),
                  Icon(Icons.auto_awesome_outlined, size: 45),
                  SizedBox(height: 14),
                  Center(child: Text('Your first Masana is free')),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 38),
                    child: Text(
                      'Give it a name and profession. Masanawa builds the rest.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )
            : ListView.separated(
                padding: const EdgeInsets.only(top: 8, bottom: 100),
                itemCount: _agents.length,
                separatorBuilder: (_, _) =>
                    Divider(height: 1, color: u.structuralBorder),
                itemBuilder: (context, index) {
                  final agent = _agents[index];
                  final seed = agent['seed'] as Map? ?? {};
                  final status = agent['state']?.toString() ?? 'draft';
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 5,
                    ),
                    leading: CircleAvatar(
                      backgroundColor: u.surfaceMuted,
                      child: Icon(Icons.smart_toy_outlined, color: u.brand),
                    ),
                    title: Text(
                      seed['name']?.toString() ?? 'Masana',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      '${seed['profession']?.toString() ?? ''} · $status',
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (_) => _ManageMasanaScreen(agent: agent),
                        ),
                      );
                      await _refresh();
                    },
                  );
                },
              ),
      ),
    );
  }
}

class _CreateMasanaScreen extends ConsumerStatefulWidget {
  const _CreateMasanaScreen();
  @override
  ConsumerState<_CreateMasanaScreen> createState() =>
      _CreateMasanaScreenState();
}

class _CreateMasanaScreenState extends ConsumerState<_CreateMasanaScreen> {
  final _name = TextEditingController();
  final _profession = TextEditingController();
  final _languages = TextEditingController(text: 'English');
  String _gender = 'neutral', _age = '25-39';
  String? _draftKey, _error;
  Map<String, dynamic>? _draft;
  bool _busy = false;
  @override
  void dispose() {
    _name.dispose();
    _profession.dispose();
    _languages.dispose();
    super.dispose();
  }

  String _key() {
    final random = Random.secure();
    return List.generate(
      20,
      (_) => random.nextInt(256).toRadixString(16).padLeft(2, '0'),
    ).join();
  }

  Future<void> _generate() async {
    final name = _name.text.trim(), profession = _profession.text.trim();
    final languages = _languages.text
        .split(',')
        .map((x) => x.trim())
        .where((x) => x.isNotEmpty)
        .toList();
    if (name.isEmpty || profession.isEmpty || languages.isEmpty) {
      setState(() => _error = 'Please enter a name, profession and language.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final dio = ref.read(apiClientProvider).dio;
      _draftKey ??= _key();
      final draft = await dio.post<Map<String, dynamic>>(
        '/v1/creator/masana/drafts',
        data: {
          'idempotencyKey': _draftKey,
          'seed': {
            'name': name,
            'profession': profession,
            'languages': languages,
            'gender': _gender,
            'ageRange': _age,
            'portraitMediaId': null,
          },
        },
      );
      final id = draft.data?['characterId'], revision = draft.data?['revision'];
      if (id is! String || revision is! int) {
        throw const FormatException('Invalid draft');
      }
      final generated = await dio.post<Map<String, dynamic>>(
        '/v1/creator/masana/${Uri.encodeComponent(id)}/generate',
        data: {'expectedRevision': revision},
      );
      if (mounted) setState(() => _draft = generated.data);
    } catch (_) {
      if (mounted) {
        setState(() => _error = 'Could not generate your Masana. Retry later.');
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  String _amount(String raw) {
    final value = BigInt.tryParse(raw);
    if (value == null) return '—';
    final unit = BigInt.from(1000000), whole = value ~/ unit;
    final fraction = (value % unit)
        .toString()
        .padLeft(6, '0')
        .replaceFirst(RegExp(r'0+$'), '');
    return fraction.isEmpty ? whole.toString() : '$whole.$fraction';
  }

  Future<void> _publish() async {
    final draft = _draft;
    final id = draft?['characterId'], revision = draft?['revision'];
    if (id is! String || revision is! int || _busy) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final dio = ref.read(apiClientProvider).dio;
      final path = '/v1/creator/masana/${Uri.encodeComponent(id)}';
      bool needsPayment = false;
      try {
        await dio.post<Map<String, dynamic>>(
          '$path/publish-free',
          data: {'expectedRevision': revision},
        );
      } on DioException catch (error) {
        final response = error.response;
        if (response?.statusCode != 402 ||
            response?.data is! Map ||
            (response!.data as Map)['code'] != 'creator.payment_required') {
          rethrow;
        }
        needsPayment = true;
      }
      if (needsPayment) {
        final key = _key();
        final quoted = await dio.post<Map<String, dynamic>>(
          '$path/publish-quote',
          data: {'expectedRevision': revision, 'idempotencyKey': key},
        );
        final info = quoted.data;
        final amount = info?['amountAtomic'],
            operation = info?['operationId'],
            consent = info?['authorizationRef'];
        if (amount is! String || operation is! String || consent is! String) {
          throw const FormatException('Missing quote');
        }
        if (!mounted) return;
        final approved = await showDialog<bool>(
          context: context,
          builder: (dialog) => AlertDialog(
            title: const Text('Publish Masana'),
            content: Text(
              'Creation fee: ${_amount(amount)} MSNW. This will be charged once after confirmation.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialog, false),
                child: const Text('Cancel'),
              ),
              FilledButton(
                onPressed: () => Navigator.pop(dialog, true),
                child: const Text('Confirm'),
              ),
            ],
          ),
        );
        if (approved != true) return;
        await dio.post<Map<String, dynamic>>(
          '$path/publish-paid',
          data: {
            'expectedRevision': revision,
            'operationId': operation,
            'authorizationRef': consent,
            'idempotencyKey': key,
          },
        );
      }
      if (mounted) Navigator.pop(context, true);
    } catch (_) {
      if (mounted) {
        setState(
          () => _error =
              'Publication could not be confirmed. Check My Masana before retrying.',
        );
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final generated = _draft?['generated'] as Map?;
    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: AppBar(title: const Text('Create Masana')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 18, 16, 32),
        children: [
          if (generated == null) ...[
            Text(
              'Describe your character',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 6),
            Text(
              'Masanawa chooses its relevant skills and personality.',
              style: TextStyle(color: u.textMuted),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _name,
              maxLength: 100,
              decoration: const InputDecoration(
                labelText: 'Name',
                hintText: 'e.g. Professor Amina',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _profession,
              maxLength: 100,
              decoration: const InputDecoration(
                labelText: 'Profession or purpose',
                hintText: 'e.g. Physics educator',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _languages,
              decoration: const InputDecoration(
                labelText: 'Languages (comma separated)',
                hintText: 'English, Hausa',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 14),
            DropdownButtonFormField<String>(
              initialValue: _gender,
              decoration: const InputDecoration(
                labelText: 'Gender presentation',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: 'female', child: Text('Female')),
                DropdownMenuItem(value: 'male', child: Text('Male')),
                DropdownMenuItem(value: 'neutral', child: Text('Neutral')),
              ],
              onChanged: _busy
                  ? null
                  : (value) => setState(() => _gender = value ?? _gender),
            ),
            const SizedBox(height: 14),
            DropdownButtonFormField<String>(
              initialValue: _age,
              decoration: const InputDecoration(
                labelText: 'Character age',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: '18-24', child: Text('18–24')),
                DropdownMenuItem(value: '25-39', child: Text('25–39')),
                DropdownMenuItem(value: '40-59', child: Text('40–59')),
                DropdownMenuItem(value: '60+', child: Text('60+')),
              ],
              onChanged: _busy
                  ? null
                  : (value) => setState(() => _age = value ?? _age),
            ),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: _busy ? null : _generate,
              icon: const Icon(Icons.auto_awesome),
              label: const Text('Build my Masana'),
            ),
          ] else ...[
            Center(
              child: CircleAvatar(
                radius: 44,
                backgroundColor: u.surfaceMuted,
                child: Icon(Icons.smart_toy_outlined, size: 38, color: u.brand),
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: Text(
                generated['name']?.toString() ?? _name.text,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                _profession.text,
                style: TextStyle(color: u.textMuted),
              ),
            ),
            const SizedBox(height: 20),
            Text(generated['biography']?.toString() ?? ''),
            const SizedBox(height: 18),
            Text('Greeting', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(generated['greeting']?.toString() ?? ''),
            const SizedBox(height: 18),
            Text(
              'Specializations',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            if (generated['specializations'] is List)
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: [
                  for (final skill in generated['specializations'] as List)
                    Chip(label: Text(skill.toString())),
                ],
              ),
            const SizedBox(height: 18),
            Text(
              'Your Masana will be labeled as an AI character.',
              style: TextStyle(color: u.textMuted),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: _busy ? null : _publish,
              child: const Text('Publish Masana'),
            ),
          ],
          if (_busy) ...[
            const SizedBox(height: 18),
            const Center(child: CircularProgressIndicator()),
          ],
          if (_error != null) ...[
            const SizedBox(height: 12),
            Text(
              _error!,
              textAlign: TextAlign.center,
              style: TextStyle(color: u.emergency),
            ),
          ],
        ],
      ),
    );
  }
}

class _ManageMasanaScreen extends ConsumerStatefulWidget {
  const _ManageMasanaScreen({required this.agent});
  final Map<String, dynamic> agent;
  @override
  ConsumerState<_ManageMasanaScreen> createState() =>
      _ManageMasanaScreenState();
}

class _ManageMasanaScreenState extends ConsumerState<_ManageMasanaScreen> {
  late Map<String, dynamic> _agent = widget.agent;
  bool _busy = false;
  String? _error;
  Future<void> _toggle() async {
    final state = _agent['state'];
    if (state != 'paused' && state != 'published') return;
    final action = state == 'paused' ? 'resume' : 'pause';
    final id = _agent['characterId'], revision = _agent['revision'];
    if (id is! String || revision is! int) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final response = await ref
          .read(apiClientProvider)
          .dio
          .post<Map<String, dynamic>>(
            '/v1/creator/masana/${Uri.encodeComponent(id)}/$action',
            data: {'expectedRevision': revision},
          );
      if (response.data == null) throw const FormatException('Empty response');
      if (mounted) setState(() => _agent = response.data!);
    } catch (_) {
      if (mounted) {
        setState(
          () => _error = 'Could not update this Masana. Refresh and try again.',
        );
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa, seed = _agent['seed'] as Map? ?? {};
    final state = _agent['state']?.toString() ?? 'draft';
    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: AppBar(title: Text(seed['name']?.toString() ?? 'My Masana')),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: u.surfaceMuted,
              child: Icon(Icons.smart_toy_outlined, color: u.brand),
            ),
            title: Text(seed['name']?.toString() ?? 'Masana'),
            subtitle: Text('${seed['profession']?.toString() ?? ''} · $state'),
          ),
          const Divider(),
          if (state == 'published' || state == 'paused')
            ListTile(
              leading: Icon(
                state == 'paused'
                    ? Icons.play_circle_outline
                    : Icons.pause_circle_outline,
              ),
              title: Text(state == 'paused' ? 'Resume Masana' : 'Pause Masana'),
              subtitle: Text(
                state == 'paused'
                    ? 'Make this Masana available again.'
                    : 'Stop new interactions and discovery.',
              ),
              trailing: _busy
                  ? const CircularProgressIndicator()
                  : const Icon(Icons.chevron_right),
              onTap: _busy ? null : _toggle,
            ),
          if (state == 'draft')
            const ListTile(
              leading: Icon(Icons.edit_outlined),
              title: Text('Unpublished draft'),
              subtitle: Text('No publication charge has been applied.'),
            ),
          if (_error != null)
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(_error!, style: TextStyle(color: u.emergency)),
            ),
        ],
      ),
    );
  }
}
