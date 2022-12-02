import 'package:flutter/material.dart';
import 'package:grad_project/controllers/background.dart';

class SolarPage extends StatelessWidget {
  const SolarPage({Key? key}) : super(key: key);

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
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Welcome!',style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600, letterSpacing: 3),),
                Text('Make the sun work for you.',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal),),
              ],
            ),
          ),

          //the white container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
              ),

              height:height * 0.75,
              width: width,
            ),
          )
        ],
      ),
    );
  }
}


