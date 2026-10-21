import 'dart:math';
import 'dart:convert';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/providers.dart';
import '../../theme/masanawa_theme.dart';
import '../../state/session_state.dart';
import 'creator_earnings_screen.dart';

/// Reuses current WhatsApp-like profile patterns and the existing MSNW Wallet.
/// Only authenticated server operations can publish or charge a character.
class MyMasanaScreen extends ConsumerStatefulWidget {
  const MyMasanaScreen({super.key});
  static Future<bool?> openCreate(BuildContext context) => Navigator.push<bool>(
    context, MaterialPageRoute(
      builder: (_) => const _CreateMasanaScreen(),
      settings: const RouteSettings(name: '/creator/masana/create'),
    ),
  );
  @override
  ConsumerState<MyMasanaScreen> createState() => _MyMasanaScreenState();
}

class _MyMasanaScreenState extends ConsumerState<MyMasanaScreen> {
  List<Map<String, dynamic>> _agents = const [];
  bool _loading = true;
  String? _owner;
  int _loadVersion = 0;
  bool get _sameAccount {
    final session = ref.read(sessionProvider);
    return mounted && session is SessionSignedIn && session.user.id == _owner;
  }
  String? _error;
  @override
  void initState() {
    super.initState();
    final session = ref.read(sessionProvider);
    _owner = session is SessionSignedIn ? session.user.id : null;
    _refresh();
  }

  Future<void> _refresh() async {
    if (!_sameAccount) return;
    final version = ++_loadVersion;
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
      if (!_sameAccount || version != _loadVersion) return;
      setState(() {
        _agents = items
            .map((item) => Map<String, dynamic>.from(item as Map))
            .toList(growable: false);
        _loading = false;
      });
    } catch (_) {
      if (_sameAccount && version == _loadVersion) {
        setState(() {
          _error = 'Unable to load your Masana. Check your connection.';
          _loading = false;
        });
      }
    }
  }

  Future<void> _create() async {
    final saved = await MyMasanaScreen.openCreate(context);
    if (saved == true && _sameAccount) await _refresh();
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn || session.user.id != _owner) {
      return Scaffold(appBar: AppBar(title: const Text('My Masana')),
        body: const Center(child: Text('Sign in to view your Masana.')));
    }
    final u = context.masanawa;
    return Scaffold(
      backgroundColor: u.surfaceBg,
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
  const _CreateMasanaScreen({this.initialDraft});
  final Map<String, dynamic>? initialDraft;
  @override
  ConsumerState<_CreateMasanaScreen> createState() =>
      _CreateMasanaScreenState();
}

