import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_application/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: CupertinoColors.systemBrown,
        // ==================Scaffold Theme=================
        scaffoldBackgroundColor: CupertinoColors.systemBrown,
        // ==================Appbar Theme=================
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.brown,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        ),
        // =================IconButton Theme=================
        // iconButtonTheme: IconButtonThemeData(
        //     style: IconButton.styleFrom(foregroundColor: Colors.white)),
        // iconTheme: const IconThemeData(color: Colors.white),
      ),
      routes: Routes.instance.route,
    );
  }
}
