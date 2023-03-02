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
      ['Air conditioner', Icons.air, true],
      ['Television', Icons.tv, true],
      ['Heater', Icons.heat_pump, true],
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.roomTitle, style: appBarTextStyle),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(
                  width: double.maxFinite,
                  child: Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Total Power consumption',
                            style: pageLabelTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            '12 kWh | per day',
                            style: cardTextTextStyle.copyWith(
                                fontSize: 20, color: Colors.grey.shade500),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
