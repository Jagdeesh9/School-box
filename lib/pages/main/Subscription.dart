import 'package:flutter/material.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  void initState() {
    super.initState();
    // Fetch color settings from the backend when the screen loads
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: const Center(
        child: Text(
          'SS22',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
