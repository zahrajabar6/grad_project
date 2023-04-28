import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/components/list_item.dart';
import 'package:grad_project/screens/client%20side/drawer.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/components/cleaning_system.dart';
import 'package:weather_icons/weather_icons.dart';

class SolarPage extends StatelessWidget {
  const SolarPage({super.key});

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    //then we will use api to get these values
    final items = <dynamic>[
      ['Current', '3 A', Icons.energy_savings_leaf, 'Max Current is 4 A'],
      ['Voltage', '12 V', Icons.energy_savings_leaf, 'Max voltage is 20 V'],
      [
        'Dust',
        'Dusty',
        WeatherIcons.dust,
        'Dust affect the performance of the solar panel'
      ],
      [
        'Humidity',
        '10 %',
        WeatherIcons.humidity,
        'High humidity reduce the performance by %20'
      ],
      [
        'Temperature',
        '15 C',
        CupertinoIcons.thermometer,
        'High temperature increase the solar outcomes'
      ],
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
                children: items
                    .map((e) => CardItem(
                          icon: e[2],
                          parValue: e[1],
                          parameter: e[0],
                          text: e[3],
                          cardWidth: items.indexOf(e) == 2
                              ? double.maxFinite
                              : (width / 2) - 20,
                        ))
                    .toList(),
              ),
              CleaningSysCard(width: width, height: height)
            ],
          ),
        ),
      ),
    );
  }
}
