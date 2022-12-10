import 'package:flutter/material.dart';
import 'package:grad_project/controllers/app_bar.dart';
import 'package:grad_project/controllers/background.dart';
import 'package:grad_project/controllers/colors.dart';
import 'package:grad_project/controllers/rooms_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    //rooms
    final items = <dynamic>[
      ['Living Room', 'livingroom.jpg', '4'],
      ['Bedroom', 'bedroom.jpg', '4'],
      ['Kitchen', 'kitchen2.jpg', '4'],
      ['Bathroom', 'bathroom.jpg', '4']
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
                alignment: Alignment.topCenter, child: MyAppBar(text: 'Home')),
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
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Rooms',
                        style:
                            TextStyle(color: AppColors.mainBlue, fontSize: 24),
                      ),
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
                                    roomName: e[0],
                                    imageURL: e[1],
                                    devicesNO: e[2],
                                  ))
                              .toList()),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
