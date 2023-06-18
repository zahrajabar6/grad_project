import 'package:flutter/material.dart';

import 'device.dart';

class DeviceData extends ChangeNotifier {
  final bedroomItems = <Device>[
    Device(deviceName: 'Light', icon: Icons.light),
    Device(deviceName: 'Light2', icon: Icons.light),
    Device(deviceName: 'Fan', icon: Icons.air),
  ];

  void updateDevice(Device device) {
    device.toggleOn();
    notifyListeners();
  }
}
