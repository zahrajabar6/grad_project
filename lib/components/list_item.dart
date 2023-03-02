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

// class RoomListItem extends StatefulWidget {
//   const RoomListItem(
//       {super.key,
//       required this.icon,
//       required this.deviceName,
//       required this.onChange});

//   final IconData icon;
//   final String deviceName;
//   final void Function(bool)? onChange;

//   @override
//   State<RoomListItem> createState() => _RoomListItemState();
// }

// class _RoomListItemState extends State<RoomListItem> {
//   bool value = false;
//   @override
//   Widget build(BuildContext context) {
//     bool isEnabled = true;
//     return Card(
//       color: Colors.white,
//       elevation: 1.5,
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: ListTile(
//           leading: CircleAvatar(
//             backgroundColor: mainBlue,
//             child: Icon(
//               widget.icon,
//               color: Colors.white70,
//             ),
//           ),
//           title: Text(
//             widget.deviceName,
//             style: TextStyle(
//                 fontWeight: FontWeight.normal,
//                 color: Colors.grey.shade700,
//                 fontSize: 18),
//           ),
//           trailing: Switch.adaptive(
//             activeColor: mainBlue,
//             value: isEnabled,
//             // onChanged: (value) {
//             //   setState(() {
//             //     isEnabled = value;
//             //   });
//             // }
//             onChanged: widget.onChange,
//           ),
//         ),
//       ),
//     );
//   }
// }

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
    return SizedBox(
      child: Card(
        color: Colors.white,
        elevation: 1.5,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: mainBlue,
                child: Icon(
                  widget.icon,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Text(
                  widget.deviceName,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade700,
                      fontSize: 18),
                ),
              ),
              Switch.adaptive(
                  activeColor: mainBlue,
                  value: value,
                  onChanged: (value) {
                    setState(() {
                      this.value = value;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
