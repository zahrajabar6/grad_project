import 'package:flutter/material.dart';
import 'package:grad_project/components/button.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/screens/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static String id = 'WelcomeScreen';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlue,
      body: Stack(
        children: [
          Positioned(right: 0, child: Image.asset('assets/images/cloud1.png')),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/cloudsun.png'),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'Make the sun work for you',
                  textAlign: TextAlign.center,
                  style: loginTextTextStyle,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Material(
                  elevation: 1.0,
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(50.0),
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      minWidth: 60,
                      height: 60,
                      child: const Icon(
                        Icons.arrow_forward,
                        color: mainBlue,
                      )),
                ),
              ],
            ),
          ),
          Positioned(bottom: 0, child: Image.asset('assets/images/cloud2.png')),
        ],
      ),
    );
  }
}
