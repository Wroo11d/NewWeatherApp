import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  //final Uri url;
  // http.get(Uri.parse(url),
  final String url;

  Future getData() async {
    // 'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey',);
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
      //return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
