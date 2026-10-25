import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Only trusted exact whole-GB provider catalogue items can be eligible.
/// The app must not pretend a failed checkout or an unqualified bill is paid.
class DataRedemptionScreen extends StatefulWidget {
  const DataRedemptionScreen({super.key});

  @override
  State<DataRedemptionScreen> createState() => _DataRedemptionScreenState();
}

class _DataRedemptionScreenState extends State<DataRedemptionScreen> {
  final _phone = TextEditingController();

  @override
  void dispose() {
    _phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final phone = _phone.text.trim();
    // Current Flutterwave biller qualification is Nigeria only. Format and
    // network identity are independently verified by the Gateway on review.
    final validPhone =
        RegExp(r'^(?:0|\+234)(?:70|80|81|90|91)[0-9]{8}$').hasMatch(phone);
    // This is a small form: eager children keep disabled financial controls
    // inspectable and accessible even below the viewport at 200% text.
    return SingleChildScrollView(
      key: const PageStorageKey<String>('gb-data-redemption'),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Redeem mobile data',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _phone,
            keyboardType: TextInputType.phone,
            onChanged: (_) => setState(() {}),
            decoration: InputDecoration(
              labelText: 'Phone number',
              hintText: 'Recipient mobile number',
              helperText: 'You can redeem for another person’s SIM.',
              errorText: phone.isNotEmpty && !validPhone
                  ? 'Enter a valid Nigerian mobile number'
                  : null,
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 18),
          const Card(
            child: ListTile(
              leading: Icon(Icons.sim_card_outlined),
              title: Text('No verified GB bundles available'),
              subtitle: Text(
                'Network selection, bundle allowance, validity and wallet '
                'cost will appear after provider verification. '
                'No purchase has been submitted.',
              ),
            ),
          ),
          const SizedBox(height: 12),
          FilledButton.icon(
            onPressed: null,
            icon: const Icon(Icons.check_circle_outline),
            label: const Text('Choose a bundle'),
          ),
          TextButton(
            onPressed: () => context.go('/home?tab=wallet'),
            child: const Text('Back to Wallet'),
          ),
        ],
      ),
    );
  }
}
