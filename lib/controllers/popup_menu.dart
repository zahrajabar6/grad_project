import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grad_project/views/login_page.dart';

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
        icon: Icon(Icons.menu),
        itemBuilder: (context){
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
        onSelected:(value){
          if(value == 0){
            print("Technical support");
          }else if(value == 1){
            Get.to(const MyLoginPage());
          }
        }
    );

  }
}
