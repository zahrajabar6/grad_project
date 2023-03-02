// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/components/background.dart';
import 'package:grad_project/components/button.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/screens/admin%20side/admin_pages.dart';
import 'package:grad_project/screens/client%20side/main_page.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String id = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Stack(
          children: [
            const Background(),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 50),
                      child: Image.asset('assets/images/logo1.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      //Do something with the user input.
                      email = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Enter your Email.'),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    onChanged: (value) {
                      //Do something with the user input.
                      password = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Enter your password.'),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  MyButton(
                    text: 'Log In',
                    onPress: () async {
                      setState(() {
                        showSpinner = true;
                      });
                      try {
                        final signUser = await _auth.signInWithEmailAndPassword(
                            email: email, password: password);
                        if (signUser.user!.email == 'admin@admin.com') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AdminPages()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyPages()),
                          );
                        }

                        setState(() {
                          showSpinner = false;
                        });
                      } catch (e) {
                        //print(e);
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
