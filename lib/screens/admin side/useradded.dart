import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/components/button.dart';
import 'package:grad_project/screens/admin%20side/add_users.dart';

class AddedDone extends StatefulWidget {
  const AddedDone({super.key});

  @override
  State<AddedDone> createState() => _AddedDoneState();
}

class _AddedDoneState extends State<AddedDone> {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyButton(
            text: 'Add Another',
            onPress: () {
              _auth.signOut();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddNewUser()),
              );
            }),
      ),
    );
  }
}
