import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../state/session_state.dart';

class _Package {
  const _Package(this.gb, this.mb, this.kobo);
  final int gb;
  final int mb;
  final int kobo;
}

class RechargePackagesScreen extends ConsumerStatefulWidget {
  const RechargePackagesScreen({super.key});

  @override
  ConsumerState<RechargePackagesScreen> createState() =>
      _RechargePackagesScreenState();
}

class _RechargePackagesScreenState
    extends ConsumerState<RechargePackagesScreen> {
  String? _owner;
  String? _version;
  List<_Package> _packages = [];
  bool _loading = true;
  String? _error;
  int? _selectedGb;

  @override
  void initState() {
    super.initState();
    Future<void>.microtask(_refresh);
  }

  Future<void> _refresh() async {
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) return;
    final owner = session.user.id;
    setState(() {
      _owner = owner;
      _loading = true;
      _error = null;
      _packages = [];
      _version = null;
      _selectedGb = null;
    });
    try {
      final response = await ref.read(apiClientProvider).dio.get<Object?>(
        '/v1/gb/recharge/packages',
      );
      final result = response.data;
      if (result is! Map<String, dynamic> ||
          result['version'] is! String ||
          result['packages'] is! List) {
        throw const FormatException('Unrecognized package response');
      }
      final fetched = <_Package>[];
      for (final entry in result['packages'] as List) {
        if (entry is! Map<String, dynamic>) {
          throw const FormatException('Unrecognized package entry');
        }
        final gb = entry['sizeGb'];
        final mb = entry['expectedMb'];
        final kobo = entry['totalKobo'];
        if (gb is! int || mb is! int || kobo is! int ||
            gb <= 0 || mb != gb * 1000 || kobo <= 0) {
          throw const FormatException('Invalid package amount');
        }
        fetched.add(_Package(gb, mb, kobo));
      }
      if (!mounted || !_stillOwner(owner)) return;
      setState(() {
        _packages = fetched;
        _version = result['version'] as String;
        _loading = false;
      });
    } on DioException catch (_) {
      if (!mounted || !_stillOwner(owner)) return;
      setState(() {
        _loading = false;
        _error = 'Could not load current recharge packages.';
      });
    } catch (_) {
      if (!mounted || !_stillOwner(owner)) return;
      setState(() {
        _loading = false;
        _error = 'Package information is temporarily unavailable.';
      });
    }
  }

  bool _stillOwner(String owner) {
    final current = ref.read(sessionProvider);
    return current is SessionSignedIn && current.user.id == owner;
  }

  String _ngn(int kobo) {
    final whole = (kobo ~/ 100).toString();
    final grouped = whole.replaceAllMapped(
      RegExp(r'\B(?=(\d{3})+(?!\d))'),
      (_) => ',',
    );
    final cents = kobo % 100;
    return '₦$grouped${cents == 0 ? '' : '.${cents.toString().padLeft(2, '0')}'}';
  }

  @override
  Widget build(BuildContext context) {
    final signed = ref.watch(sessionProvider);
    if (signed is! SessionSignedIn) {
      return Scaffold(
        appBar: AppBar(title: const Text('Add data')),
        body: const Center(child: Text('Sign in to see recharge packages.')),
      );
    }
    if (_owner != signed.user.id) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _refresh();
      });
      return Scaffold(
        appBar: AppBar(title: const Text('Add data')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Add data')),
      body: SafeArea(
        child: _loading
            ? const Center(child: CircularProgressIndicator())
            : _error != null
                ? Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(_error!),
                        const SizedBox(height: 12),
                        OutlinedButton(
                          onPressed: _refresh,
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  )
                : ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      const Text('Choose a package to view the current bank '
                          'transfer price. Actual verified transfer amount '
                          'determines the MB credited.'),
                      const SizedBox(height: 8),
                      for (final entry in _packages)
                        Card(
                          child: RadioListTile<int>(
                            value: entry.gb,
                            groupValue: _selectedGb,
                            title: Text('${entry.gb} GB · ${_ngn(entry.kobo)}'),
                            subtitle: Text('${entry.mb} MB · '
                                '${_ngn(entry.kobo ~/ entry.gb)} per GB'),
                            onChanged: (gb) => setState(() => _selectedGb = gb),
                          ),
                        ),
                      if (_packages.isEmpty)
                        const Padding(
                          padding: EdgeInsets.all(24),
                          child: Center(child: Text('No packages available.')),
                        ),
                      const SizedBox(height: 12),
                      if (_selectedGb != null)
                        const Text('Funding bank details are not yet available. '
                            'Do not transfer until an account is assigned to you.'),
                      const SizedBox(height: 8),
                      Text('Price version: ${_version ?? 'unavailable'}',
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
      ),
    );
  }
}
