import 'dart:async';
import 'package:flutter/material.dart';

/// An old route remains revoked even if the same account signs back in.
class P2pAccessBoundary extends StatefulWidget {
 const P2pAccessBoundary({super.key,required this.authorized,required this.builder});
 final bool Function() authorized;final WidgetBuilder builder;
 @override State<P2pAccessBoundary> createState()=>_BoundaryState();
}
class _BoundaryState extends State<P2pAccessBoundary>{
 bool _gone=false;Timer? _timer;
 @override void initState(){super.initState();_timer=Timer.periodic(const Duration(milliseconds:250),(_){if(mounted&&!_gone&&!widget.authorized()){_timer?.cancel();setState(()=>_gone=true);}});}
 @override void dispose(){_timer?.cancel();super.dispose();}
 @override Widget build(BuildContext context){if(!_gone&&!widget.authorized()){_gone=true;_timer?.cancel();}return _gone?Material(color:Theme.of(context).scaffoldBackgroundColor,child:SafeArea(child:Center(child:Column(mainAxisSize:MainAxisSize.min,children:[const Text('Access changed. Reopen P2P.'),TextButton(onPressed:()=>Navigator.maybePop(context),child:const Text('Back'))])))):widget.builder(context);}
}
