import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/screens/admin%20side/user_chat_screen.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem(
      {super.key, required this.userName, required this.userEmail});
  final String userName;
  final String userEmail;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => UserChatScreen(
                    userName: userName,
                    userEmail: userEmail,
                  )),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 1.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            horizontalTitleGap: 10,
            leading: CircleAvatar(
              backgroundColor: Colors.grey.shade100,
              child: const Icon(
                CupertinoIcons.person_fill,
                color: mainBlue,
              ),
            ),
            title: Text(
              userName,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.grey.shade700,
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

class RoomListItem extends StatefulWidget {
  const RoomListItem({super.key, required this.icon, required this.deviceName});
  final IconData icon;
  final String deviceName;

  @override
  State<RoomListItem> createState() => _RoomListItemState();
}

class _RoomListItemState extends State<RoomListItem> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;

    var width = size.width;
    return SizedBox(
      width: (width / 2) - 20,
      child: Card(
        color: Colors.white,
        elevation: 6,
        shadowColor: Colors.black12,
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: Wrap(
              children: [
                Row(children: [
                  Expanded(
                    child: Text(
                      widget.deviceName,
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 18),
                    ),
                  ),
                  Icon(
                    widget.icon,
                    color: mainBlue,
                  ),
                ]),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        value ? 'ON' : 'OFF',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 14),
                      ),
                    ),
                    Switch.adaptive(
                        activeColor: mainBlue,
                        inactiveTrackColor: secondaryBlue,
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value;
                          });
                        })
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class CardItem extends StatefulWidget {
  const CardItem(
      {super.key,
      required this.imgURL,
      required this.parameter,
      required this.parValue,
      required this.text,
      required this.icon});
  final String imgURL;
  final String parameter;
  final IconData icon;
  final String parValue;
  final String text;

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;

    var width = size.width;
    return SizedBox(
      width: (width / 2) - 20,
      child: Card(
        color: Colors.white,
        elevation: 6,
        shadowColor: Colors.black12,
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(children: [
                  Expanded(
                    child: Text(
                      widget.parameter,
                      style: cardTitleTextStyle,
                    ),
                  ),
                  // Container(
                  //   width: 35,
                  //   height: 35,
                  //   color: Colors.amber,
                  //   child: Image.asset(
                  //     "assets/images/${widget.imgURL}",
                  //     fit: BoxFit.cover,
                  //   ),
                  // )
                  Icon(
                    widget.icon,
                    color: mainBlue,
                  ),
                ]),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.parValue,
                  style: cardValueTextStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.text,
                  style: cardTextTextStyle,
                ),
              ],
            )),
      ),
    );
  }
}
