import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 26,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          letterSpacing: 3),
    );
  }
}
