import 'dart:async';

import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'status_promotion_api.dart';

/// Client-side visibility evidence, NOT authoritative proof of a human or of
/// reward eligibility. Server timing, identity deduplication and independent
/// fraud review must still pass before financially enabling this feature.
class StatusQualifiedViewObserver extends StatefulWidget {
  const StatusQualifiedViewObserver({super.key,required this.postId,
    required this.accountKey,required this.child,required this.enabled,
    this.api,this.referral,this.onVerified});
  final String postId,accountKey;
  final Widget child;
  final bool enabled;
  final String? referral;
  final StatusQualifiedViewApi? api;
  final ValueChanged<int>? onVerified;
  @override State<StatusQualifiedViewObserver> createState()=>_StatusQualifiedViewObserverState();
}

class _StatusQualifiedViewObserverState extends State<StatusQualifiedViewObserver>
    with WidgetsBindingObserver {
  Timer? _timer;
  int _epoch=0;
  bool _foreground=true,_visible=false,_finished=false,_requesting=false;
  double _fraction=0;
  int _attempts=0;

  @override void initState(){super.initState();WidgetsBinding.instance.addObserver(this);}
  @override void dispose(){_cancel();WidgetsBinding.instance.removeObserver(this);super.dispose();}
  @override void didUpdateWidget(covariant StatusQualifiedViewObserver old){
    super.didUpdateWidget(old);
    if(old.accountKey!=widget.accountKey||old.postId!=widget.postId||
      old.enabled!=widget.enabled||old.api!=widget.api||
      old.referral!=widget.referral){
      _cancel();_finished=false;_attempts=0;_visible=false;_fraction=0;
    }
  }
  void _cancel(){_epoch++;_timer?.cancel();_timer=null;_requesting=false;}
  @override void didChangeAppLifecycleState(AppLifecycleState state){
    final was=_foreground;
    _foreground=state==AppLifecycleState.resumed;
    if(!_foreground)_cancel();
    else if(!was&&_visible)_begin();
  }
  void _visibility(VisibilityInfo info){
    final visible=info.visibleFraction>=0.5;
    _fraction=info.visibleFraction;
    if(!visible){_visible=false;_cancel();return;}
    if(!_visible){_visible=true;_begin();}
  }
  Future<void> _begin() async {
    if(!widget.enabled||widget.api==null||_finished||!_foreground||!_visible||
      _requesting||_timer!=null||_attempts>=3)return;
    final epoch=++_epoch;_attempts++;_requesting=true;
    try{
      final challenge=await widget.api!.beginView(widget.postId,
        referral:widget.referral);
      if(!mounted||epoch!=_epoch||!_foreground||!_visible||!widget.enabled)return;
      _requesting=false;
      _timer=Timer(Duration(seconds:challenge.minimumDwellSeconds+1),()async{
        if(!mounted||epoch!=_epoch||!_foreground||!_visible||
          _fraction<0.5||!widget.enabled)return;
        _finished=true; // Never auto-retry an unknowable write.
        try{
          final result=await widget.api!.qualifyView(challenge.id,
            visibleFraction:_fraction.clamp(0.0,1.0).toDouble(),
            foreground:true,engaged:true);
          if(mounted&&epoch==_epoch&&result.qualified&&result.verifiedViews!=null){
            widget.onVerified?.call(result.verifiedViews!);
          }
        }catch(_){/* Failure/timeout is not a verified view. */}
      });
    }catch(_){
      // Do not claim a view when challenge setup fails. A later continuous
      // visibility period may retry, bounded per mounted card.
      if(mounted&&epoch==_epoch)_requesting=false;
    }
  }
  @override Widget build(BuildContext context){
    if(!widget.enabled||widget.api==null)return widget.child;
    return VisibilityDetector(
      key:ValueKey('view-${widget.accountKey}-${widget.postId}'),
      onVisibilityChanged:_visibility,
      child:widget.child);
  }
}
