import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/components/list_item.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/screens/admin%20side/admin_drawer.dart';

final _firestore = FirebaseFirestore.instance;

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminDrawer(),
      appBar: AppBar(
        title: const Text('Chats', style: appBarTextStyle),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(' Customers', style: pageLabelTextStyle),
            ),
            SizedBox(height: 10),
            UsersStream()
          ],
        ),
      ),
    );
  }
}

class UsersStream extends StatelessWidget {
  const UsersStream({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('users').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox(
            height: 50,
            width: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.blueAccent,
            ),
          );
        }
        final users = snapshot.data!.docs;
        List<Widget> userWidgets = [];
        for (var user in users) {
          final userName = user.get('name');
          final userEmail = user.get('email');
          final userWidget = ChatListItem(
            userName: userName,
            userEmail: userEmail,
          );

          userWidgets.add(userWidget);
        }
        return Expanded(
          child: ListView(
            children: userWidgets,
          ),
        );
      },
    );
  }
}
