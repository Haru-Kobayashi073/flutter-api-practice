import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';
//jsonのデータがクラスになるファイルを生成

@freezed
abstract class Weather with _$Weather {
  //constは一定という意味
  const factory Weather({
    required int timezone,
    required int id,
    required String name,
    required WeatherMain main,
    //Freezedではパッケージの型が使えない＝FirestoreのTimestampなど。
    //dynamicで代用するが、エラーを吐いてくれない型だから、特殊な場面以外は非推奨

  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

// 詳しい詳細情報
@freezed
class WeatherMain with _$WeatherMain {
  factory WeatherMain({
    required double temp,
    required double feels_like,
    required double temp_min,
    required double temp_max,
    required int pressure,
    required int humidity,
  }) = _WeatherMain;
  factory WeatherMain.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainFromJson(json);
}
