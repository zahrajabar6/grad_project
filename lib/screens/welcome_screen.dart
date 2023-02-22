import 'package:flutter/material.dart';
import 'package:grad_project/components/button.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/screens/login_screen.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static String id = 'WelcomeScreen';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: SizedBox(
                  height: 200,
                  child: Lottie.network(
                      'https://assets9.lottiefiles.com/packages/lf20_12iwjK.json'),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Welcome..',
                textAlign: TextAlign.center,
                style: loginLableTextStyle,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Make the sun work for you!',
                textAlign: TextAlign.center,
                style: loginTextTextStyle,
              ),
              const SizedBox(
                height: 20.0,
              ),
              MyButton(
                text: 'Log In',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
