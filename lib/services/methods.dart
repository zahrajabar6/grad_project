import 'package:flutter/material.dart';
import 'package:grad_project/screens/client%20side/rooms/bedroom_two.dart';
import 'package:grad_project/screens/client%20side/rooms/kitchen.dart';
import 'package:grad_project/screens/client%20side/rooms/livingroom.dart';

import '../screens/client side/rooms/bedroom.dart';

class Methodes {
  static double getPercent(double voltage) {
    var percent = 0.0;
    if (voltage <= 11.63) {
      percent = 0.0;
    } else if (voltage <= 11.70) {
      percent = 0.10;
    } else if (voltage <= 11.81) {
      percent = 0.20;
    } else if (voltage <= 11.96) {
      percent = 0.30;
    } else if (voltage <= 12.11) {
      percent = 0.40;
    } else if (voltage <= 12.23) {
      percent = 0.50;
    } else if (voltage <= 12.41) {
      percent = 0.60;
    } else if (voltage <= 12.51) {
      percent = 0.70;
    } else if (voltage <= 12.65) {
      percent = 0.80;
    } else if (voltage <= 12.78) {
      percent = 0.90;
    } else if (voltage <= 12.89) {
      percent = 1.0;
    }
    return percent;
  }

  static void routeRoom(context, String title) {
    if (title == 'Living Room') {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LivingRoomPage(roomTitle: title)));
    } else if (title == 'Main bedroom') {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BedroomPage(roomTitle: title)));
    } else if (title == 'Children bedroom') {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BedroomTwoPage(roomTitle: title)));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => KitchenPage(roomTitle: title)));
    }
  }

  static void postApiRequest(String roomTitle, String deviceName) {
    if (roomTitle == 'Main bedroom') {
    } else if (roomTitle == 'Children bedroom') {}
  }
}
