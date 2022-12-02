import 'package:flutter/material.dart';
import 'package:grad_project/controllers/background.dart';
import 'package:grad_project/controllers/cleaning_system.dart';
import 'package:grad_project/controllers/colors.dart';
import 'package:grad_project/controllers/my_card.dart';

class SolarPage extends StatelessWidget {
  const SolarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    //then we will use api to get these values
    final items = <dynamic>[
      ['Current', '10 A'],
      ['Voltage','12 V'],
      ['Temperature','15 C'],
      ['Humidity','10 %'],
      ['Rain','No Rain'],
      ['Dust','Dusty']
    ];

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
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
              ),
              height:height * 0.75,
              width: width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        direction: Axis.horizontal,
                        spacing: 8,
                        //Get the children from the item list
                        children: items.map((e) => MyCard(width: width * 0.45, height: height*0.20, parameter: e[0].toString(), value: e[1].toString())).toList()
                    ),
                    CleaningSysCard(width: width, height: height)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}




