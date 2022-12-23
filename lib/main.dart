import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grad_project/views/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lato",
        primarySwatch: Colors.blue,
        platform: TargetPlatform.iOS,
      ),
      home: const MyLoginPage(),
    );
  }
}
