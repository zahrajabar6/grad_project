import 'package:flutter/material.dart';
import 'package:grad_project/views/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
