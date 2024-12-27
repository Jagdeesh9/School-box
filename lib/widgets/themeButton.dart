import 'package:flutter/material.dart';
import 'package:school_box/colors.dart';

class Themebutton extends StatefulWidget {
  final Function() onpressHandler;
  final text;
  const Themebutton(
      {super.key, required this.onpressHandler, required this.text});

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
        style: ElevatedButton.styleFrom(
          backgroundColor: Pallete.themeBottonColor,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
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
