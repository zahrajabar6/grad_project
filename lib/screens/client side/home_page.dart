import 'package:flutter/material.dart';
import 'package:grad_project/screens/client%20side/drawer.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/components/my_card.dart';
import 'package:grad_project/services/methods.dart';

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
      ['Main bedroom', 'bedroom.jpg', '3 Devices'],
      ['Children bedroom', 'childroom.jpg', '2 Devices'],
      ['Kitchen', 'kitchen2.jpg', '4 Devices'],
    ];

    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Home', style: appBarTextStyle),
        // leading: const PopUpMenu(),
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
                          onPress: () {
                            Methodes.routeRoom(context, e[0]);
                          },
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
