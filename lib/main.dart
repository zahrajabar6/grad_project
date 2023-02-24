import 'package:flutter/material.dart';
import 'package:grad_project/screens/main_page.dart';
import 'package:grad_project/screens/splash_screen.dart';
import 'constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

final _auth = FirebaseAuth.instance;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
      home: _auth.currentUser != null ? const MyPages() : const SplashScreen(),
    );
  }
}
