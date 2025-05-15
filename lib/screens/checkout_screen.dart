import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep < 2) {
            setState(() => _currentStep += 1);
          } else {
            // Place order logic
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() => _currentStep -= 1);
          } else {
            Navigator.pop(context);
          }
        },
        steps: [
          Step(
            title: const Text('Shipping'),
            content: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Full Name'),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Address'),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'City'),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'ZIP Code'),
                ),
              ],
            ),
          ),
          Step(
            title: const Text('Payment'),
            content: Column(
              children: [
                RadioListTile(
                  title: const Text('Credit Card'),
                  value: 0,
                  groupValue: 0,
                  onChanged: (value) {},
                ),
                RadioListTile(
                  title: const Text('PayPal'),
                  value: 1,
                  groupValue: 0,
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
          Step(
            title: const Text('Review'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Order Summary', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                const Text('2 items'),
                const Text('Subtotal: \$120.00'),
                const Text('Shipping: \$5.99'),
                const Divider(),
                Text(
                  'Total: \$125.99',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}