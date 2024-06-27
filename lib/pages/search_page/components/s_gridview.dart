import 'package:flutter/cupertino.dart';
import 'package:weather_application/pages/search_page/components/s_air_presure.dart';
import 'package:weather_application/pages/search_page/components/s_feels_like.dart';
import 'package:weather_application/pages/search_page/components/s_humidty.dart';
import 'package:weather_application/pages/search_page/components/s_uv.dart';
import 'package:weather_application/pages/search_page/components/s_visibillty.dart';
import 'package:weather_application/pages/search_page/components/s_wind.dart';
import 'package:weather_application/pages/search_page/components/s_wind_direction.dart';

Widget searchGridView({required Size size}) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            searchFeelsLikeGrid(size: size),
            searchwindGrid(size: size),
          ],
        ),
        SizedBox(height: size.height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            searchHumidtyGrid(size: size),
            searchUvGrid(size: size),
          ],
        ),
        SizedBox(height: size.height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            searchVisibilityGrid(size: size),
            searchAirPresureGrid(size: size),
          ],
        ),
        SizedBox(height: size.height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            searchWindDirectionGrid(size: size),
            searchWindDirectionGrid(size: size),
          ],
        ),
      ],
    );
