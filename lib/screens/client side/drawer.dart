import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/screens/client%20side/about_us.dart';
import 'package:grad_project/screens/client%20side/chat_screen.dart';
import 'package:grad_project/screens/login_screen.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    super.key,
  });

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final _auth = FirebaseAuth.instance;
  bool value = false;
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
              ),
            ),
          )),
          ListTile(
            leading: Switch.adaptive(
                activeColor: mainBlue,
                value: value,
                inactiveTrackColor: secondaryBlue,
                onChanged: (value) {
                  setState(() {
                    this.value = value;
                  });
                  Navigator.pop(context);
                }),
            title: const Text('Dark Mode', style: drawerTextTextStyle),
          ),
          ListTile(
            leading: const Icon(
              CupertinoIcons.chat_bubble_2_fill,
            ),
            title: const Text("Technical Support", style: drawerTextTextStyle),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.question_circle),
            title: const Text("About Us", style: drawerTextTextStyle),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUs()),
              );
            },
          ),
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
