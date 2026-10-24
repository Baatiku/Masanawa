import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/p2p_access_boundary.dart';
void main(){
 testWidgets('revoked protected route never resurrects after the same account returns',(t)async{
  bool allowed=true;
  await t.pumpWidget(MaterialApp(home:Scaffold(body:P2pAccessBoundary(authorized:()=>allowed,builder:(_)=>const Text('Private bank receipt')))));await t.pump();expect(find.text('Private bank receipt'),findsOneWidget);
  allowed=false;await t.pump(const Duration(milliseconds:300));expect(find.text('Private bank receipt'),findsNothing);allowed=true;await t.pump(const Duration(milliseconds:300));expect(find.text('Private bank receipt'),findsNothing);expect(find.text('Access changed. Reopen P2P.'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
}
