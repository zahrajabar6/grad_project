// import 'package:flutter/material.dart';
// import 'package:grad_project/components/list_item.dart';
// import 'package:grad_project/constant.dart';

// import 'general_info.dart';

// class LivingRoomPage extends StatefulWidget {
//   const LivingRoomPage({super.key, required this.roomTitle});
//   final String roomTitle;

//   @override
//   State<LivingRoomPage> createState() => _LivingRoomPageState();
// }

// class _LivingRoomPageState extends State<LivingRoomPage> {
//   @override
//   Widget build(BuildContext context) {
//     //rooms
//     final items = <dynamic>[
//       ['Light', Icons.light, true],
//       ['Air', Icons.air, true],
//       ['TV', Icons.tv, true],
//       ['Heater', Icons.heat_pump, true],
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.roomTitle, style: appBarTextStyle),
//       ),
//       body: RoomListView(
//         items: items,
//         roomTitle: widget.roomTitle,
//       ),
//     );
//   }
// }

// class RoomListView extends StatelessWidget {
//   const RoomListView({
//     super.key,
//     required this.items,
//     required this.roomTitle,
//   });

//   final List items;
//   final String roomTitle;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(15),
//       child: ListView(
//         scrollDirection: Axis.vertical,
//         //crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text('Devices', style: pageLabelTextStyle),
//           const SizedBox(height: 10),
//           Wrap(
//             alignment: WrapAlignment.spaceBetween,
//             direction: Axis.horizontal,
//             spacing: 8,
//             //Get the children from the item list
//             children: items
//                 .map((e) => RoomListItem(
//                       deviceName: e[0],
//                       icon: e[1],
//                       roomTitle: roomTitle,
//                     ))
//                 .toList(),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           const Generalinfo()
//         ],
//       ),
//     );
//   }
// }
