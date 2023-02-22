import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grad_project/screens/welcome_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String id = 'SplashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() {
    var duration = const Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacementNamed(context, WelcomeScreen.id);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: SizedBox(
        height: 150,
        child: Lottie.network(
            'https://assets4.lottiefiles.com/private_files/lf30_3vhjjbex.json'),
      )),
    );
  }
}
