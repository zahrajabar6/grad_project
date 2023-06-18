import 'package:flutter/material.dart';
import 'package:grad_project/components/list_item.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/screens/client%20side/rooms/general_info.dart';
import 'package:grad_project/services/device_data.dart';
import 'package:grad_project/services/methods.dart';
import 'package:provider/provider.dart';

class BedroomPage extends StatelessWidget {
  const BedroomPage({super.key, required this.roomTitle});
  final String roomTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(roomTitle, style: appBarTextStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(scrollDirection: Axis.vertical, children: [
          const Text('Devices', style: pageLabelTextStyle),
          const SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            direction: Axis.horizontal,
            spacing: 8,
            //Get the children from the item list
            children: Provider.of<DeviceData>(context, listen: true)
                .bedroomItems
                .map((e) => RoomListItem(
                      deviceName: e.deviceName,
                      icon: e.icon,
                      roomTitle: roomTitle,
                      isOn: e.isOn,
                      switchCallback: (newValue) {
                        Provider.of<DeviceData>(context, listen: false)
                            .updateDevice(e);
                        Methodes.postApiRequest(
                          roomTitle,
                          e.deviceName,
                          e.isOn ? 2 : 3,
                        );
                      },
                    ))
                .toList(),
          ),
          const SizedBox(
            height: 10,
          ),
          const Generalinfo()
        ]),
      ),
    );
  }
}
