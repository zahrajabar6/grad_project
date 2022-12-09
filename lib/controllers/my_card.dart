import 'package:flutter/material.dart';
import 'package:grad_project/controllers/colors.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.width,
    required this.height,
    required this.parameter,
    required this.value,
  }) : super(key: key);

  final double width;
  final double height;
  final String parameter;
  final String value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        color: Colors.white,
        elevation: 1.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              parameter,
              style: TextStyle(
                  fontSize: 22,
                  color: AppColors.mainBlue,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: height * 0.08,
            ),
            Text(
              value,
              style: TextStyle(
                  fontSize: 18,
                  color: AppColors.lightGrey,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
