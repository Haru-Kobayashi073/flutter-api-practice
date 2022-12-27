// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  int get timezone => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  WeatherMain get main => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({int timezone, int id, String name, WeatherMain main});

  $WeatherMainCopyWith<$Res> get main;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
    Object? main = null,
  }) {
    return _then(_value.copyWith(
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMain,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherMainCopyWith<$Res> get main {
    return $WeatherMainCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int timezone, int id, String name, WeatherMain main});

  @override
  $WeatherMainCopyWith<$Res> get main;
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$_Weather>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
    Object? main = null,
  }) {
    return _then(_$_Weather(
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMain,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather with DiagnosticableTreeMixin implements _Weather {
  const _$_Weather(
      {required this.timezone,
      required this.id,
      required this.name,
      required this.main});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  final int timezone;
  @override
  final int id;
  @override
  final String name;
  @override
  final WeatherMain main;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Weather(timezone: $timezone, id: $id, name: $name, main: $main)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Weather'))
      ..add(DiagnosticsProperty('timezone', timezone))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('main', main));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.main, main) || other.main == main));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timezone, id, name, main);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final int timezone,
      required final int id,
      required final String name,
      required final WeatherMain main}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  int get timezone;
  @override
  int get id;
  @override
  String get name;
  @override
  WeatherMain get main;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherMain _$WeatherMainFromJson(Map<String, dynamic> json) {
  return _WeatherMain.fromJson(json);
}

/// @nodoc
mixin _$WeatherMain {
  double get temp => throw _privateConstructorUsedError;
  double get feels_like => throw _privateConstructorUsedError;
  double get temp_min => throw _privateConstructorUsedError;
  double get temp_max => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherMainCopyWith<WeatherMain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherMainCopyWith<$Res> {
  factory $WeatherMainCopyWith(
          WeatherMain value, $Res Function(WeatherMain) then) =
      _$WeatherMainCopyWithImpl<$Res, WeatherMain>;
  @useResult
  $Res call(
      {double temp,
      double feels_like,
      double temp_min,
      double temp_max,
      int pressure,
      int humidity});
}

/// @nodoc
class _$WeatherMainCopyWithImpl<$Res, $Val extends WeatherMain>
    implements $WeatherMainCopyWith<$Res> {
  _$WeatherMainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feels_like = null,
    Object? temp_min = null,
    Object? temp_max = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feels_like: null == feels_like
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double,
      temp_min: null == temp_min
          ? _value.temp_min
          : temp_min // ignore: cast_nullable_to_non_nullable
              as double,
      temp_max: null == temp_max
          ? _value.temp_max
          : temp_max // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherMainCopyWith<$Res>
    implements $WeatherMainCopyWith<$Res> {
  factory _$$_WeatherMainCopyWith(
          _$_WeatherMain value, $Res Function(_$_WeatherMain) then) =
      __$$_WeatherMainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temp,
      double feels_like,
      double temp_min,
      double temp_max,
      int pressure,
      int humidity});
}

/// @nodoc
class __$$_WeatherMainCopyWithImpl<$Res>
    extends _$WeatherMainCopyWithImpl<$Res, _$_WeatherMain>
    implements _$$_WeatherMainCopyWith<$Res> {
  __$$_WeatherMainCopyWithImpl(
      _$_WeatherMain _value, $Res Function(_$_WeatherMain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feels_like = null,
    Object? temp_min = null,
    Object? temp_max = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_$_WeatherMain(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feels_like: null == feels_like
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double,
      temp_min: null == temp_min
          ? _value.temp_min
          : temp_min // ignore: cast_nullable_to_non_nullable
              as double,
      temp_max: null == temp_max
          ? _value.temp_max
          : temp_max // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherMain with DiagnosticableTreeMixin implements _WeatherMain {
  _$_WeatherMain(
      {required this.temp,
      required this.feels_like,
      required this.temp_min,
      required this.temp_max,
      required this.pressure,
      required this.humidity});

  factory _$_WeatherMain.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherMainFromJson(json);

  @override
  final double temp;
  @override
  final double feels_like;
  @override
  final double temp_min;
  @override
  final double temp_max;
  @override
  final int pressure;
  @override
  final int humidity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherMain(temp: $temp, feels_like: $feels_like, temp_min: $temp_min, temp_max: $temp_max, pressure: $pressure, humidity: $humidity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherMain'))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('feels_like', feels_like))
      ..add(DiagnosticsProperty('temp_min', temp_min))
      ..add(DiagnosticsProperty('temp_max', temp_max))
      ..add(DiagnosticsProperty('pressure', pressure))
      ..add(DiagnosticsProperty('humidity', humidity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherMain &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feels_like, feels_like) ||
                other.feels_like == feels_like) &&
            (identical(other.temp_min, temp_min) ||
                other.temp_min == temp_min) &&
            (identical(other.temp_max, temp_max) ||
                other.temp_max == temp_max) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, temp, feels_like, temp_min, temp_max, pressure, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherMainCopyWith<_$_WeatherMain> get copyWith =>
      __$$_WeatherMainCopyWithImpl<_$_WeatherMain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherMainToJson(
      this,
    );
  }
}

abstract class _WeatherMain implements WeatherMain {
  factory _WeatherMain(
      {required final double temp,
      required final double feels_like,
      required final double temp_min,
      required final double temp_max,
      required final int pressure,
      required final int humidity}) = _$_WeatherMain;

  factory _WeatherMain.fromJson(Map<String, dynamic> json) =
      _$_WeatherMain.fromJson;

  @override
  double get temp;
  @override
  double get feels_like;
  @override
  double get temp_min;
  @override
  double get temp_max;
  @override
  int get pressure;
  @override
  int get humidity;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherMainCopyWith<_$_WeatherMain> get copyWith =>
      throw _privateConstructorUsedError;
}
