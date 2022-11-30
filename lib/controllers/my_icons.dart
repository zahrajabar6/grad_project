import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {

    return Icon(
      icon,
      color: Colors.grey,
      size: 30,
    );
  }
}
