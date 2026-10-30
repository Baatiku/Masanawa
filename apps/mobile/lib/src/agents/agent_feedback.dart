import 'dart:io';

import '../core/network/api_client.dart';

enum AgentRecovery { retry, signIn, reconnect, addMb, microphone }

/// Local, allowlisted copy. Never renders vendor messages or configuration.
class AgentFeedback {
  const AgentFeedback(this.message, {this.recovery = AgentRecovery.retry});
  final String message;
  final AgentRecovery recovery;

  String get actionLabel => switch (recovery) {
    AgentRecovery.retry => 'Try again',
    AgentRecovery.signIn => 'Sign in',
    AgentRecovery.reconnect => 'Reconnect',
    AgentRecovery.addMb => 'Add MB',
    AgentRecovery.microphone => 'Microphone settings',
  };

  factory AgentFeedback.fromError(Object error, {bool conversation = false}) {
    if (error is ApiException) {
      if (const {'gb.wallet.insufficient_mb', 'gb.call.insufficient_mb'}
          .contains(error.code)) {
        return const AgentFeedback(
          'Not enough MB for this conversation. Add MB to continue.',
          recovery: AgentRecovery.addMb,
        );
      }
      if (error.code == 'gb.call.balance_unavailable' ||
          error.code == 'gb.wallet.not_ready') {
        return const AgentFeedback(
          'Your MB balance could not be verified. Check your connection and retry.',
        );
      }
      if (error.code == 'gb.call.account_restricted' ||
          error.code == 'gb.wallet.account_frozen') {
        return const AgentFeedback(
          'This MB wallet is restricted. Contact support to continue.',
        );
      }
      if (error.statusCode == 401) {
        return const AgentFeedback(
          'Please sign in again to continue.',
          recovery: AgentRecovery.signIn,
        );
      }
      if (error.code == 'NETWORK_UNREACHABLE') {
        return const AgentFeedback('Check your connection and try again.');
      }
      if (error.code == 'gb.call.unavailable' || error.statusCode == 503) {
        return const AgentFeedback('The voice service is unavailable right now. Please retry shortly.');
      }
      if (error.statusCode == 403 || error.statusCode == 404) {
        return const AgentFeedback('This agent isn’t available right now.');
      }
      if (error.statusCode == 413 || error.code == 'ATTACHMENT_TOO_LARGE') {
        return const AgentFeedback(
          'Choose a file smaller than 8 MB and try again.',
        );
      }
      if (error.statusCode == 429) {
        return const AgentFeedback('Please wait a moment, then try again.');
      }
      if (error.code == 'NETWORK_TIMEOUT') {
        return const AgentFeedback(
          'The response took too long. Please try again.',
        );
      }
    }
    if (error is FileSystemException) {
      return const AgentFeedback(
        'That attachment is no longer available. Please attach it again.',
      );
    }
    return AgentFeedback(
      conversation
          ? 'I couldn’t respond just now. Please try again.'
          : 'We couldn’t connect right now. Please try again.',
    );
  }
}
