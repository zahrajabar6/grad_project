import 'package:flutter/material.dart';

class BatteryPage extends StatelessWidget {
  const BatteryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Battery', style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
