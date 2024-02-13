import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);
  Future getNetworkData() async {
    //  String _url =
    //     //'https://api.openweathermap.org/data/3.0/weather?lat={$lattitute&lon=$longitute&exclude={part}&appid=$myApiKey';
    // 'https://samples.openweathermap.org/data/2.5/weather?lat=$lattitute&lon=$longitute&appid=$myApiKey';
    http.Response myHttpResponse = await http.get(Uri.parse(url));
    if (myHttpResponse.statusCode == 200) {
      var responseBody = myHttpResponse.body;
      var decodedData = jsonDecode(responseBody);
      return decodedData;
    } else {
      print('API request failed');
      print(myHttpResponse.statusCode);
    }
  }
}
