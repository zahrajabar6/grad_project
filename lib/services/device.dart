import 'package:flutter/material.dart';

class Device {
  final String deviceName;
  final IconData icon;
  bool isOn;

  Device({required this.deviceName, required this.icon, this.isOn = false});

  void toggleOn() {
    isOn = !isOn;
  }
}

class CleaningSys {
  bool isOn;
  CleaningSys({this.isOn = false});

  void toggleOn() {
    isOn = !isOn;
  }
}
