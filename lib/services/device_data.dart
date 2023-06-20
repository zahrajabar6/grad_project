import 'package:flutter/material.dart';

import 'device.dart';

class DeviceData extends ChangeNotifier {
  final bedroomItems = <Device>[
    Device(deviceName: 'Light', icon: Icons.light),
    Device(deviceName: 'Light2', icon: Icons.light),
    Device(deviceName: 'Fan', icon: Icons.air),
  ];

  final livingroomItems = <Device>[
    Device(deviceName: 'Light', icon: Icons.light),
    Device(deviceName: 'Fan', icon: Icons.air),
    Device(deviceName: 'TV', icon: Icons.tv),
    Device(deviceName: 'Heater', icon: Icons.heat_pump),
  ];

  final childrenroomItems = <Device>[
    Device(deviceName: 'Light', icon: Icons.light),
    Device(deviceName: 'Fan', icon: Icons.air),
  ];

  final kitchenItems = <Device>[
    Device(deviceName: 'Light', icon: Icons.light),
    Device(deviceName: 'Fan', icon: Icons.air),
    Device(deviceName: 'TV', icon: Icons.tv),
    Device(deviceName: 'Heater', icon: Icons.heat_pump),
  ];

  final CleaningSys cSys = CleaningSys();

  void updateDevice(Device device) {
    device.toggleOn();
    notifyListeners();
  }

  void updateCleaningSys(CleaningSys cleaningSys) {
    cleaningSys.toggleOn();
    notifyListeners();
  }
}
