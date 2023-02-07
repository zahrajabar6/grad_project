import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/controllers/my_card.dart';
import 'package:grad_project/controllers/popup_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    //rooms
    final items = <dynamic>[
      ['Living Room', 'livingroom.jpg', '4 Devices'],
      ['Bedroom', 'bedroom.jpg', '4 Devices'],
      ['Kitchen', 'kitchen2.jpg', '4 Devices'],
      ['Bathroom', 'bathroom.jpg', '4 Devices']
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 26),
        ),
        leading: const PopUpMenu(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(' Rooms', style: pageLabelTextStyle),
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
                          imageURL: e[1],
                          text2: e[2],
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
