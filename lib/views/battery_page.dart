import 'package:flutter/material.dart';
import 'package:grad_project/controllers/app_bar.dart';
import 'package:grad_project/controllers/background.dart';
import 'package:grad_project/controllers/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BatteryPage extends StatelessWidget {
  const BatteryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    //temp percent
    var percent = 0.40;

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
              child: MyAppBar(
                text: 'Battery',
              ),
            ),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Battery State',
                      style: TextStyle(
                          color: AppColors.mainBlue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Charging',
                      style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 25,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CircularPercentIndicator(
                      radius: 125,
                      progressColor: AppColors.mainBlue,
                      percent: percent,
                      lineWidth: 25,
                      backgroundColor: Colors.blue.shade100,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text(
                        "${(percent * 100).toInt()}%",
                        style: TextStyle(
                            color: AppColors.lightGrey,
                            fontSize: 65,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
