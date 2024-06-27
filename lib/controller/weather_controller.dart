import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:weather_application/helper/weather_helper.dart';

class WeatherController extends ChangeNotifier {
  List weatherData = [];
  Logger logger = Logger();

  WeatherController() {
    getWeatherData();
  }

  Future<void> getWeatherData() async {
    weatherData = await WeatherApi.instance.getWeather();
    notifyListeners();
  }

  Future<void> getWeatherData2() async {
    weatherData.insertAll(2, await WeatherApi.instance.getWeather());
    notifyListeners();
  }
}
