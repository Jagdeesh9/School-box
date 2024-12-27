import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_box/background_color_provider.dart';
import 'package:school_box/pages/Singup_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => BackgroundColorProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final backgroundColorProvider =
        Provider.of<BackgroundColorProvider>(context);

    return MaterialApp(
      theme: backgroundColorProvider.isdarkmodechecked
          ? ThemeData.dark(useMaterial3: true)
          : ThemeData.light(useMaterial3: true),
      // ignore: prefer_const_constructors
      home: SignupPage(),
    );
  }
}
