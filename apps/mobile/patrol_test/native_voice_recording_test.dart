import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:masanawa/src/core/voice_note_recorder.dart';

/// Device test for real Android microphone ownership and AAC recording.
/// Runs without sending a message, a user account or Gemini credentials.
void main() {
  patrolTest('record stop and record again releases native microphone',
    (PatrolIntegrationTester $) async {
      await $.pumpWidgetAndSettle(const MaterialApp(
        home: Scaffold(body: Center(child: Text('Voice recorder device test'))),
      ));
      final recorder=VoiceNoteRecorder();
      try {
        final opening=recorder.start();
        if(await $.platform.mobile.isPermissionDialogVisible(
          timeout:const Duration(seconds:5))) {
          await $.platform.mobile.grantPermissionWhenInUse();
        }
        await opening;
        expect(recorder.state,VoiceNoteState.recording,
          reason:recorder.error??'Android microphone should record');
        await Future<void>.delayed(const Duration(milliseconds:1100));
        final note=await recorder.stop();
        expect(recorder.state,VoiceNoteState.ready);
        expect(note,isNotNull);
        expect(note!.sizeBytes,greaterThan(0));
        // User can record again after cancelling; this detects abandoned
        // microphone sessions and leaked Android media recorder ownership.
        await recorder.cancel();
        expect(recorder.state,VoiceNoteState.idle);
        await recorder.start();
        expect(recorder.state,VoiceNoteState.recording,
          reason:recorder.error??'Recorder should reacquire mic');
        await Future<void>.delayed(const Duration(milliseconds:500));
        final second=await recorder.stop();
        expect(second?.sizeBytes,greaterThan(0));
      } finally {
        await recorder.close();
      }
    },
  );
}
