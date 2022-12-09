import 'package:flutter/material.dart';
import 'package:grad_project/controllers/background.dart';

class BatteryPage extends StatelessWidget {
  const BatteryPage({Key? key}) : super(key: key);

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
              child: Text(
                'Battery',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 3),
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
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              height: height * 0.78,
              width: width,
            ),
          )
        ],
      ),
    );
  }
}
