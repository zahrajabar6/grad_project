import 'package:flutter/material.dart';
import 'package:grad_project/controllers/colors.dart';
import 'package:grad_project/controllers/popup_menu.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BatteryPage extends StatelessWidget {
  const BatteryPage({super.key});

  @override
  Widget build(BuildContext context) {
    //temp percent
    var percent = 0.40;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Battery',
          style: TextStyle(fontSize: 26),
        ),
        leading: const PopUpMenu(),
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Battery State',
              style: TextStyle(
                  color: AppColors.mainBlue,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
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
              animation: true,
              animationDuration: 1000,
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
        ),
      ),
    );
  }
}
