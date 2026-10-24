import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class P2pPauseAllPage extends StatefulWidget {
  const P2pPauseAllPage({
    super.key,
    required this.expectedUserId,
    required this.currentUserId,
    required this.load,
    required this.restore,
    required this.persist,
    required this.newKey,
    required this.recover,
    required this.pause,
  });
  final String expectedUserId;
  final String? Function() currentUserId;
  final Future<Map<String, dynamic>> Function() load;
  final Future<String?> Function() restore;
  final Future<void> Function(String? key) persist;
  final String Function() newKey;
  final Future<Map<String, dynamic>> Function(String key) recover, pause;
  @override
  State<P2pPauseAllPage> createState() => _P2pPauseAllPageState();
}

class _P2pPauseAllPageState extends State<P2pPauseAllPage> {
  Map<String, dynamic>? _summary, _receipt;
  String? _pending, _error;
  bool _loading = true,
      _busy = false,
      _gone = false,
      _restored = false,
      _savedPending = false;
  Timer? _fence;
  bool get _same => !_gone && widget.currentUserId() == widget.expectedUserId;
  @override
  void initState() {
    super.initState();
    _refresh();
    _fence = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!_same) _clear();
    });
  }

  @override
  void dispose() {
    _fence?.cancel();
    super.dispose();
  }

  void _clear() {
    if (!mounted || _gone) return;
    _fence?.cancel();
    setState(() {
      _gone = true;
      _summary = null;
      _receipt = null;
      _pending = null;
      _error = null;
    });
  }

  bool _denied(Object error) =>
      error is DioException && [401, 403].contains(error.response?.statusCode);
  Future<void> _refresh() async {
    if (!_same) {
      _clear();
      return;
    }
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      if (!_restored) {
        final saved = await widget.restore().timeout(
          const Duration(seconds: 20),
        );
        if (!mounted || !_same) return;
        _pending = saved;
        _savedPending = saved != null;
        _restored = true;
      }
      final data = await widget.load().timeout(const Duration(seconds: 20));
      if (!mounted || !_same) return;
      for (final field in ['active', 'paused', 'closed']) {
        if (data[field] is! int || (data[field] as int) < 0)
          throw const FormatException();
      }
      if (DateTime.tryParse('${data['as_of']}') == null)
        throw const FormatException();
      setState(() => _summary = data);
    } catch (error) {
      if (mounted && _same) {
        if (_denied(error)) {
          _clear();
        } else {
          setState(
            () => _error = 'Ad availability could not be checked. Retry.',
          );
        }
      }
    } finally {
      if (mounted && _same) setState(() => _loading = false);
    }
  }

  Future<void> _run() async {
    if (_busy || _loading || !_same || !_restored) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final pending = _pending;
      if (pending == null) {
        final key = widget.newKey();
        _pending = key;
      }
      if (!_savedPending) {
        await widget.persist(_pending);
        if (!mounted || !_same) return;
        _savedPending = true;
      }
      final key = _pending!;
      Map<String, dynamic> data;
      if (pending != null) {
        try {
          data = await widget.recover(key).timeout(const Duration(seconds: 20));
        } on DioException catch (error) {
          if (error.response?.statusCode != 404) rethrow;
          if (!mounted || !_same) return;
          data = await widget.pause(key).timeout(const Duration(seconds: 20));
        }
      } else {
        data = await widget.pause(key).timeout(const Duration(seconds: 20));
      }
      if (!mounted || !_same) return;
      if (data['operation_id'] is! String ||
          data['paused_count'] is! int ||
          (data['paused_count'] as int) < 0 ||
          DateTime.tryParse('${data['created_at']}') == null)
        throw const FormatException();
      // Keep original key until this authoritative receipt is safely read back.
      setState(() => _receipt = data);
      await widget.persist(null);
      if (!mounted || !_same) return;
      setState(() {
        _pending = null;
        _savedPending = false;
      });
      await _refresh();
    } catch (error) {
      if (mounted && _same) {
        if (_denied(error)) {
          _clear();
        } else {
          setState(
            () => _error =
                'Pause is not confirmed. Check the original request before trying another action.',
          );
        }
      }
    } finally {
      if (mounted && _same) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Ad availability')),
    body: _gone
        ? const Center(child: Text('Access changed. Reopen P2P.'))
        : ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text(
                'Pause all current ads',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              const Text(
                'Stop new trades on every ad active when this operation runs. Existing orders and their escrow continue normally. Ads created afterward are outside this request.',
              ),
              const SizedBox(height: 12),
              const Text(
                'This is not a schedule or a permanent offline setting. Resume each ad from My ads after checking its bank method and available funds.',
              ),
              if (_loading || _busy) const LinearProgressIndicator(),
              if (_summary != null) ...[
                Text(
                  '${_summary!['active']} active · ${_summary!['paused']} paused · ${_summary!['closed']} closed',
                ),
                Text('Checked ${_summary!['as_of']}'),
              ],
              if (_error != null)
                Semantics(liveRegion: true, child: Text(_error!)),
              if (_receipt != null) ...[
                Text(
                  'Original request paused ${_receipt!['paused_count']} ads.',
                ),
                SelectableText('${_receipt!['operation_id']}'),
                const Text(
                  'A resumed ad or an ad created later is not paused again by retrying this request.',
                ),
              ],
              if (_pending != null)
                const Text(
                  'An original pause request needs recovery. Its key is saved for this account.',
                ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed:
                    _loading ||
                        _busy ||
                        !_restored ||
                        (_pending == null &&
                            (_summary == null || _summary!['active'] == 0))
                    ? null
                    : _run,
                child: Text(
                  _pending != null
                      ? 'Check or retry original pause'
                      : 'Confirm pause all current ads',
                ),
              ),
              OutlinedButton(
                onPressed: _loading || _busy ? null : _refresh,
                child: const Text('Refresh availability'),
              ),
            ],
          ),
  );
}
