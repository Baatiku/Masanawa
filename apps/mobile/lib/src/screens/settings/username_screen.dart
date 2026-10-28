import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/providers.dart';
import '../../core/username_policy.dart';
import '../../state/session_state.dart';
import '../../state/talk_social_profile_state.dart';
import '../../theme/masanawa_theme.dart';
import '../../gb_wallet/gb_wallet_summary.dart';

class UsernameScreen extends ConsumerStatefulWidget {
  const UsernameScreen({super.key});
  @override
  ConsumerState<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends ConsumerState<UsernameScreen> {
  final _input = TextEditingController();
  GbWalletOwner? _owner;
  String? _current, _error;
  bool _loaded = false,
      _loading = false,
      _saving = false,
      _checking = false,
      _uncertain = false;
  bool? _available;
  int _generation = 0;
  Timer? _timer;
  CancelToken? _cancel;
  void _cancelWork() {
    _generation++;
    _timer?.cancel();
    _cancel?.cancel();
    _cancel = null;
  }

  bool _same(GbWalletOwner owner, int ticket) {
    if (!mounted) return false;
    final session = ref.read(sessionProvider);
    return mounted &&
        ticket == _generation &&
        owner == _owner &&
        session is SessionSignedIn &&
        session.user.id == owner.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch ==
            owner.authorizationEpoch;
  }

  @override
  void dispose() {
    _cancelWork();
    _input.dispose();
    super.dispose();
  }

  Future<void> _load(GbWalletOwner owner) async {
    if (!_same(owner, _generation)) return;
    _cancelWork();
    final ticket = _generation, cancel = CancelToken();
    _cancel = cancel;
    setState(() {
      _loaded = false;
      _loading = true;
      _error = null;
      _available = null;
    });
    try {
      final result = await ref
          .read(apiClientProvider)
          .dio
          .get<Object?>(
            '/v1/account/username',
            cancelToken: cancel,
            options: Options(headers: const {'Cache-Control': 'no-store'}),
          );
      if (!_same(owner, ticket)) return;
      final data = result.data;
      if (data is! Map ||
          !data.containsKey('username') ||
          (data['username'] != null && data['username'] is! String))
        throw const FormatException('Invalid username');
      setState(() {
        _loaded = true;
        _current = data['username'] as String?;
        _input.text = _current ?? '';
        _uncertain = false;
      });
    } catch (_) {
      if (_same(owner, ticket))
        setState(
          () => _error = 'Could not load your username. Retry when connected.',
        );
    } finally {
      if (_same(owner, ticket)) setState(() => _loading = false);
    }
  }

  void _changed(String value) {
    _cancelWork();
    setState(() {
      _available = null;
      _error = null;
      _checking = false;
    });
    final owner = _owner, username = normalizedUsername(value);
    if (owner == null || !validEditableUsername(username) || _uncertain) return;
    if (username == _current) {
      setState(() => _available = true);
      return;
    }
    _timer = Timer(
      const Duration(milliseconds: 350),
      () => _check(owner, username),
    );
  }

  Future<void> _check(GbWalletOwner owner, String username) async {
    if (!_same(owner, _generation)) return;
    final ticket = ++_generation, cancel = CancelToken();
    _cancel = cancel;
    setState(() => _checking = true);
    try {
      final response = await ref
          .read(apiClientProvider)
          .dio
          .get<Object?>(
            '/v1/account/username/availability',
            queryParameters: {'username': username},
            cancelToken: cancel,
            options: Options(headers: const {'Cache-Control': 'no-store'}),
          );
      if (!_same(owner, ticket) || normalizedUsername(_input.text) != username)
        return;
      final data = response.data;
      if (data is! Map ||
          data['username'] != username ||
          data['available'] is! bool)
        throw const FormatException('Invalid availability');
      setState(() => _available = data['available'] as bool);
    } on DioException catch (error) {
      if (!_same(owner, ticket)) return;
      setState(() {
        _available = false;
        _error = error.response?.statusCode == 422
            ? 'Choose a different username. This one cannot be used.'
            : 'Could not check availability. Edit the name to retry.';
      });
    } catch (_) {
      if (_same(owner, ticket))
        setState(
          () =>
              _error = 'Could not check availability. Edit the name to retry.',
        );
    } finally {
      if (_same(owner, ticket)) setState(() => _checking = false);
    }
  }

  Future<void> _save(GbWalletOwner owner) async {
    final username = normalizedUsername(_input.text);
    if (!_loaded ||
        !_same(owner, _generation) ||
        _saving ||
        _uncertain ||
        _available != true ||
        username == _current ||
        !validEditableUsername(username))
      return;
    _cancelWork();
    final ticket = _generation, cancel = CancelToken();
    _cancel = cancel;
    final old = _current;
    setState(() {
      _saving = true;
      _error = null;
    });
    try {
      final response = await ref
          .read(apiClientProvider)
          .dio
          .patch<Object?>(
            '/v1/account/username',
            data: {'username': username, 'expectedUsername': old},
            cancelToken: cancel,
            options: Options(headers: const {'Cache-Control': 'no-store'}),
          );
      if (!_same(owner, ticket)) return;
      if (response.data is! Map ||
          (response.data as Map)['username'] != username)
        throw const FormatException('Unconfirmed username');
      setState(() {
        _current = username;
        _input.text = username;
        _available = true;
      });
      if (old != null) ref.invalidate(humanProfileProvider(old));
      ref.invalidate(humanProfileProvider(username));
      ref.invalidate(humanProfileByUserIdProvider(owner.accountId));
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Username saved.')));
    } on DioException catch (error) {
      if (!_same(owner, ticket)) return;
      final status = error.response?.statusCode;
      setState(() {
        _available = null;
        _uncertain = status != 409 && status != 422;
        _error = status == 409
            ? 'That username was taken or your username changed elsewhere. Reload and choose again.'
            : status == 422
            ? 'Choose a valid username.'
            : 'Could not confirm the change. Reload your username before trying again.';
      });
    } catch (_) {
      if (_same(owner, ticket))
        setState(() {
          _uncertain = true;
          _error =
              'Could not confirm the change. Reload your username before trying again.';
        });
    } finally {
      if (_same(owner, ticket)) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    final owner = session is SessionSignedIn
        ? (
            accountId: session.user.id,
            authorizationEpoch: ref
                .read(sessionProvider.notifier)
                .authorizationEpoch,
          )
        : null;
    if (owner != _owner) {
      _cancelWork();
      _owner = owner;
      _current = null;
      _input.clear();
      _available = null;
      _error = null;
      _uncertain = false;
      _loaded = false;
      _loading = owner != null;
      _saving = _checking = false;
      if (owner != null) Future.microtask(() => _load(owner));
    }
    final changed = normalizedUsername(_input.text) != _current;
    return Scaffold(
      appBar: AppBar(title: const Text('Username')),
      body: owner == null
          ? const Center(child: Text('Sign in to manage your username.'))
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Text(
                  'Your username helps people find you and send you data.',
                ),
                const SizedBox(height: 16),
                if (_loading)
                  const LinearProgressIndicator(
                    semanticsLabel: 'Loading username',
                  ),
                if (!_loading) ...[
                  if (_current != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(
                        'Current: @$_current',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  TextField(
                    key: const ValueKey('username-input'),
                    controller: _input,
                    enabled: _loaded && !_saving && !_uncertain,
                    autocorrect: false,
                    enableSuggestions: false,
                    maxLength: 40,
                    onChanged: _changed,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      prefixText: '@',
                      helperText:
                          '2–40 characters. Start with a letter; use letters, numbers, dots or underscores.',
                      helperMaxLines: 4,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  if (_checking)
                    const LinearProgressIndicator(
                      semanticsLabel: 'Checking username availability',
                    ),
                  if (_available != null && !_checking && changed)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        _available!
                            ? 'This username is available.'
                            : 'This username is already in use.',
                        style: TextStyle(
                          color: _available!
                              ? context.masanawa.brandStrong
                              : Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  if (_input.text.isNotEmpty &&
                      !validEditableUsername(_input.text))
                    const Text(
                      'Use a simple name such as zainab or zainab.bala, with no spaces.',
                    ),
                  if (_error != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        _error!,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  if (_error != null || _uncertain)
                    TextButton.icon(
                      onPressed: _saving ? null : () => _load(owner),
                      icon: const Icon(Icons.refresh),
                      label: const Text('Reload username'),
                    ),
                  const SizedBox(height: 16),
                  FilledButton(
                    key: const ValueKey('username-save'),
                    onPressed:
                        !_loaded ||
                            _saving ||
                            _uncertain ||
                            _checking ||
                            _available != true ||
                            !changed
                        ? null
                        : () => _save(owner),
                    child: Text(_saving ? 'Saving…' : 'Save username'),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Your previous usernames stay reserved to you. Your profile links and transaction history remain connected to your account.',
                  ),
                ],
              ],
            ),
    );
  }
}
