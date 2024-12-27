import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final TextEditingController controller;

  const Textfield({
    super.key,
    required this.hintText,
    required this.controller,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        prefixIcon: icon,
      ),
      keyboardType: TextInputType.phone,
    );
  }
}
