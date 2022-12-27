import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_prac/domain/weather.dart';
//packages
import 'package:flutter_riverpod/flutter_riverpod.dart';

final weatherProvider = ChangeNotifierProvider((ref) => WeatherModel());

class WeatherModel extends ChangeNotifier {
  Future<Weather?> weatherData(String location) async {
    final dio = Dio();
    const appId = '8fb3eaf800b4390c87aad0e76a34bae6';
    final url =
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$appId';
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      try {
        return Weather.fromJson(response.data);
      } catch (e) {
        debugPrint(e.toString());
        throw e;
      }
    }
  }

  dynamic fetchWeather(String location) async {
    return weatherData(location);
  }
}
