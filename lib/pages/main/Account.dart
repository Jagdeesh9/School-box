import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_box/background_color_provider.dart';

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
    Future.microtask(() {
      Provider.of<BackgroundColorProvider>(context, listen: false).fetchTheme();
    });
  }

  Widget build(BuildContext context) {
    // Access the BackgroundColorProvider using Provider.of
    final backgroundColorProvider =
        Provider.of<BackgroundColorProvider>(context);

    // Define light and dark mode colors
    final lightBackgroundColor = Colors.white;
    final darkBackgroundColor = Colors.black;
    final lightTextColor = Colors.black;
    final darkTextColor = Colors.white;

    return Container(
      decoration: BoxDecoration(
        color: backgroundColorProvider.isdarkmodechecked
            ? darkBackgroundColor
            : lightBackgroundColor,
      ),
      child: Center(
        child: FloatingActionButton(
          onPressed: backgroundColorProvider
              .toggleDarkMode, // Call the method from the provider
          child: const Icon(Icons.color_lens),
        ),
      ),
    );
  }
}
