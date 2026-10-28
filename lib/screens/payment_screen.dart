
import 'package:flutter/material.dart';
import '../widgets/payment_status.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isPaid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedSwitcher Demo'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedSwitcher changes between payment states.
            AnimatedSwitcher(
              // Property 1: Duration
              duration: const Duration(milliseconds: 500),

              // Property 2: Transition Builder
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },

              // Property 3: Switch In Curve
              switchInCurve: Curves.linear,

              child: PaymentStatus(
                key: ValueKey(isPaid),
                isPaid: isPaid,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isPaid = !isPaid;
                });
              },
              child: Text(
                isPaid ? 'Reset Payment' : 'Pay Now',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
