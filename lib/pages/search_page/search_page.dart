import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_application/controller/weather_controller.dart';
import 'package:weather_application/globals.dart';
import '../../helper/weather_helper.dart';
import 'components/s_gridview.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    WeatherController mutable = Provider.of<WeatherController>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              onSubmitted: (val) async {
                Global.instance.city2 = val;
                await mutable.getWeatherData2();
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'City ',
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  //====================City===================
                  Text(
                    mutable.weatherData[2]['name'],
                    style: const TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  // ====================Image===================

                  // Image.network((WeatherApi
                  //         .instance.weatherList[3]['condition']['icon']
                  //         .toString())
                  //     .substring(2)),
                  Row(
                    children: [
                      //===================Temperature=================
                      Text(
                        "${WeatherApi.instance.weatherList[3]['temp_c']} °C ",
                        style: const TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\n${WeatherApi.instance.weatherList[3]['temp_f']} °F',
                        style: const TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  // ===================Weather Details===================
                  const Text(
                    "Weather Data",
                    style: TextStyle(fontSize: 20),
                  ),
                  searchGridView(size: size),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
