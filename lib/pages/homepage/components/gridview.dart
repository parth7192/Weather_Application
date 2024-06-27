import 'package:flutter/material.dart';
import 'package:weather_application/pages/homepage/components/air_presure.dart';
import 'package:weather_application/pages/homepage/components/feels_like.dart';
import 'package:weather_application/pages/homepage/components/humidty.dart';
import 'package:weather_application/pages/homepage/components/uv.dart';
import 'package:weather_application/pages/homepage/components/visibillty.dart';
import 'package:weather_application/pages/homepage/components/wind.dart';
import 'package:weather_application/pages/homepage/components/wind_direction.dart';

Widget myGridView({required Size size}) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            feelsLikeGrid(size: size),
            windGrid(size: size),
          ],
        ),
        SizedBox(height: size.height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            humidtyGrid(size: size),
            uvGrid(size: size),
          ],
        ),
        SizedBox(height: size.height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            visibilityGrid(size: size),
            airPresureGrid(size: size),
          ],
        ),
        SizedBox(height: size.height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            windDirectionGrid(size: size),
            windGrid(size: size),
          ],
        ),
      ],
    );
