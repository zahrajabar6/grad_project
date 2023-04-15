import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/components/button.dart';
import 'package:grad_project/screens/admin%20side/admin_pages.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/added.png"),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              MyButton(
                  text: 'Add Another',
                  onPress: () {
                    _auth.signOut();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdminPages()),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
