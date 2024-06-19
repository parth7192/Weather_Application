import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherApiHelper {
  WeatherApiHelper._();

  static WeatherApiHelper apiHelper = WeatherApiHelper._();

  String ApiLink =
      "https://api.openweathermap.org/data/2.5/weather?lat=21.1702&lon=72.8311&appid=f9b533218a2b4bc46d75fab7e56e60c4";

  Future<List> weather() {
    List times = [];
    http.Response response = await http.get(
      uri.parse(ApiLink),
    );
    if (response.statusCode == 200) {
      Map Data = jsonDecode(response.body);
      List time = Data['weather'];
      times = time.map((e) => Weather.fromJson(e)).toList();
    }
    return times;
  }
}
