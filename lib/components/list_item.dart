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

class RoomListItem extends StatelessWidget {
  const RoomListItem({
    super.key,
    required this.icon,
    required this.deviceName,
    required this.roomTitle,
    required this.isOn,
    required this.switchCallback,
  });
  final IconData icon;
  final String deviceName;
  final String roomTitle;
  final bool isOn;
  final void Function(bool?)? switchCallback;

  //bool value = false;

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
                      deviceName,
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 18),
                    ),
                  ),
                  Icon(
                    icon,
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
                        //value ? 'ON' : 'OFF',
                        isOn ? 'ON' : 'OFF',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 14),
                      ),
                    ),
                    SwitchWidget(
                      deviceName: deviceName,
                      isOn: isOn,
                      roomTitle: roomTitle,
                      switchCallback: switchCallback,
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({
    super.key,
    required this.roomTitle,
    required this.deviceName,
    required this.isOn,
    this.switchCallback,
  });

  final String roomTitle;
  final String deviceName;
  final bool isOn;
  final void Function(bool?)? switchCallback;

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      activeColor: mainBlue,
      inactiveTrackColor: secondaryBlue,
      value: isOn,
      onChanged: switchCallback,
    );
  }
}

class CardItem extends StatefulWidget {
  const CardItem(
      {super.key,
      required this.parameter,
      required this.parValue,
      required this.text,
      required this.icon,
      required this.cardWidth});

  final String parameter;
  final IconData icon;
  final String parValue;
  final String text;
  final double cardWidth;

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.cardWidth,
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
                  Icon(
                    widget.icon,
                    color: mainBlue,
                  ),
                ]),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  widget.parValue,
                  style: cardValueTextStyle,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  widget.text,
                  style: cardTextTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            )),
      ),
    );
  }
}
