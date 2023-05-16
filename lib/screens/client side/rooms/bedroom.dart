import 'package:flutter/material.dart';
import 'package:grad_project/components/list_item.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/screens/client%20side/rooms/general_info.dart';

class BedroomPage extends StatefulWidget {
  const BedroomPage({super.key, required this.roomTitle});
  final String roomTitle;

  @override
  State<BedroomPage> createState() => _BedroomPageState();
}

class _BedroomPageState extends State<BedroomPage> {
  @override
  Widget build(BuildContext context) {
    //rooms
    final items = <dynamic>[
      ['Light', Icons.light],
      ['Light2', Icons.light],
      ['Air', Icons.air],
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.roomTitle, style: appBarTextStyle),
      ),
      body: RoomListView(items: items),
    );
  }
}

class RoomListView extends StatelessWidget {
  const RoomListView({
    super.key,
    required this.items,
  });

  final List items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(scrollDirection: Axis.vertical, children: [
        const Text('Devices', style: pageLabelTextStyle),
        const SizedBox(height: 10),
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          direction: Axis.horizontal,
          spacing: 8,
          //Get the children from the item list
          children: items
              .map((e) => RoomListItem(
                    deviceName: e[0],
                    icon: e[1],
                  ))
              .toList(),
        ),
        const SizedBox(
          height: 10,
        ),
        const Generalinfo()
      ]),
    );
  }
}
