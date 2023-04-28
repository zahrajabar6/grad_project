import 'package:flutter/material.dart';
import 'package:grad_project/screens/admin%20side/admin_pages.dart';
import 'package:grad_project/screens/client%20side/main_page.dart';
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
        scaffoldBackgroundColor: Colors.grey.shade50,
        platform: TargetPlatform.iOS,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: mainBlue,
          // shadowColor: Colors.black38,
          elevation: 1.5,
        ),
      ),
      darkTheme: ThemeData.dark(),
      home: _auth.currentUser != null
          ? (_auth.currentUser!.email == 'admin@admin.com'
              ? const AdminPages()
              : const MyPages())
          : const SplashScreen(),
    );
  }
}
