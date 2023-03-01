import 'package:flutter/material.dart';
import 'package:grad_project/components/admin_drawer.dart';
import 'package:grad_project/components/list_item.dart';
import 'package:grad_project/constant.dart';

class AdminChats extends StatelessWidget {
  const AdminChats({super.key});

  @override
  Widget build(BuildContext context) {
    //then we will use firebase to get user name
    final userNames = <dynamic>[
      'Zahraa Jabar',
      'Fatima Salah',
      'Ali Omar',
      'Hiba Kurdi'
    ];

    return Scaffold(
      drawer: const AdminDrawer(),
      appBar: AppBar(
        title: const Text('Chats', style: appBarTextStyle),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(' Customers', style: pageLabelTextStyle),
              ),
              const SizedBox(height: 10),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                direction: Axis.horizontal,
                spacing: 8,
                //Get the children from the item list
                children: userNames
                    .map((e) => ChatListItem(
                          userName: e,
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
