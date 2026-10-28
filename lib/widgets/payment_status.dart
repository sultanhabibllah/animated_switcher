
import 'package:flutter/material.dart';

class PaymentStatus extends StatelessWidget {
  final bool isPaid;

  const PaymentStatus({
    super.key,
    required this.isPaid,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          isPaid ? Icons.check_circle : Icons.pending,
          size: 70,
          color: isPaid ? Colors.green : Colors.orange,
        ),
        const SizedBox(height: 16),
        Text(
          isPaid ? 'Payment Successful!' : 'Payment Pending',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Amount: \$49.00',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
