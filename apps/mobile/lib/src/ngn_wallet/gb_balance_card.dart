import '../../l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'gb_wallet_summary.dart';
import '../gb_wallet/ngn_funding_card_details.dart';
class GbWalletBalanceCard extends StatelessWidget{
 const GbWalletBalanceCard({super.key,required this.balance,required this.loading,this.showSendable=false,this.compact=false,this.ownerName});
 final GbWalletBalance? balance;final bool loading,showSendable,compact;final String? ownerName;
 @override Widget build(BuildContext context)=>Card(child:Padding(padding:const EdgeInsets.all(14),child:Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
  Row(children:[Expanded(child:Text(ownerName??'Wallet balance')),TextButton.icon(onPressed:()=>context.push('/wallet/fund'),icon:const Icon(Icons.add),label:Text(AppLocalizations.of(context).addMoneyLabel))]),
  Semantics(label:'Available Naira balance',child:Text(balance==null?(loading?'Checking balance…':'Balance unavailable'):ngnMoney(balance!.availableKobo),style:Theme.of(context).textTheme.headlineMedium)),
  if(balance!=null&&balance!.reservedKobo>0)Text('On hold: ${ngnMoney(balance!.reservedKobo)}'),
  if(balance?.frozen==true)const Text('Wallet restricted'),
  const NgnFundingCardDetails(compact:true,showBalance:false),
 ])));
}
