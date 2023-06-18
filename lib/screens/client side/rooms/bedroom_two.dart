// import 'package:flutter/material.dart';
// import 'package:grad_project/components/list_item.dart';
// import 'package:grad_project/constant.dart';

// import 'general_info.dart';

// class BedroomTwoPage extends StatefulWidget {
//   const BedroomTwoPage({super.key, required this.roomTitle});
//   final String roomTitle;

//   @override
//   State<BedroomTwoPage> createState() => _BedroomTwoPageState();
// }

// class _BedroomTwoPageState extends State<BedroomTwoPage> {
//   @override
//   Widget build(BuildContext context) {
//     //rooms
//     final items = <dynamic>[
//       ['Light', Icons.light],
//       ['Fan', Icons.air],
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
