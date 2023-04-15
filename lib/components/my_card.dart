import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/screens/client%20side/room_page.dart';

class RoomsCard extends StatelessWidget {
  const RoomsCard({
    super.key,
    required this.width,
    required this.height,
    required this.text1,
    required this.imageURL,
    required this.text2,
    required this.isPressable,
  });
  final bool isPressable;
  final double width;
  final double height;
  final String text1;
  final String imageURL;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: isPressable
            ? () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RoomPage(roomTitle: text1)));
              }
            : () {},
        child: Card(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: width * 0.30,
                    child: Image.asset("assets/images/$imageURL",
                        fit: BoxFit.fill),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text1,
                        style: cardBigTitleTextStyle,
                      ),
                      SizedBox(
                        height: height * 0.08,
                      ),
                      Text(
                        text2,
                        style: cardTextTextStyle,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
