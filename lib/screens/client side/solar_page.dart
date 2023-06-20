import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/components/list_item.dart';
import 'package:grad_project/screens/client%20side/drawer.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/components/cleaning_system.dart';
import 'package:grad_project/services/networking.dart';
import 'package:weather_icons/weather_icons.dart';

class SolarPage extends StatefulWidget {
  const SolarPage({super.key});

  @override
  State<SolarPage> createState() => _SolarPageState();
}

class _SolarPageState extends State<SolarPage> {
  @override
  void initState() {
    super.initState();
    getSolarData();
  }

  List solarReads = [];
  bool isWaiting = false;
  void getSolarData() async {
    isWaiting = true;
    try {
      Networking networking = Networking();
      var data = await networking.getData();
      isWaiting = false;
      setState(() {
        solarReads = data;
      });
      //print(solarReads);
    } catch (e) {
      //print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    //fields
    final fields = ['Current', 'Voltage', 'Dust', 'Humidity', 'Temperature'];

    //decription of the fileds
    final fieldsText = [
      'Max Current is 5 A',
      'Max voltage is 14 V',
      'Dust affect the performance of the solar panel',
      'High humidity reduce the performance by %20',
      'High temperature increase the solar outcomes',
    ];

    //ICONS
    final icons = [
      Icons.energy_savings_leaf,
      Icons.energy_savings_leaf,
      WeatherIcons.dust,
      WeatherIcons.humidity,
      CupertinoIcons.thermometer,
    ];

    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Solar Panel', style: appBarTextStyle),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(' Solar Reads', style: pageLabelTextStyle),
              const SizedBox(height: 10),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                direction: Axis.horizontal,
                spacing: 8,
                //Get the children from the item list
                children: fields
                    .map((e) => CardItem(
                          icon: icons[fields.indexOf(e)],
                          parValue: isWaiting
                              ? '...'
                              : '${solarReads[fields.indexOf(e)]}',
                          parameter: e,
                          text: fieldsText[fields.indexOf(e)],
                          cardWidth: fields.indexOf(e) == 2
                              ? double.maxFinite
                              : (width / 2) - 20,
                          // cardWidth: fields.indexOf(e) == 2
                          //     ? double.maxFinite
                          //     : (width / 2) - 20,
                        ))
                    .toList(),
              ),
              CleaningSysCard(
                width: width,
                height: height,
                status: isWaiting ? '...' : solarReads[2],
                isWaiting: isWaiting,
              )
            ],
          ),
        ),
      ),
    );
  }
}
