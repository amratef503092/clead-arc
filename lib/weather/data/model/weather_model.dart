import 'package:cleanarc/weather/domain/entities/weather_entities.dart';
import 'package:flutter/foundation.dart';

class WeatherModel extends WeatherEntities{
  WeatherModel(super.id,
      super.descriptions,
      super.cityName,
      super.main,
      super.pressure);

  factory WeatherModel.fromJson(Map<String,dynamic> json)=>WeatherModel(
    json['id'],
    json['weather'][0]['description'],
    json['name'],
    json['weather'][0]['main'],
    json['main']['pressure'],
  );

}