import 'package:flutter/material.dart';
import 'package:grad_project/controllers/colors.dart';

class RoomsCard extends StatelessWidget {
  const RoomsCard({
    Key? key,
    required this.width,
    required this.height,
    required this.text1,
    required this.imageURL,
    required this.text2,
  }) : super(key: key);

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
      child: Card(
        color: Colors.white,
        elevation: 1.5,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: width * 0.30,
                  child:
                      Image.asset("assets/images/$imageURL", fit: BoxFit.fill),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(
                          fontSize: 22,
                          color: AppColors.mainBlue,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColors.lightGrey,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
