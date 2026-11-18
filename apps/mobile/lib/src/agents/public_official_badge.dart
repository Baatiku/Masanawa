import 'dart:async';
import 'package:flutter/material.dart';
import 'agent_directory.dart';

/// A provenance tick, never a claim that the politician owns this AI profile.
class PublicOfficialBadge extends StatefulWidget {
 const PublicOfficialBadge({super.key,required this.identity});
 final PublicOfficialIdentity identity;
 @override State<PublicOfficialBadge> createState()=>_PublicOfficialBadgeState();
}
class _PublicOfficialBadgeState extends State<PublicOfficialBadge>{
 Timer? _expiry;
 void _schedule(){_expiry?.cancel();final remaining=widget.identity.expiresAt.difference(DateTime.now().toUtc());
  if(remaining>Duration.zero)_expiry=Timer(remaining,(){if(mounted)setState((){});});}
 @override void initState(){super.initState();_schedule();}
 @override void didUpdateWidget(covariant PublicOfficialBadge old){super.didUpdateWidget(old);_schedule();}
 @override void dispose(){_expiry?.cancel();super.dispose();}
 @override Widget build(BuildContext context){
  if(!widget.identity.current)return const SizedBox.shrink();
  final message='Source-reviewed AI persona. Identity checked against ${widget.identity.sourceUrl}. Not the official or an endorsement.';
  return Tooltip(message:message,child:Semantics(label:message,
    child:Icon(Icons.verified_rounded,size:20,color:Theme.of(context).colorScheme.primary)));
 }
}
