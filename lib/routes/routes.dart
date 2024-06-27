import 'package:flutter/material.dart';
import 'package:weather_application/pages/homepage/home_page.dart';
import 'package:weather_application/pages/search_page/search_page.dart';

class Routes {
  Routes._();
  static final Routes instance = Routes._();

  String homepage = '/';
  String searchPage = 'SearchPage';

  Map<String, Widget Function(BuildContext)> route = {
    '/': (context) => const HomePage(),
    'searchPage': (context) => const SearchPage(),
  };
}
