import 'package:flutter/material.dart';
import 'package:grad_project/components/list_item.dart';
import 'package:grad_project/constant.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key, required this.roomTitle});
  final String roomTitle;

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    //rooms
    final items = <dynamic>[
      ['Light', Icons.light, true],
      ['Air', Icons.air, true],
      ['TV', Icons.tv, true],
      ['Heater', Icons.heat_pump, true],
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
      child: ListView(
        scrollDirection: Axis.vertical,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          const Text('General Information', style: pageLabelTextStyle),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Card(
              color: Colors.white,
              elevation: 6,
              shadowColor: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const Icon(
                      Icons.energy_savings_leaf,
                      color: mainBlue,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '12 KwH',
                            style: TextStyle(
                                fontSize: 22,
                                color: mainBlue,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Power usage today',
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey.shade500),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
