import 'package:cleanarc/weather/domain/entities/weather_entities.dart';

abstract class BaseWeatherRepository{
   Future<WeatherEntities> getWeatherByCityName(String cityName);
}