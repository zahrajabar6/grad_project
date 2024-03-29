import 'package:flutter/material.dart';
import 'package:grad_project/screens/client%20side/room.dart';
import 'package:grad_project/services/device_data.dart';
import 'package:grad_project/services/networking.dart';
import 'package:provider/provider.dart';

class Methodes {
  static double getPercent(double voltage) {
    var percent = 0.0;
    if (voltage <= 11) {
      percent = 0.0;
    } else if (voltage <= 11.1 && voltage > 11) {
      percent = 0.05;
    } else if (voltage <= 11.70 && voltage > 11.1) {
      percent = 0.10;
    } else if (voltage <= 11.81 && voltage > 11.7) {
      percent = 0.20;
    } else if (voltage <= 11.96 && voltage > 11.81) {
      percent = 0.30;
    } else if (voltage <= 12.11 && voltage > 11.96) {
      percent = 0.40;
    } else if (voltage <= 12.23 && voltage > 12.11) {
      percent = 0.50;
    } else if (voltage <= 12.41 && voltage > 12.23) {
      percent = 0.60;
    } else if (voltage <= 12.51 && voltage > 12.41) {
      percent = 0.70;
    } else if (voltage <= 12.65 && voltage > 12.51) {
      percent = 0.80;
    } else if (voltage <= 12.78 && voltage > 12.65) {
      percent = 0.90;
    } else if (voltage <= 12.89 && voltage > 12.78) {
      percent = 1.0;
    }
    return percent;
  }

  static void routeRoom(context, String title) {
    if (title == 'Living Room') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RoomPage(
            roomTitle: title,
            devices:
                Provider.of<DeviceData>(context, listen: true).livingroomItems,
          ),
        ),
      );
    } else if (title == 'Main bedroom') {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RoomPage(
              roomTitle: title,
              devices:
                  Provider.of<DeviceData>(context, listen: true).bedroomItems,
            ),
          ));
    } else if (title == 'Children bedroom') {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RoomPage(
              roomTitle: title,
              devices: Provider.of<DeviceData>(context, listen: true)
                  .childrenroomItems,
            ),
          ));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RoomPage(
              roomTitle: title,
              devices:
                  Provider.of<DeviceData>(context, listen: true).kitchenItems,
            ),
          ));
    }
  }

  static void postApiRequest(
      String roomTitle, String deviceName, int isON) async {
    String mainURL = 'https://api.thingspeak.com/update?api_key=';
    String key = 'QOFA4SCW6BELFY7I';
    Networking networking = Networking();
    if (roomTitle == 'Main bedroom') {
      if (deviceName == 'Light') {
        networking.postRequest('$mainURL$key&field1=', isON);
      } else if (deviceName == 'Light2') {
        networking.postRequest('$mainURL$key&field2=', isON);
      } else if (deviceName == 'Fan') {
        networking.postRequest('$mainURL$key&field4=', isON);
      }
    } else if (roomTitle == 'Children bedroom') {
      if (deviceName == 'Light') {
        networking.postRequest('$mainURL$key&field3=', isON);
      } else if (deviceName == 'Fan') {
        networking.postRequest('$mainURL$key&field5=', isON);
      }
    } else if (roomTitle == 'Living Room') {
      //ac load
      if (deviceName == 'Light') {
        networking.postRequest('$mainURL$key&field6=', isON);
      } else {
        //other devices
      }
    }
  }

  static void postApiRequestCSys(bool isON) async {
    String mainURL = 'https://api.thingspeak.com/update?api_key=';
    String key = 'QOFA4SCW6BELFY7I';
    Networking networking = Networking();
    if (isON == true) {
      networking.postRequest('$mainURL$key&field7=', 2);
    } else {
      networking.postRequest('$mainURL$key&field7=', 1);
    }
  }
}
