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
      ['Current', '10 A', 'current.jpg', Icons.energy_savings_leaf],
      ['Voltage', '12 V', 'voltage.jpg', Icons.energy_savings_leaf],
      ['Dust', 'Dusty', 'dust.JPG', WeatherIcons.dust],
      ['Humidity', '10 %', 'humidity2.jpg', WeatherIcons.humidity],
      ['Temperature', '15 C', 'temp.jpg', CupertinoIcons.thermometer],
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
                          icon: e[3],
                          parValue: e[1],
                          imgURL: e[2],
                          parameter: e[0],
                          text: e[2],
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
