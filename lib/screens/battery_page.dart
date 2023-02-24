import 'package:flutter/material.dart';
import 'package:grad_project/components/drawer.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/components/popup_menu.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BatteryPage extends StatelessWidget {
  const BatteryPage({super.key});

  @override
  Widget build(BuildContext context) {
    //temp percent
    var percent = 0.40;

    return Scaffold(
      drawer: const myDrawer(),
      appBar: AppBar(
        title: const Text('Battery', style: appBarTextStyle),
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Battery State', style: batteryLabelTextStyle),
            const SizedBox(height: 10),
            const Text('Charging', style: batteryStateTextStyle),
            const SizedBox(height: 25),
            CircularPercentIndicator(
              animation: true,
              animationDuration: 1000,
              radius: 125,
              progressColor: mainBlue,
              percent: percent,
              lineWidth: 25,
              backgroundColor: Colors.blue.shade50,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text(
                "${(percent * 100).toInt()}%",
                style: batteryPercentTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
