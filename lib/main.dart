import 'package:flutter/material.dart';

import 'package:grad_project/screens/splash_screen.dart';
import 'package:grad_project/screens/welcome_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final isLogin = prefs.getBool('isLogin') ?? false;
  runApp(MyApp(
    isLogin: isLogin,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isLogin});
  final bool isLogin;
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //app theme
      theme: ThemeData(
        fontFamily: "Lora",
        platform: TargetPlatform.iOS,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: mainBlue,
          elevation: 2,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