class _CreateMasanaScreenState extends ConsumerState<_CreateMasanaScreen> {
  String? _owner;
  bool get _sameAccount {
    final session = ref.read(sessionProvider);
    return mounted && session is SessionSignedIn && session.user.id == _owner;
  }
  final _name = TextEditingController();
  final _profession = TextEditingController();
  final _languages = TextEditingController(text: 'English');
  String _gender = 'neutral', _age = '25-39';
  String? _draftKey, _error;
  Map<String, dynamic>? _draft;
  bool _busy = false;
  @override
  void initState() {
    super.initState();
    final session = ref.read(sessionProvider);
    _owner = session is SessionSignedIn ? session.user.id : null;
    final initial = widget.initialDraft;
    if (initial != null) {
      _draft = Map<String, dynamic>.from(initial);
      final seed = initial['seed'] as Map? ?? {};
      _name.text = seed['name']?.toString() ?? '';
      _profession.text = seed['profession']?.toString() ?? '';
      final languageList = seed['languages'];
      if (languageList is List) {
        _languages.text = languageList.map((value) => value.toString()).join(', ');
      }
      _gender = seed['gender']?.toString() ?? _gender;
      _age = seed['ageRange']?.toString() ?? _age;
    }
  }
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
    if (!_sameAccount || _busy) return;
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
      final seed = {
        'name': name,
        'profession': profession,
        'languages': languages,
        'gender': _gender,
        'ageRange': _age,
        'portraitMediaId': null,
      };
      Map<String, dynamic>? saved = _draft;
      final existingId = saved?['characterId'];
      if (existingId is String) {
        final edited = await dio.patch<Map<String, dynamic>>(
          '/v1/creator/masana/${Uri.encodeComponent(existingId)}/draft',
          data: {'expectedRevision': saved?['revision'], 'seed': seed},
        );
        saved = edited.data;
      } else {
        _draftKey ??= _key();
        final created = await dio.post<Map<String, dynamic>>(
          '/v1/creator/masana/drafts',
          data: {'idempotencyKey': _draftKey, 'seed': seed},
        );
        saved = created.data;
      }
      if (!_sameAccount) return;
      if (saved == null) throw const FormatException('Invalid draft');
      _draft = saved;
      final id = saved['characterId'], revision = saved['revision'];
      if (id is! String || revision is! int) {
        throw const FormatException('Invalid draft');
      }
      final generated = await dio.post<Map<String, dynamic>>(
        '/v1/creator/masana/${Uri.encodeComponent(id)}/generate',
        data: {'expectedRevision': revision},
      );
      if (_sameAccount) setState(() => _draft = generated.data);
    } catch (_) {
      if (_sameAccount) {
        setState(() => _error = 'Could not generate your Masana. Retry later.');
      }
    } finally {
      if (_sameAccount) setState(() => _busy = false);
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
    if (!_sameAccount) return;
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
        if (!_sameAccount) return;
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
        if (approved != true || !_sameAccount) return;
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
      if (_sameAccount) Navigator.pop(context, true);
    } catch (_) {
      if (_sameAccount) {
        setState(
          () => _error =
              'Publication could not be confirmed. Check My Masana before retrying.',
        );
      }
    } finally {
      if (_sameAccount) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn || session.user.id != _owner) {
      return Scaffold(appBar: AppBar(title: const Text('Create Masana')),
        body: const Center(child: Text('Sign in to create your Masana.')));
    }
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
            if (_draft?['voiceName'] is String)
              Text(
                'Suggested voice: ${_draft!['voiceName']} (provider availability may vary)',
                style: TextStyle(color: u.textMuted),
              ),
            const SizedBox(height: 12),
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
  String? _owner;
  bool get _sameAccount {
    final session = ref.read(sessionProvider);
    return mounted && session is SessionSignedIn && session.user.id == _owner;
  }
  @override void initState() {
    super.initState();
    final session = ref.read(sessionProvider);
    _owner = session is SessionSignedIn ? session.user.id : null;
  }

  late Map<String, dynamic> _agent = widget.agent;
  bool _busy = false;
  String? _error;
  Future<void> _toggle() async {
    if (!_sameAccount || _busy) return;
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
      if (_sameAccount) setState(() => _agent = response.data!);
    } catch (_) {
      if (_sameAccount) {
        setState(
          () => _error = 'Could not update this Masana. Refresh and try again.',
        );
      }
    } finally {
      if (_sameAccount) setState(() => _busy = false);
    }
  }

  Future<void> _editPublished() async {
    if (!_sameAccount || _busy) return;
    try {
      final id = _agent['characterId'] as String;
      final response = await ref.read(apiClientProvider).dio.get<Map<String,dynamic>>('/v1/creator/masana/${Uri.encodeComponent(id)}/images');
      if (!_sameAccount) return;
      final items = response.data?['items'];
      if (items is List) {
        for (final kind in ['portrait', 'banner']) {
          final media = items.whereType<Map>().where((m) => m['kind'] == kind).firstOrNull;
          if (media != null) _agent[kind == 'portrait' ? 'pendingPortraitMediaId' : 'pendingBannerMediaId'] = media['mediaId'];
        }
      }
    } catch (_) {
      if (_sameAccount) setState(() => _error = 'Could not restore uploaded images. Try again when connected.');
      return;
    }
    final original = _agent['generated'];
    if (original is! Map) return;
    final biography = TextEditingController(text: original['biography']?.toString());
    final manner = TextEditingController(text: original['manner']?.toString());
    final greeting = TextEditingController(text: original['greeting']?.toString());
    final review = await showDialog<bool>(context: context, builder: (context) => AlertDialog(
      title: const Text('Edit published Masana'),
      content: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min, children: [
        if (_agent['pendingPortraitMediaId'] != null || _agent['pendingBannerMediaId'] != null)
          const Text('This revision also applies your latest uploaded portrait and cover.'),
        TextField(controller: biography, maxLength: 800, maxLines: 4, decoration: const InputDecoration(labelText: 'Biography')),
        TextField(controller: manner, maxLength: 400, decoration: const InputDecoration(labelText: 'Personality')),
        TextField(controller: greeting, maxLength: 500, decoration: const InputDecoration(labelText: 'Greeting'))])),
      actions: [TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
        TextButton(onPressed: () => Navigator.pop(context, true), child: const Text('Review quote'))]));
    final generated = {...Map<String,dynamic>.from(original), 'biography': biography.text.trim(),
      'manner': manner.text.trim(), 'greeting': greeting.text.trim()};
    biography.dispose(); manner.dispose(); greeting.dispose();
    if (review != true || !_sameAccount) return;
    setState(() { _busy = true; _error = null; });
    try {
      final id = _agent['characterId'] as String;
      final key = 'edit_' + DateTime.now().microsecondsSinceEpoch.toString() + '_' + Random.secure().nextInt(1 << 30).toString();
      final quoted = await ref.read(apiClientProvider).dio.post<Map<String,dynamic>>(
        '/v1/creator/masana/${Uri.encodeComponent(id)}/edit-quote', data: {
          'expectedRevision': _agent['revision'], 'generated': generated, 'idempotencyKey': key,
          if (_agent['pendingPortraitMediaId'] != null) 'portraitMediaId': _agent['pendingPortraitMediaId'],
          if (_agent['pendingBannerMediaId'] != null) 'bannerMediaId': _agent['pendingBannerMediaId']});
      if (!_sameAccount) return;
      final quote = quoted.data;
      if (quote == null) throw const FormatException('Missing quote');
      final atomic = BigInt.parse(quote['msnw_atomic'].toString());
      final amount = (atomic ~/ BigInt.from(1000000)).toString();
      final approved = await showDialog<bool>(context: context, builder: (context) => AlertDialog(
        title: const Text('Approve published revision'),
        content: Text('Edit fee: $amount MSNW. This exact quote expires in 10 minutes. Approving applies the revision and charges your existing Wallet once.'),
        actions: [TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
          TextButton(onPressed: () => Navigator.pop(context, true), child: const Text('Approve revision'))]));
      if (approved != true || !_sameAccount) return;
      await ref.read(apiClientProvider).dio.post<dynamic>('/v1/creator/masana/${Uri.encodeComponent(id)}/edit-confirm', data: {
        'operationId': quote['operation_id'], 'authorizationRef': quote['authorization_ref'], 'idempotencyKey': key});
      if (!_sameAccount) return;
      final response = await ref.read(apiClientProvider).dio.get<Map<String,dynamic>>('/v1/creator/masana/${Uri.encodeComponent(id)}');
      if (_sameAccount && response.data != null) setState(() => _agent = response.data!);
    } catch (_) {
      if (_sameAccount) setState(() => _error = 'Revision could not be confirmed. Refresh before trying another edit; check Wallet receipts if approval was sent.');
    } finally { if (_sameAccount) setState(() => _busy = false); }
  }

  Future<void> _uploadImage(String kind) async {
    if (!_sameAccount || _busy) return;
    final note = TextEditingController();
    final accepted = await showDialog<bool>(context: context, builder: (context) => AlertDialog(
      title: Text(kind == 'portrait' ? 'Portrait rights' : 'Cover rights'),
      content: TextField(controller: note, maxLength: 500, decoration: const InputDecoration(
        labelText: 'Explain your permission to use this image',
        helperText: 'Use an image you own or have permission to publish.')),
      actions: [TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
        TextButton(onPressed: () { if (note.text.trim().length >= 8) Navigator.pop(context, true); }, child: const Text('Choose image'))]));
    final rights = note.text.trim(); note.dispose();
    if (accepted != true || !_sameAccount) return;
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery, maxWidth: 1920, imageQuality: 90);
      if (image == null || !_sameAccount) return;
      final bytes = await image.readAsBytes();
      if (!_sameAccount) return;
      if (bytes.length > 6000000) throw const FormatException('Image too large');
      setState(() { _busy = true; _error = null; });
      final id = _agent['characterId'] as String;
      final response = await ref.read(apiClientProvider).dio.post<Map<String,dynamic>>(
        '/v1/creator/masana/${Uri.encodeComponent(id)}/images', data: {
          'kind': kind, 'rightsNote': rights, 'expectedRevision': _agent['revision'],
          'dataBase64': base64Encode(bytes)});
      if (!_sameAccount) return;
      final result = response.data;
      final fresh = await ref.read(apiClientProvider).dio.get<Map<String,dynamic>>('/v1/creator/masana/${Uri.encodeComponent(id)}');
      if (!_sameAccount) return;
      if (fresh.data != null) setState(() {
        _agent = {..._agent, ...fresh.data!,
          if (result?['mediaId'] != null) (kind == 'portrait' ? 'pendingPortraitMediaId' : 'pendingBannerMediaId'): result!['mediaId']};
      });
      final preview = result?['previewUrl'];
      if (preview is String && mounted) await showDialog<void>(context: context, builder: (context) => AlertDialog(
        title: const Text('Image preview'), content: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.network(preview, height: 200, errorBuilder: (_, __, ___) => const Text('Preview expired. Upload again to retry.')),
          const Text('Uploaded images on published Masana require a reviewed profile revision before public display.')]),
        actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('Done'))]));
    } catch (_) {
      if (_sameAccount) setState(() => _error = 'Image could not be uploaded. Check photo permissions and connection, then retry.');
    } finally { if (_sameAccount) setState(() => _busy = false); }
  }

  Future<void> _configureStatus() async {
    if (!_sameAccount || _busy) return;
    final rights = TextEditingController();
    var weekly = 1;
    var enabled = _agent['statusEnabled'] == true;
    final confirmed = await showDialog<bool>(context: context, builder: (context) =>
      StatefulBuilder(builder: (context, update) => AlertDialog(
        title: const Text('Status schedule'),
        content: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Text('Scheduled content requires review before publication. Only post content you own or have permission to use.'),
          SwitchListTile(title: const Text('Enable schedule'), value: enabled,
            onChanged: (value) => update(() => enabled = value)),
          DropdownButton<int>(value: weekly, isExpanded: true,
            items: [1, 2].map((n) => DropdownMenuItem(value: n, child: Text('$n posts per week'))).toList(),
            onChanged: (value) => update(() => weekly = value ?? 1)),
          TextField(controller: rights, maxLength: 500,
            decoration: const InputDecoration(labelText: 'Content rights admission')),
        ])),
        actions: [TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
          TextButton(onPressed: () { if (rights.text.trim().length >= 8) Navigator.pop(context, true); }, child: const Text('Save'))],
      )));
    final note = rights.text.trim();
    rights.dispose();
    if (confirmed != true || !_sameAccount) return;
    await _manageAction('schedule', {'enabled': enabled, 'postsWeekly': weekly, 'rightsNote': note});
  }

  Future<void> _retire() async {
    final confirmed = await showDialog<bool>(context: context, builder: (context) => AlertDialog(
      title: const Text('Retire this Masana?'),
      content: const Text('This stops discovery, new interactions and scheduled Status. Your lifetime free publication remains used. Earnings records stay available.'),
      actions: [TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
        TextButton(onPressed: () => Navigator.pop(context, true), child: const Text('Retire'))]));
    if (confirmed == true && _sameAccount) await _manageAction('retire', {});
  }

  Future<void> _manageAction(String action, Map<String, dynamic> body) async {
    if (!_sameAccount || _busy) return;
    final id = _agent['characterId'];
    setState(() { _busy = true; _error = null; });
    try {
      await ref.read(apiClientProvider).dio.post<dynamic>(
        '/v1/creator/masana/${Uri.encodeComponent(id as String)}/$action',
        data: {...body, 'expectedRevision': _agent['revision']});
      if (!_sameAccount) return;
      final response = await ref.read(apiClientProvider).dio.get<Map<String, dynamic>>(
        '/v1/creator/masana/${Uri.encodeComponent(id)}');
      if (_sameAccount && response.data != null) setState(() => _agent = response.data!);
    } catch (_) {
      if (_sameAccount) setState(() => _error = 'Could not save. Refresh this Masana and try again.');
    } finally { if (_sameAccount) setState(() => _busy = false); }
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn || session.user.id != _owner) {
      return Scaffold(appBar: AppBar(title: const Text('My Masana')),
        body: const Center(child: Text('Sign in to manage your Masana.')));
    }
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
          if (state == 'draft' || state == 'published' || state == 'paused') ...[
            ListTile(leading: const Icon(Icons.portrait_outlined), title: const Text('Upload or replace portrait'),
              onTap: _busy ? null : () => _uploadImage('portrait')),
            ListTile(leading: const Icon(Icons.image_outlined), title: const Text('Upload or replace cover'),
              onTap: _busy ? null : () => _uploadImage('banner')),
          ],
          if (state != 'draft')
            ListTile(
              leading: const Icon(Icons.receipt_long_outlined),
              title: const Text('Creator earnings'),
              subtitle: const Text('MSNW allocations and Wallet receipts'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                final id = _agent['characterId'];
                if (id is! String || !_sameAccount) return;
                Navigator.of(context).push(MaterialPageRoute(
                  settings: RouteSettings(name: '/creator/masana/' + id + '/earnings'),
                  builder: (_) => CreatorEarningsScreen(
                    characterId: id,
                    displayName: seed['name']?.toString() ?? 'Masana',
                  ),
                ));
              },
            ),
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
          if (state == 'published' || state == 'paused')
            ListTile(leading: const Icon(Icons.edit_outlined), title: const Text('Edit published Masana'),
              subtitle: const Text('Review the server fee before approval'), onTap: _busy ? null : _editPublished),
          if (state == 'published' || state == 'paused')
            ListTile(leading: const Icon(Icons.schedule), title: const Text('Status schedule'),
              subtitle: Text(_agent['statusEnabled'] == true ? 'Enabled · content requires review' : 'Paused'),
              onTap: _busy ? null : _configureStatus),
          const ListTile(leading: Icon(Icons.record_voice_over_outlined),
            title: Text('Optional voice reference'),
            subtitle: Text('Custom voice reference is unavailable. Your supported voice remains active.')),
          if (state == 'published' || state == 'paused' || state == 'draft')
            ListTile(leading: const Icon(Icons.archive_outlined), title: const Text('Retire Masana'),
              onTap: _busy ? null : _retire),
          if (state == 'draft')
            ListTile(
              leading: const Icon(Icons.edit_outlined),
              title: const Text('Continue draft'),
              subtitle: const Text('Complete your Masana without starting over.'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {
                final saved = await Navigator.of(context).push<bool>(
                  MaterialPageRoute(
                    builder: (_) => _CreateMasanaScreen(initialDraft: _agent),
                  ),
                );
                if (saved == true && context.mounted) Navigator.pop(context);
              },
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
