import 'package:flutter/material.dart';

import '../../../helper/weather_helper.dart';

Widget searchFeelsLikeGrid({required Size size}) => Container(
      height: size.height * 0.18,
      width: size.width * 0.43,
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(0.15),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.thermostat_rounded),
            const Text(
              "Feels Like",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "${WeatherApi.instance.weatherList[3]['feelslike_c']} \u2103",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
