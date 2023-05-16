import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking {
  Networking();

  Future<dynamic> getData() async {
    List solarReads = [];
    var url = Uri.parse(
        'https://api.thingspeak.com/channels/1956914/feeds.json?results=2');
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      solarReads = [
        decodedData['feeds'][1]['field4'], //current
        decodedData['feeds'][1]['field5'], //voltage
        decodedData['feeds'][1]['field3'], //dust
        '${decodedData['feeds'][1]['field2']}%', // humidity
        '${decodedData['feeds'][1]['field1']} °C' // temperature
      ];
      print(solarReads);
      return solarReads;
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }

  Future<dynamic> getBatteryVoltage() async {
    String batteryVoltage = '';
    var url = Uri.parse(
        'https://api.thingspeak.com/channels/1956914/feeds.json?results=2');
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      batteryVoltage = decodedData['feeds'][0]['field5'];

      return batteryVoltage;
    } else {
      //print(response.statusCode);
      throw 'Problem with the get request';
    }
  }
}
