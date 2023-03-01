import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:grad_project/screens/admin%20side/add_users.dart';
import 'package:grad_project/screens/admin%20side/chats_page.dart';

class AdminPages extends StatefulWidget {
  const AdminPages({super.key});
  static String id = 'mainPages';
  @override
  State<AdminPages> createState() => _AdminPagesState();
}

class _AdminPagesState extends State<AdminPages> {
  //set the solr page as the first page on lunching
  int index = 1;

  //list of pages
  final screens = [const AddNewUser(), const AdminChats()];

  //list of navigation bar content
  final items = <dynamic>[
    ['Add Users', Icons.person],
    ['Chats', Icons.chat_bubble_rounded],
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
                color: lightGrey,
                backgroundColor: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: mainBlue,
                tabMargin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
