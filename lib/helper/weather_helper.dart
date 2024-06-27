import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

import '../globals.dart';

class WeatherApi {
  WeatherApi._();
  static WeatherApi instance = WeatherApi._();

  Logger logger = Logger();

  List weatherList = [];

  Future<List> getWeather() async {
    String api =
        "http://api.weatherapi.com/v1/current.json?key=65578899c53c48b999f121435240206&q=${Global.instance.city2}";
    http.Response response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body)["location"];
      Map data2 = jsonDecode(response.body)["current"];
      weatherList.add(data);
      weatherList.add(data2);
    }
    return weatherList;
  }
}
