import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/components/admin_drawer.dart';
import 'package:grad_project/components/button.dart';
import 'package:grad_project/constant.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNewUser extends StatefulWidget {
  const AddNewUser({super.key});
  static String id = 'LoginScreen';

  @override
  State<AddNewUser> createState() => _AddNewUserState();
}

class _AddNewUserState extends State<AddNewUser> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  late String email;
  late String userName;
  late String password;
  late String channelId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminDrawer(),
      appBar: AppBar(
        title: const Text('Add users', style: appBarTextStyle),
      ),
      body: Center(
        child: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: SizedBox(
                    height: 60,
                    child: Image.asset(
                      'assets/images/logo.png',
                      colorBlendMode: BlendMode.overlay,
                    ),
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
                      hintText: 'Enter user email.'),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    //Do something with the user input.
                    userName = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter user name.'),
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
                      hintText: 'Enter user password.'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  onChanged: (value) {
                    //Do something with the user input.
                    channelId = value;
                  },
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: 'Channel Id.'),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                MyButton(
                  text: 'Add user',
                  onPress: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      await _auth.createUserWithEmailAndPassword(
                          email: email, password: password);

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
          ),
        ),
      ),
    );
  }
}
