import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/weather_controller.dart';
import '../../helper/weather_helper.dart';
import '../../routes/routes.dart';
import 'components/gridview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    WeatherController mutable = Provider.of<WeatherController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.instance.searchPage);
            },
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            //====================City===================
            Text(
              mutable.weatherData[0]['name'],
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
            // ====================Image===================

            // Image.network((WeatherApi
            //         .instance.weatherList[1]['condition']['icon']
            //         .toString())
            //     .substring(2)),
            Row(
              children: [
                //===================Temperature=================
                Text(
                  "${WeatherApi.instance.weatherList[1]['temp_c']} °C ",
                  style: const TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\n${WeatherApi.instance.weatherList[1]['temp_f']} °F',
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
            myGridView(size: size),
          ],
        ),
      ),
    );
  }
}
