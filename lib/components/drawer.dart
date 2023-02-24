import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/screens/chat_screen.dart';
import 'package:grad_project/screens/login_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                color: mainBlue,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),
                  ),
                ),
              )),
          ListTile(
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
            title: const Text("Log Out", style: drawerTextTextStyle),
            onTap: () {
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
