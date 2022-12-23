import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grad_project/controllers/app_bar.dart';
import 'package:grad_project/controllers/background.dart';
import 'package:grad_project/controllers/button.dart';
import 'package:grad_project/views/login_page.dart';

class BatteryPage extends StatelessWidget {
  const BatteryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      body: Stack(
        children: [
          //set up the background image
          const Background(),

          //the app bar
          const Padding(
            padding: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: MyAppBar(
                text: 'Battery',
              ),
            ),
          ),

          //the white container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              height: height * 0.78,
              width: width,
              child: MyButton(
                  text: 'temp logout',
                  onPress: () {
                    Get.to(const MyLoginPage());
                  }),
            ),
          )
        ],
      ),
    );
  }
}
