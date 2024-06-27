import 'package:flutter/material.dart';
import '../../../helper/weather_helper.dart';

Widget visibilityGrid({required Size size}) => Container(
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
            const Icon(Icons.remove_red_eye),
            const Text(
              "Visibility",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "${WeatherApi.instance.weatherList[1]['vis_km']} Km",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
