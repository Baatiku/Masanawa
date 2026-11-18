import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart';

/// Android privacy for one sensitive route. Fail closed until FLAG_SECURE is
/// acknowledged: the one-time code or private session data must not render into
/// a recent-apps thumbnail while the native bridge is unavailable. Normal
/// chat and sharable receipts never use this scope.
class PrivateScreenShield extends StatefulWidget {
  const PrivateScreenShield({
    super.key,
    required this.child,
    this.requireAndroidProtection,
  });
  final Widget child;

  /// Test override; normal production screens use [Platform.isAndroid].
  final bool? requireAndroidProtection;

  @override
  State<PrivateScreenShield> createState() => _PrivateScreenShieldState();
}

class _PrivateScreenShieldState extends State<PrivateScreenShield> {
  static const MethodChannel _native = MethodChannel('masanawa/private_screen');
  static int _nextOwner = 0;
  late final String _owner =
      'screen-${DateTime.now().microsecondsSinceEpoch}-${_nextOwner++}';
  late final bool _needsShield =
      widget.requireAndroidProtection ?? (!kIsWeb && Platform.isAndroid);
  bool _ready = false;
  bool _acquiring = false;
  bool _ownsProtection = false;
  bool _failed = false;

  @override
  void initState() {
    super.initState();
    if (_needsShield) {
      Future<void>.microtask(_acquire);
    } else {
      _ready = true;
    }
  }

  Future<void> _acquire() async {
    if (_acquiring || _ownsProtection) return;
    _acquiring = true;
    if (mounted) setState(() => _failed = false);
    try {
      final result = await _native.invokeMethod<bool>('acquire', {
        'owner': _owner,
      });
      if (result != true) {
        throw PlatformException(code: 'privacy_unavailable');
      }
      _ownsProtection = true;
      if (mounted) {
        setState(() => _ready = true);
      } else {
        await _release();
      }
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    } finally {
      _acquiring = false;
    }
  }

  Future<void> _release() async {
    if (!_ownsProtection) return;
    _ownsProtection = false;
    try {
      await _native.invokeMethod<bool>('release', {'owner': _owner});
    } catch (_) {
      // A route going away never displays a sensitive fallback. A second
      // active route has its own token and native ownership stays independent.
    }
  }

  @override
  void dispose() {
    unawaited(_release());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_ready) return widget.child;
    return Scaffold(
      appBar: AppBar(title: const Text('Private screen')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.shield_outlined, size: 40),
              const SizedBox(height: 16),
              Text(
                _failed
                    ? 'Screen protection is unavailable. The private details are hidden.'
                    : 'Securing this screen before showing private details.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              if (_failed)
                OutlinedButton(
                  onPressed: _acquiring ? null : _acquire,
                  child: const Text('Retry protection'),
                )
              else
                const CircularProgressIndicator(),
              TextButton(
                onPressed: () => Navigator.of(context).maybePop(),
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
