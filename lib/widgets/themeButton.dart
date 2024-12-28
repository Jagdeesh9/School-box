import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Themebutton extends StatefulWidget {
  void Function() onpressHandler;
  // ignore: prefer_typing_uninitialized_variables
  final text;
  Themebutton({super.key, required this.onpressHandler, required this.text});

  @override
  State<Themebutton> createState() => _ThemebuttonState();
}

class _ThemebuttonState extends State<Themebutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: widget.onpressHandler,
        child: Text(
          widget.text,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
