import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'crypto_state.dart';
import 'msnw_wallet_home.dart';

class WalletPortfolioSummary extends ConsumerWidget {
  const WalletPortfolioSummary({super.key,required this.balance,required this.hidden});
  final MsnwCustodyBalance? balance;
  final bool hidden;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final crypto=ref.watch(cryptoWalletProvider);
    final incomplete=crypto.isLoading||crypto.hasError||crypto.valueOrNull?.holdingsVerified!=true||
      crypto.valueOrNull!.holdingRoutes.isNotEmpty;
    final total=balance==null?null:(BigInt.parse(balance!.available)+BigInt.parse(balance!.reserved)).toString();
    return Padding(padding:const EdgeInsets.only(bottom:16),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
      Text(incomplete?'Partial portfolio estimate · NGN':'Portfolio reference value · NGN'),
      Text(hidden?'••••':total==null||balance?.pricingPolicyId!='msnw-ngn-1-v1'?'Unavailable':'₦${formatWalletAtomic(total)}',style:Theme.of(context).textTheme.headlineMedium),
      const Text('MSNW at ₦1, including reserved funds once. Crypto without verified prices is excluded. This is not a fiat cash balance.'),
    ]));
  }
}
