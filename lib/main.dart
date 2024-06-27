import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weather_application/controller/weather_controller.dart';
import 'package:weather_application/helper/weather_helper.dart';
import 'package:weather_application/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await WeatherApi.instance.getWeather();

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => WeatherController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
