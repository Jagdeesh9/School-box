import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  void initState() {
    super.initState();
    // Fetch color settings from the backend when the screen loads
  }

  Widget build(BuildContext context) {
    // Access the BackgroundColorProvider using Provider.of

    return Container(
      decoration: const BoxDecoration(),
      child: Center(
        child: FloatingActionButton(
          onPressed: () {}, // Call the method from the provider
          child: const Icon(Icons.color_lens),
        ),
      ),
    );
  }
}
