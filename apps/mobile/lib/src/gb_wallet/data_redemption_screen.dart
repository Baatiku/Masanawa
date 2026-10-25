import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Provider-qualified GB allowances only. The Flutterwave catalogue must
/// supply verified network, whole-GB size and validity before a purchase
/// option can be rendered or wallet MB reserved.
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
    final validPhone = RegExp(r'^(?:0|\+234)(?:70|80|81|90|91)[0-9]{8}
    // The small form stays fully mounted at 200% text, while the viewport
    // scrolls. Lazy ListView children hid the disabled spend control.
    return SingleChildScrollView(
      key: const PageStorageKey<String>('gb-data-redemption'),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Text('Redeem mobile data',
            style: Theme.of(context).textTheme.titleLarge),
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
                ? 'Enter a valid mobile number'
                : null,
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 18),
        const Card(
          child: ListTile(
            leading: Icon(Icons.sim_card_outlined),
            title: Text('No verified GB bundles available'),
            subtitle: Text('Network selection, bundle allowance, validity '
                'and wallet cost will appear after provider verification. '
                'No purchase has been submitted.'),
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
).hasMatch(phone);
    return ListView(
      key: const PageStorageKey<String>('gb-data-redemption'),
      padding: const EdgeInsets.all(16),
      children: [
        Text('Redeem mobile data',
            style: Theme.of(context).textTheme.titleLarge),
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
                ? 'Enter a valid mobile number'
                : null,
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 18),
        const Card(
          child: ListTile(
            leading: Icon(Icons.sim_card_outlined),
            title: Text('No verified GB bundles available'),
            subtitle: Text('Network selection, bundle allowance, validity '
                'and wallet cost will appear after provider verification. '
                'No purchase has been submitted.'),
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
    );
  }
}
