import 'package:flutter/material.dart';
import 'package:school_box/pages/BottomNavi.dart';
import 'package:school_box/Splash_page.dart';
import 'package:provider/provider.dart';
import 'package:school_box/background_color_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => BackgroundColorProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final backgroundColorProvider =
        Provider.of<BackgroundColorProvider>(context);

    @override
    void initState() {
      super.initState();
      // Fetch color settings from the backend when the screen loads

      backgroundColorProvider.fetchTheme();
    }

    return MaterialApp(
      theme: backgroundColorProvider.isdarkmodechecked
          ? ThemeData.dark(useMaterial3: true)
          : ThemeData.light(useMaterial3: true),

      // home: SplashPage(),  // main route
      home: const Bottomnavi(),
    );
  }
}
