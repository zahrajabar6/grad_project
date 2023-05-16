import 'package:flutter/material.dart';
import 'package:grad_project/screens/client%20side/drawer.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/services/methods.dart';
import 'package:grad_project/services/networking.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BatteryPage extends StatefulWidget {
  const BatteryPage({super.key});

  @override
  State<BatteryPage> createState() => _BatteryPageState();
}

class _BatteryPageState extends State<BatteryPage> {
  @override
  void initState() {
    super.initState();
    getBatteryVoltage();
  }

  String batteryVoltage = '';
  bool isWaiting = false;

  void getBatteryVoltage() async {
    isWaiting = true;
    try {
      Networking networking = Networking();
      var data = await networking.getBatteryVoltage();
      isWaiting = false;
      setState(() {
        batteryVoltage = data;
      });
      //print(batteryVoltage);
    } catch (e) {
      //print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    //get percent
    double myDouble = isWaiting ? 0.0 : double.parse(batteryVoltage);
    double percent = Methodes.getPercent(myDouble);

    return Scaffold(
      drawer: const MyDrawer(),
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
              percent: isWaiting ? 0.0 : percent,
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
