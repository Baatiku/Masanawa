import 'package:flutter/material.dart';
import 'msnw_wallet_home.dart';

/// Shared custody detail presentation, never a second balance store.
class MsnwAssetDetail extends StatelessWidget {
  const MsnwAssetDetail({super.key, required this.balance, required this.onSend,
    required this.onDeposit, required this.onActivity,
    this.onReceiveMsnw,this.onConvertWithdraw});
  final MsnwCustodyBalance? balance;
  final VoidCallback onSend, onDeposit, onActivity;
  final VoidCallback? onReceiveMsnw,onConvertWithdraw;
  @override
  Widget build(BuildContext context) => ListView(padding:const EdgeInsets.all(20),children:[
    Text('MSNW',style:Theme.of(context).textTheme.headlineMedium),
    const SizedBox(height:16),
    if(balance case final b?) ...[
      ListTile(title:const Text('Available'),trailing:Text(formatWalletAtomic(b.available))),
      ListTile(title:const Text('Reserved'),trailing:Text(formatWalletAtomic(b.reserved))),
      ListTile(title:const Text('Total held'),trailing:Text(formatWalletAtomic((BigInt.parse(b.available)+BigInt.parse(b.reserved)).toString()))),
      const Text('Platform reference: 1 MSNW = ₦1. External sale proceeds depend on an executable quote.'),
    ] else const Text('Verified balance unavailable. Return to Wallet and refresh.'),
    const SizedBox(height:20),
    FilledButton.icon(onPressed:onDeposit,icon:const Icon(Icons.south_west),label:const Text('Deposit')),
    OutlinedButton.icon(onPressed:onSend,icon:const Icon(Icons.north_east),label:const Text('Send within Masanawa')),
    if(onReceiveMsnw!=null) TextButton.icon(
      onPressed:onReceiveMsnw,
      icon:const Icon(Icons.qr_code),
      label:const Text('Receive MSNW on-chain')),
    if(onConvertWithdraw!=null) TextButton.icon(
      onPressed:onConvertWithdraw,
      icon:const Icon(Icons.currency_exchange),
      label:const Text('Convert MSNW & withdraw externally')),
    TextButton(onPressed:onActivity,child:const Text('View activity')),
  ]);
}
