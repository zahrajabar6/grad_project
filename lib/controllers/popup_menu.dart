import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grad_project/views/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({super.key});

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        elevation: 2,
        icon: const Icon(Icons.menu),
        itemBuilder: (context) {
          return const [
            PopupMenuItem<int>(
              value: 0,
              child: Text("Technical Support"),
            ),
            PopupMenuItem<int>(
              value: 1,
              child: Text("Log Out"),
            ),
          ];
        },
        onSelected: (value) async {
          if (value == 1) {
            final prefs = await SharedPreferences.getInstance();
            prefs.setBool('isLogin', false);
            Get.to(const MyLoginPage());
          }
        });
  }
}
