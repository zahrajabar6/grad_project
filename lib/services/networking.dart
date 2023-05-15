import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking {
  Networking();

  Future<dynamic> getData() async {
    http.Response response = await http.get(Uri.parse(
        'https://api.thingspeak.com/channels/1956914/feeds.json?results=2'));

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData['channel']['field1'];
    } else {
      print(response.statusCode);
    }
  }
}
