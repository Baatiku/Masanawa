import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
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
  int? _ownerEpoch;
  String? _version;
  List<_Package> _packages = [];
  bool _loading = true;
  String? _error;
  int? _selectedGb;
  bool _accountLoading = false;
  bool _accountCreating = false;
  String? _bankAccountNumber;
  String? _bankAccountName;
  String? _bankName;
  String? _accountState;
  String? _accountError;

  @override
  void initState() {
    super.initState();
    Future<void>.microtask(() async {
      await _refresh();
      await _loadBankAccount();
    });
  }

  Future<void> _refresh() async {
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) return;
    final owner = session.user.id;
    final ownerEpoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    setState(() {
      _owner = owner;
      _ownerEpoch = ownerEpoch;
      _bankAccountNumber = null;
      _bankAccountName = null;
      _bankName = null;
      _accountState = null;
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
      if (!mounted || !_stillOwner(owner, ownerEpoch)) return;
      setState(() {
        _packages = fetched;
        _version = result['version'] as String;
        _loading = false;
      });
    } on DioException catch (_) {
      if (!mounted || !_stillOwner(owner, ownerEpoch)) return;
      setState(() {
        _loading = false;
        _error = 'Could not load current recharge packages.';
      });
    } catch (_) {
      if (!mounted || !_stillOwner(owner, ownerEpoch)) return;
      setState(() {
        _loading = false;
        _error = 'Package information is temporarily unavailable.';
      });
    }
  }

  Future<void> _loadBankAccount() async {
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) return;
    final owner=session.user.id;
    final ownerEpoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    if (!mounted) return;
    setState(() {
      _accountLoading=true;
      _accountError=null;
      _bankAccountNumber=null;_bankAccountName=null;_bankName=null;
      _accountState=null;
    });
    try {
      final reply=await ref.read(apiClientProvider).dio.get<Object?>(
        '/v1/gb/wallet/virtual-account',
      );
      if(reply.data is! Map<String,dynamic>)throw const FormatException('Invalid account response');
      _applyAccountReply((reply.data as Map<String,dynamic>)['account'],owner,ownerEpoch);
    }catch(_){
      if(!mounted||!_stillOwner(owner, ownerEpoch))return;
      setState((){
        _accountError='The bank account could not be verified. Retry when connected.';
        _accountLoading=false;
      });
    }
  }

  void _applyAccountReply(Object? account, String owner, int ownerEpoch) {
    if(account is! Map<String,dynamic>)throw const FormatException('Invalid account');
    final state=account['state'];
    if(state is! String || !['unassigned','pending','assigned','suspended'].contains(state)) {
      throw const FormatException('Unknown bank account status');
    }
    String? number,name,bank;
    if(state=='assigned'){
      if(account['bankId']!='9PSB' ||
        account['accountNumber'] is! String ||
        !RegExp(r'^\d{10}$').hasMatch(account['accountNumber'] as String) ||
        account['accountName'] is! String ||
        account['bankName'] is! String)throw const FormatException('Unverified 9PSB account');
      number=account['accountNumber'] as String;
      name=account['accountName'] as String;
      bank=account['bankName'] as String;
    }
    if(!mounted||!_stillOwner(owner, ownerEpoch))return;
    setState((){
      _accountState=state;_bankAccountNumber=number;
      _bankAccountName=name;_bankName=bank;
      _accountLoading=false;_accountError=null;
    });
  }

  Future<void> _assignBankAccount() async {
    final session=ref.read(sessionProvider);
    if(session is! SessionSignedIn||_accountCreating)return;
    final owner=session.user.id;
    final ownerEpoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    setState((){_accountCreating=true;_accountError=null;});
    try {
      final reply=await ref.read(apiClientProvider).dio.post<Object?>(
        '/v1/gb/wallet/virtual-account',
      );
      if(reply.data is! Map<String,dynamic>)throw const FormatException('Invalid bank assignment');
      _applyAccountReply((reply.data as Map<String,dynamic>)['account'],owner,ownerEpoch);
    }catch(_){
      if(!mounted||!_stillOwner(owner, ownerEpoch))return;
      setState((){_accountError='Bank assignment is pending or unavailable. Do not transfer money yet.';});
    }finally {
      if(mounted&&_stillOwner(owner, ownerEpoch))setState(()=>_accountCreating=false);
    }
  }

  Widget _bankAccountSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch,
          children:[
            Text('9 Payment Service Bank (9PSB)',style:Theme.of(context).textTheme.titleMedium),
            const SizedBox(height:12),
            if(_accountLoading||_accountCreating)const LinearProgressIndicator(),
            if(_accountError!=null)...[
              Text(_accountError!),
              OutlinedButton(onPressed:_loadBankAccount,child:const Text('Retry bank details')),
            ],
            if(_accountState=='assigned'&&_bankAccountNumber!=null)...[
              Text(_bankName??'9PSB Bank'),
              Text(_bankAccountName??'',style:Theme.of(context).textTheme.titleSmall),
              SelectableText(_bankAccountNumber!,style:Theme.of(context).textTheme.headlineSmall),
              OutlinedButton.icon(
                onPressed:()=>Clipboard.setData(ClipboardData(text:_bankAccountNumber!)),
                icon:const Icon(Icons.copy_outlined),
                label:const Text('Copy account number'),
              ),
              const Text('Transfer only after confirming this is your assigned bank account. Your purchased MB will appear after server-verified payment confirmation.'),
            ]else if(_accountState=='pending')...[
              const Text('Account assignment is pending verification. Do not transfer yet.'),
              OutlinedButton(onPressed:_loadBankAccount,child:const Text('Check assignment')),
            ]else if(_accountState=='suspended')
              const Text('Funding is unavailable on this account. Contact support.')
            else if(_accountState=='unassigned')
              FilledButton(
                onPressed:_accountCreating?null:_assignBankAccount,
                child:const Text('Get my 9PSB account'),
              ),
          ],
        ),
      ),
    );
  }

  bool _stillOwner(String owner, int ownerEpoch) {
    final current = ref.read(sessionProvider);
    return current is SessionSignedIn && current.user.id == owner &&
        ref.read(sessionProvider.notifier).authorizationEpoch == ownerEpoch;
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
    if (_owner != signed.user.id ||
        _ownerEpoch != ref.read(sessionProvider.notifier).authorizationEpoch) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        if (!mounted) return;
        await _refresh();
        if (mounted) await _loadBankAccount();
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
                        const Text('The selected package is a price guide. The verified transferred amount determines credited MB.'),
                      const SizedBox(height:12),
                      _bankAccountSection(),
                      const SizedBox(height: 8),
                      Text('Price version: ${_version ?? 'unavailable'}',
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
      ),
    );
  }
}
