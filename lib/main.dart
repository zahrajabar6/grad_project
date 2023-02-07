import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grad_project/controllers/colors.dart';
import 'package:grad_project/views/login_page.dart';
import 'package:grad_project/views/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Lato",
          primarySwatch: Colors.blue,
          platform: TargetPlatform.iOS,
          appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: AppColors.mainBlue,
            elevation: 2,
          )),
      home: isLogin ? const MyPages() : const MyLoginPage(),
    );
  }
}
