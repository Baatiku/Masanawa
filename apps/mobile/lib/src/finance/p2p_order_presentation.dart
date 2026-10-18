import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Duration p2pPaymentRemaining(
  DateTime deadline,
  DateTime serverNow,
  Duration elapsed,
) {
  final remaining = (deadline.difference(serverNow) - elapsed);
  return remaining.isNegative ? Duration.zero : remaining;
}

String p2pOrderStatus(String state) =>
    const {
      'reserving': 'Securing seller funds',
      'awaiting_payment': 'Awaiting bank transfer',
      'payment_claimed': 'Buyer reported payment',
      'release_pending': 'Checking release',
      'refund_pending': 'Refund processing',
      'completed': 'Trade completed',
      'disputed': 'Under review',
      'expired': 'Order expired',
      'cancelled': 'Order cancelled',
      'failed': 'Order could not be placed',
    }[state] ??
    state.replaceAll('_', ' ');

class P2pOrderProgress extends StatelessWidget {
  const P2pOrderProgress({super.key, required this.state});
  final String state;
  @override
  Widget build(BuildContext context) {
    if (['disputed', 'expired', 'cancelled'].contains(state))
      return ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(
          state == 'disputed'
              ? Icons.support_agent_outlined
              : Icons.event_busy_outlined,
        ),
        title: Text(p2pOrderStatus(state)),
      );
    final stage = state == 'completed'
        ? 3
        : state == 'release_pending'
        ? 1
        : state == 'payment_claimed'
        ? 1
        : 0;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final step in [
          (0, 'Pay seller'),
          (1, 'Seller checks'),
          (2, 'Complete'),
        ])
          Expanded(
            child: Semantics(
              label:
                  '${step.$2}: ${step.$1 < stage
                      ? 'complete'
                      : step.$1 == stage
                      ? 'current'
                      : 'pending'}',
              child: Column(
                children: [
                  Icon(
                    step.$1 < stage
                        ? Icons.check_circle_outline
                        : step.$1 == stage
                        ? Icons.radio_button_checked
                        : Icons.radio_button_unchecked,
                    color: step.$1 <= stage
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).disabledColor,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    step.$2,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

class P2pOrderBankDetails extends StatelessWidget {
  const P2pOrderBankDetails({
    super.key,
    required this.bankName,
    required this.accountName,
    required this.accountNumber,
    required this.buyer,
    this.fiatTotal,
  });
  final String bankName, accountName, accountNumber;
  final bool buyer;
  /// Server-computed NGN total, never a client estimate.
  final String? fiatTotal;
  @override
  Widget build(BuildContext context) {
    if (!RegExp(r'^[0-9]{10}$').hasMatch(accountNumber) ||
        bankName.isEmpty ||
        accountName.isEmpty)
      return const ListTile(
        leading: Icon(Icons.account_balance_outlined),
        title: Text('Bank details unavailable'),
      );
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            buyer ? 'Pay seller' : 'Receiving bank',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 16),
          Text(bankName, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: SelectableText(
                  accountNumber,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              IconButton(
                tooltip: 'Copy order bank account',
                icon: const Icon(Icons.copy_outlined),
                onPressed: () async {
                  await Clipboard.setData(ClipboardData(text: accountNumber));
                  if (context.mounted)
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Account number copied')),
                    );
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
          SelectableText(accountName),
          if (buyer && fiatTotal != null) ...[
            const Divider(height: 24),
            Text('Send exactly',style:Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: 5),
            Row(children:[
              Expanded(child:Text(fiatTotal!,style:Theme.of(context)
                .textTheme.titleLarge?.copyWith(fontWeight:FontWeight.w700))),
              IconButton(
                tooltip:'Copy exact payment amount',
                icon:const Icon(Icons.copy_outlined),
                onPressed:()async{
                  await Clipboard.setData(ClipboardData(text:fiatTotal!));
                  if(context.mounted)ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content:Text('Payment total copied')));
                },
              ),
            ]),
            const Text('Only mark paid after making the actual bank transfer.'),
          ],
        ],
      ),
    );
  }
}

/// Only the database sample and monotonic elapsed time drive this display.
/// It never cancels, expires or releases an order based on a handset clock.
class P2pPaymentDeadline extends StatefulWidget {
  const P2pPaymentDeadline({
    super.key,
    required this.deadline,
    required this.serverNow,
    required this.active,
    this.onRefresh,
  });
  final DateTime? deadline, serverNow;
  final bool active;
  final VoidCallback? onRefresh;
  @override
  State<P2pPaymentDeadline> createState() => _DeadlineState();
}

class _DeadlineState extends State<P2pPaymentDeadline> {
  final elapsed = Stopwatch();
  Timer? timer;
  @override
  void initState() {
    super.initState();
    sync();
  }

  @override
  void didUpdateWidget(covariant P2pPaymentDeadline old) {
    super.didUpdateWidget(old);
    if (old.serverNow != widget.serverNow ||
        old.deadline != widget.deadline ||
        old.active != widget.active)
      sync();
  }

  void sync() {
    timer?.cancel();
    elapsed
      ..reset()
      ..start();
    if (widget.active && widget.serverNow != null && widget.deadline != null)
      timer = Timer.periodic(const Duration(seconds: 1), (_) {
        if (mounted &&
            (ModalRoute.of(context)?.isCurrent ?? true) &&
            (WidgetsBinding.instance.lifecycleState == null ||
                WidgetsBinding.instance.lifecycleState ==
                    AppLifecycleState.resumed)) {
          setState(() {});
          if (p2pPaymentRemaining(
                widget.deadline!,
                widget.serverNow!,
                elapsed.elapsed,
              ) ==
              Duration.zero)
            timer?.cancel();
        }
      });
  }

  @override
  void dispose() {
    timer?.cancel();
    elapsed.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deadline = widget.deadline;
    if (deadline == null) return const SizedBox.shrink();
    if (!widget.active || widget.serverNow == null) {
      final local = deadline.toLocal(), l = MaterialLocalizations.of(context);
      return ListTile(
        contentPadding: EdgeInsets.zero,
        leading: const Icon(Icons.schedule),
        title: const Text('Payment deadline'),
        subtitle: Text(
          '${l.formatMediumDate(local)} · ${l.formatTimeOfDay(TimeOfDay.fromDateTime(local))}',
        ),
      );
    }
    final remaining = p2pPaymentRemaining(
          deadline,
          widget.serverNow!,
          elapsed.elapsed,
        ),
        seconds = (remaining.inMilliseconds + 999) ~/ 1000;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const Icon(Icons.schedule),
      title: Text(
        seconds == 0
            ? 'Payment window ended'
            : 'Pay within ${(seconds ~/ 60).toString().padLeft(2, '0')}:${(seconds % 60).toString().padLeft(2, '0')}',
      ),
      trailing: seconds == 0 && widget.onRefresh != null
          ? TextButton(
              onPressed: widget.onRefresh,
              child: const Text('Refresh order'),
            )
          : null,
    );
  }
}
