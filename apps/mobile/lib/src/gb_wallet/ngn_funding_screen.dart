import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../state/session_state.dart';
import 'ngn_wallet.dart';

class NgnFundingScreen extends ConsumerStatefulWidget {
  const NgnFundingScreen({super.key});
  @override
  ConsumerState<NgnFundingScreen> createState() => _NgnFundingScreenState();
}

class _NgnFundingScreenState extends ConsumerState<NgnFundingScreen> {
  final _first = TextEditingController();
  final _last = TextEditingController();
  final _contact = TextEditingController();
  bool _busy = false;
  String? _error;
  ({String accountId, int authorizationEpoch})? _owner;
  @override
  void dispose() {
    _first.dispose();_last.dispose();_contact.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final s = ref.watch(sessionProvider);
    final owner = s is SessionSignedIn
        ? (
            accountId: s.user.id,
            authorizationEpoch: ref
                .read(sessionProvider.notifier)
                .authorizationEpoch,
          )
        : null;
    if (_owner != owner) {
      _owner = owner;
      _busy = false;
      _error = null;
      _first.clear();_last.clear();_contact.clear();
    }
    final state = owner == null
        ? null
        : ref.watch(ngnBankAccountProvider(owner));
    final bank = state?.valueOrNull;
    void refresh() {
      if (owner != null) {
        ref.invalidate(ngnBankAccountProvider(owner));
        ref.invalidate(ngnWalletBalanceProvider(owner));
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Fund NGN wallet')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Your funding account',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12),
          const Text(
            'Verified deposits add to your NGN balance. Choose and confirm a data package separately.',
          ),
          const SizedBox(height: 20),
          if (state?.isLoading == true || _busy)
            const LinearProgressIndicator(),
          if (bank?.state == 'assigned' && bank!.fundingEnabled) ...[
            Text(bank.bank!),
            Text(bank.name!),
            SelectableText(
              bank.number!,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            OutlinedButton.icon(
              onPressed: () =>
                  Clipboard.setData(ClipboardData(text: bank.number!)),
              icon: const Icon(Icons.copy_outlined),
              label: const Text('Copy account number'),
            ),
            const Text('Only verified deposits appear in your NGN balance.'),
          ] else
            Text(switch (bank?.state) {
              'pending' =>
                'Account assignment is pending. Do not transfer until verified bank details appear.',
              'suspended' => 'Funding is currently unavailable.',
              'assigned' =>
                'Funding is awaiting provider verification. Do not transfer yet.',
              'unassigned' =>
                'You do not have an assigned funding account yet.',
              _ =>
                owner == null
                    ? 'Sign in to view your funding account.'
                    : 'Bank details unavailable.',
            }),
          if (bank?.state == 'unassigned' && bank!.assignmentEnabled &&
              !bank.applicantComplete) ...[
            const SizedBox(height: 12),
            const Text('Complete your funding details'),
            TextField(controller:_first,enabled:!_busy,
              decoration:const InputDecoration(labelText:'First name')),
            TextField(controller:_last,enabled:!_busy,
              decoration:const InputDecoration(labelText:'Last name')),
            TextField(controller:_contact,enabled:!_busy,
              keyboardType:TextInputType.phone,
              decoration:const InputDecoration(labelText:'Contact phone',
                hintText:'08012345678')),
            FilledButton(onPressed:_busy?null:() async {
              if(owner==null)return;
              setState(() { _busy=true;_error=null; });
              try {
                await ref.read(apiClientProvider).dio.post<Object?>(
                  '/v1/gb/wallet/virtual-account/applicant',data:{
                    'firstName':_first.text.trim(),
                    'lastName':_last.text.trim(),
                    'contactPhone':_contact.text.replaceAll(RegExp(r'[\s()-]'),''),
                  });
                if(!mounted||_owner!=owner)return;
                refresh();
              } catch (_) {
                if(!mounted||_owner!=owner)return;
                setState(()=>_error='Check your names and Nigerian contact phone.');
              } finally {
                if(mounted&&_owner==owner)setState(()=>_busy=false);
              }
            },child:const Text('Save funding details')),
          ],
          if (bank?.state == 'unassigned' && bank!.assignmentEnabled &&
              bank.applicantComplete)
            FilledButton(
              onPressed: _busy
                  ? null
                  : () async {
                      if (owner == null) return;
                      setState(() {
                        _busy = true;
                        _error = null;
                      });
                      try {
                        final response = await ref
                            .read(apiClientProvider)
                            .dio
                            .post<Object?>(
                              '/v1/gb/wallet/virtual-account',
                              options: Options(
                                headers: const {'Cache-Control': 'no-store'},
                              ),
                            );
                        NgnBankAccount.fromJson(response.data);
                        if (!mounted || _owner != owner) return;
                        refresh();
                      } catch (_) {
                        if (!mounted || _owner != owner) return;
                        setState(
                          () => _error =
                              'Account assignment unavailable. Check status before retrying.',
                        );
                        refresh();
                      } finally {
                        if (mounted && _owner == owner)
                          setState(() => _busy = false);
                      }
                    },
              child: const Text('Get funding account'),
            ),
          if (_error != null) Text(_error!),
          TextButton(
            onPressed: _busy || owner == null ? null : refresh,
            child: const Text('Check account and balance'),
          ),
        ],
      ),
    );
  }
}
