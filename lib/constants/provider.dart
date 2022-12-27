import 'package:flutter_api_prac/domain/weather.dart';
import 'package:flutter_api_prac/model/weather_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 都市名の状態を管理するためのProviderを作成
final cityNameProvider = StateProvider((ref) => 'Tokyo');

// Repository(APIの取得)を管理するためのProviderを作成
final weatherProvider = Provider((ref) => WeatherModel());

// APIの取得を非同期で管理するためのProviderを作成
final dataProvider = FutureProvider.autoDispose<Weather>((ref) async {
  // Repositoryのインスタンスを取得
  final weatherModel = ref.read(weatherProvider);
  // 都市名の状態を監視
  final cityName = ref.watch(cityNameProvider.notifier);
  // 都市名を組み込み、APIを取得する
  return await weatherModel.fetchWeather(cityName.state);
});