import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String id = 'SplashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 40),
              child: Image.asset('assets/images/logo1.png'),
            ),
            const SizedBox(
              height: 40,
              width: 40,
              child: CircularProgressIndicator(
                backgroundColor: mainBlue,
                color: lightGrey,
                strokeWidth: 3,
              ),
            ),
          ],
        ),
      ),
      // SizedBox(
      //   height: 150,
      //   child: Lottie.network(
      //       'https://assets10.lottiefiles.com/datafiles/ugFV3T9Zi676bvx/data.json'),
      // )),
    );
  }
}
