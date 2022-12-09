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
  //set the solr page as the first page on lunching
  int index = 1;

  //list of pages
  final screens = [const HomePage(), const SolarPage(), const BatteryPage()];

  //list of navigation bar content
  final items = <dynamic>[
    ['Home', Icons.home_rounded],
    ['Solar', Icons.solar_power_rounded],
    ['Battery', Icons.battery_full_rounded]
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.10),
                  blurRadius: 2,
                ),
              ],
            ),
            child: GNav(
                gap: 8,
                color: AppColors.lightGrey,
                backgroundColor: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: AppColors.mainBlue,
                tabMargin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(10),
                selectedIndex: index,
                onTabChange: (index) {
                  setState(() {
                    //change the page on tab
                    this.index = index;
                  });
                },
                tabs: items
                    .map((e) => GButton(
                          icon: e[1],
                          text: e[0].toString(),
                        ))
                    .toList()),
          ),

          //get the content of the selected page
          body: screens[index]),
    );
  }
}
