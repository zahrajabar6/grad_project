import 'package:flutter/material.dart';
import 'package:grad_project/controllers/app_bar.dart';
import 'package:grad_project/controllers/background.dart';
import 'package:grad_project/controllers/cleaning_system.dart';
import 'package:grad_project/controllers/my_card.dart';

class SolarPage extends StatelessWidget {
  const SolarPage({super.key});

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    //then we will use api to get these values
    final items = <dynamic>[
      ['Current', '10 A', 'current.jpg'],
      ['Voltage', '12 V', 'voltage.jpg'],
      ['Temperature', '15 C', 'temp.jpg'],
      ['Humidity', '10 %', 'humidity2.jpg'],
      ['Dust', 'Dusty', 'dust.JPG']
    ];

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
                child: MyAppBar(text: 'Solar Panel')),
          ),

          //the white container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(15),
                  //     topRight: Radius.circular(15)),
              ),
              height: height * 0.78,
              width: width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      direction: Axis.horizontal,
                      spacing: 8,
                      //Get the children from the item list
                      children: items
                          .map((e) => RoomsCard(
                                width: width,
                                height: height * 0.20,
                                text1: e[0],
                                imageURL: e[2],
                                text2: e[1],
                              ))
                          .toList(),
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

