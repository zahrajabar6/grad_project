import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/screens/admin%20side/user_chat_screen.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({super.key, required this.userName});
  final String userName;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => UserChatScreen(
                    userName: userName,
                  )),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 1.5,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: mainBlue,
              child: Icon(
                Icons.person,
                color: Colors.white70,
              ),
            ),
            title: Text(userName),
          ),
        ),
      ),
    );
  }
}
