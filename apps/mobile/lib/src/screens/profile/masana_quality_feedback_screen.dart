import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../agents/agent_directory.dart';
import '../../core/providers.dart';
import '../../state/session_state.dart';

/// Reporting a possible response-quality problem is not a safety accusation.
const masanaQualityOptions = <String, String>{
  'factual_error': 'Factually incorrect information',
  'off_topic': 'Answer did not address the question',
  'repetition': 'Repeated or circular answer',
  'unhelpful': 'Confusing or unhelpful explanation',
  'unprofessional': 'Inappropriate professional conduct',
};

class MasanaQualityFeedbackScreen extends ConsumerStatefulWidget {
  const MasanaQualityFeedbackScreen({super.key, required this.agent});
  final AgentDirectoryEntry agent;

  @override
  ConsumerState<MasanaQualityFeedbackScreen> createState() =>
      _MasanaQualityFeedbackScreenState();
}

class _MasanaQualityFeedbackScreenState
    extends ConsumerState<MasanaQualityFeedbackScreen> {
  String? _reason;
  bool _sending = false;
  String? _error;

  Future<void> _submit() async {
    final reason = _reason;
    if (reason == null || _sending) return;
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) {
      setState(() => _error = 'Sign in to send feedback.');
      return;
    }
    final owner = session.user.id;
    setState(() {
      _sending = true;
      _error = null;
    });
    try {
      final response = await ref.read(apiClientProvider).dio.post<Map<String, dynamic>>(
        '/v1/masana/${Uri.encodeComponent(widget.agent.characterId)}/quality-feedback',
        data: {'reason': reason},
      );
      if (!mounted) return;
      final current = ref.read(sessionProvider);
      if (current is! SessionSignedIn || current.user.id != owner) {
        setState(() => _error = 'Your session changed. Please sign in again.');
        return;
      }
      if (response.data?['accepted'] != true) {
        throw const FormatException('Feedback could not be confirmed');
      }
      Navigator.of(context).pop(true);
    } catch (_) {
      if (mounted) {
        setState(() => _error = 'Could not submit feedback. Please try again.');
      }
    } finally {
      if (mounted) setState(() => _sending = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Masana answer feedback')),
    body: SafeArea(child: ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Text('Help improve ${widget.agent.displayName}',
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        const Text(
          'Choose what needs improving. This sends only a category, not your '
          'conversation or personal details. Feedback is a review signal, not '
          'proof that the Masana made an error.'),
        const SizedBox(height: 12),
        for (final entry in masanaQualityOptions.entries)
          RadioListTile<String>(
            title: Text(entry.value),
            value: entry.key,
            groupValue: _reason,
            onChanged: _sending ? null : (value) =>
                setState(() { _reason = value; _error = null; }),
          ),
        if (_error != null) Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
        ),
        const SizedBox(height: 12),
        FilledButton(
          onPressed: _reason == null || _sending ? null : _submit,
          child: _sending
            ? const SizedBox(height: 18,width: 18,
                child: CircularProgressIndicator(strokeWidth: 2))
            : const Text('Submit feedback'),
        ),
      ],
    )),
  );
}
