import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_box/background_color_provider.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
   @override
  void initState() {
    super.initState();
    // Fetch color settings from the backend when the screen loads
    Future.microtask(() {
      Provider.of<BackgroundColorProvider>(context, listen: false).fetchTheme();
    });
  }
  Widget build(BuildContext context) {
    final backgroundColorProvider =
        Provider.of<BackgroundColorProvider>(context);
       final lightBackgroundColor = Colors.white;
    final darkBackgroundColor = Colors.black;
    final lightTextColor = Colors.black;
    final darkTextColor = Colors.white;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: backgroundColorProvider.isdarkmodechecked
              ? darkBackgroundColor
              : lightBackgroundColor,
        ),
        child:Center(child: Text('Help',
    style: TextStyle(color: backgroundColorProvider.isdarkmodechecked
    ? darkTextColor
    :lightTextColor
    , fontSize: 24),
    ))
      ),
    );
  }
}