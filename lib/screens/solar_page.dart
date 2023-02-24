import 'package:flutter/material.dart';
import 'package:grad_project/components/drawer.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/components/cleaning_system.dart';
import 'package:grad_project/components/my_card.dart';

import '../components/popup_menu.dart';

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
      drawer: const myDrawer(),
      appBar: AppBar(
        title: const Text('Solar Panel', style: appBarTextStyle),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(' Solar Reads', style: pageLabelTextStyle),
              const SizedBox(height: 10),
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
    );
  }
}
