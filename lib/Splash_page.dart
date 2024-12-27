import 'dart:async';

import 'package:flutter/material.dart';
import 'package:school_box/pages/Singup_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context)=> SignupPage())
        );
    });



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          "assets/splash.png",
          width: MediaQuery.of(context).size.width * 0.8,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
