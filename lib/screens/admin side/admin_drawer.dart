import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/screens/login_screen.dart';

class AdminDrawer extends StatefulWidget {
  const AdminDrawer({super.key});

  @override
  State<AdminDrawer> createState() => _AdminDrawerState();
}

class _AdminDrawerState extends State<AdminDrawer> {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
              child: CircleAvatar(
            backgroundColor: mainBlue,
            radius: 20,
            child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  CupertinoIcons.person_fill,
                  size: 70,
                  color: Colors.white70,
                )),
          )),
          ListTile(
            leading: const Icon(CupertinoIcons.escape),
            title: const Text("Log Out", style: drawerTextTextStyle),
            onTap: () {
              _auth.signOut();
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
