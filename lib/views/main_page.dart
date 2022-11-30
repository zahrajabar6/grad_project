import 'package:flutter/material.dart';
import 'package:grad_project/controllers/colors.dart';
import 'package:grad_project/views/battery_page.dart';
import 'package:grad_project/views/home_page.dart';
import 'package:grad_project/views/solar_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyPages extends StatefulWidget {
  const MyPages({Key? key}) : super(key: key);

  @override
  State<MyPages> createState() => _MyPagesState();
}

class _MyPagesState extends State<MyPages> {
  int index=1;
 

  final screens=[
    const HomePage(),
    const SolarPage(),
    const BatteryPage()
  ];

  final items = <dynamic>[
    ['Home', Icons.home_rounded],
    ['Solar',Icons.solar_power_rounded],
    ['Battery',Icons.battery_full_rounded]
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            gap: 8,
            color: lightGrey ,
            activeColor: Colors.white,
            tabBackgroundColor: mainBlue,
            padding: EdgeInsets.all(10),
            selectedIndex: index,
            onTabChange: (index){
              setState(() {
                this.index=index;
              });
            },
            tabs: items.map((e) => GButton(icon: e[1], text: e[0].toString(),)).toList()
            ),
        ),

        body: screens[index]
      ),
    );
  }
}

