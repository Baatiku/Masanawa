import 'dart:async';
import 'package:flutter/material.dart';

/// Keep this region mounted while the composer replaces its microphone with
/// recording controls. Disabling a new gesture never cancels one in progress.
class VoiceNoteHoldRegion extends StatefulWidget {
  const VoiceNoteHoldRegion({super.key,required this.enabled,required this.child,
    required this.onStart,required this.onPreview,required this.onCancel,required this.onLock});
  final bool enabled;
  final Widget child;
  final Future<void> Function() onStart,onPreview,onCancel;
  final VoidCallback onLock;
  @override State<VoiceNoteHoldRegion> createState()=>_HoldRegionState();
}
class _HoldRegionState extends State<VoiceNoteHoldRegion>{
  Future<void>? starting;
  bool active=false,handled=false,locked=false;
  void begin(LongPressStartDetails details){
    if(!widget.enabled||active)return;
    active=true;handled=false;locked=false;
    starting=Future<void>.sync(widget.onStart).catchError((Object _){handled=true;active=false;});
  }
  void move(LongPressMoveUpdateDetails details){
    if(!active||handled||locked)return;
    if(details.offsetFromOrigin.dx *
        (Directionality.of(context)==TextDirection.ltr?1:-1)<=-72){handled=true;unawaited(finish(cancel:true));}
    else if(details.offsetFromOrigin.dy<=-72){locked=true;widget.onLock();}
  }
  Future<void> finish({required bool cancel})async{
    await starting;
    if(!mounted)return;
    active=false;
    if(cancel){await widget.onCancel();}else{await widget.onPreview();}
  }
  void end(LongPressEndDetails details){
    if(!active||handled)return;
    if(locked){active=false;return;}
    handled=true;unawaited(finish(cancel:false));
  }
  @override Widget build(BuildContext context)=>GestureDetector(
    behavior:HitTestBehavior.opaque,onLongPressStart:begin,
    onLongPressMoveUpdate:move,onLongPressEnd:end,
    onLongPressCancel:(){if(active&&!handled&&!locked){handled=true;unawaited(finish(cancel:true));}},
    child:widget.child,
  );
}
