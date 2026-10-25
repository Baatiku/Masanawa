import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'gb_wallet_activity.dart';

/// Fresh journal readback only. No provider, bank or data-delivery receipt.
class GbWalletActivityDetailScreen extends ConsumerWidget {
  const GbWalletActivityDetailScreen({super.key,required this.entryId});
  final String entryId;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final session=ref.watch(sessionProvider);
    final owner=session is SessionSignedIn
      ? (accountId:session.user.id,
         authorizationEpoch:ref.read(sessionProvider.notifier).authorizationEpoch)
      : null;
    final request=owner==null?null:(owner:owner,entryId:entryId);
    final state=request==null?null:ref.watch(gbActivityDetailProvider(request));
    final item=state?.valueOrNull;
    final colors=context.masanawa;

    Widget labelValue(String label,Widget value)=>Padding(
      padding:const EdgeInsets.symmetric(vertical:10),
      child:Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
        Text(label,style:Theme.of(context).textTheme.labelLarge?.copyWith(
          color:colors.textMuted)),
        const SizedBox(height:4),
        value,
      ]),
    );

    String signedAmount(GbActivityItem row) {
      final whole=row.amount.abs();
      String grouped(int n)=>n.toString().replaceAllMapped(
        RegExp(r'\B(?=(\d{3})+(?!\d))'),(_)=>',');
      final sign=row.amount>0?'+':'−';
      return row.unit=='MB'
        ? '$sign${grouped(whole)} MB'
        : '$sign₦${grouped(whole~/100)}.${(whole%100).toString().padLeft(2,'0')}';
    }

    return Scaffold(
      appBar:AppBar(title:const Text('Transaction details')),
      body:ListView(
        padding:const EdgeInsets.fromLTRB(16,20,16,30),
        children:[
          if(owner==null)const Text('Sign in to view this transaction.')
          else if(item==null && state?.isLoading==true)
            const Center(child:Padding(padding:EdgeInsets.all(40),
              child:CircularProgressIndicator()))
          else if(item==null)
            Card(child:Padding(padding:const EdgeInsets.all(20),
              child:Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
                const Text('This transaction could not be verified.'),
                const SizedBox(height:10),
                const Text('It may be unavailable or you may be offline. '
                  'No balance or payment was changed.'),
                const SizedBox(height:12),
                TextButton.icon(
                  onPressed:()=>ref.invalidate(gbActivityDetailProvider(request!)),
                  icon:const Icon(Icons.refresh),label:const Text('Retry transaction')),
              ])))
          else ...[
            Center(child:Icon(item.amount>0?Icons.south_west_rounded:
              Icons.north_east_rounded,size:42,color:colors.brandStrong)),
            const SizedBox(height:10),
            Text(signedAmount(item),textAlign:TextAlign.center,
              style:Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight:FontWeight.w800,color:colors.textPrimary)),
            const SizedBox(height:12),
            Center(child:Chip(label:Text(item.status=='reversed'?
              'Reversed journal entry':'Posted journal entry'))),
            const SizedBox(height:16),
            Card(child:Padding(padding:const EdgeInsets.all(18),
              child:Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
                labelValue('Ledger',Text(item.unit=='MB'?'Masanawa data (MB)':
                  'Nigerian naira (NGN)',style:Theme.of(context).textTheme.bodyLarge)),
                labelValue('Purpose',Text(item.kind.replaceAll('_',' '),
                  style:Theme.of(context).textTheme.bodyLarge)),
                labelValue('Recorded',Text('${MaterialLocalizations.of(context)
                  .formatMediumDate(item.createdAt.toLocal())} · '
                  '${TimeOfDay.fromDateTime(item.createdAt.toLocal()).format(context)}',
                  style:Theme.of(context).textTheme.bodyLarge)),
                labelValue('Original operation reference',Column(
                  crossAxisAlignment:CrossAxisAlignment.stretch,children:[
                    SelectableText(item.operationId,
                      style:Theme.of(context).textTheme.bodyMedium),
                    Align(alignment:AlignmentDirectional.centerStart,
                      child:TextButton.icon(
                        onPressed:() async {
                          await Clipboard.setData(ClipboardData(text:item.operationId));
                          if(context.mounted)ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content:Text('Reference copied')));
                        },icon:const Icon(Icons.copy_outlined),
                        label:const Text('Copy reference'))),
                  ])),
              ]))),
            const Padding(padding:EdgeInsets.all(16),
              child:Text('This is an authorized posted ledger entry. '
                'It is not proof of external bank settlement or data delivery.')),
          ],
        ],
      ),
    );
  }
}
