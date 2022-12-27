import 'package:flutter/material.dart';
import 'package:flutter_api_prac/view/weather/weather_result_page.dart';

void toWeatherResultPage({required BuildContext context}) => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const WeatherResultPage()));
