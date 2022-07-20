import 'package:cleanarc/weather/data/data_source/remote_data_source.dart';
import 'package:cleanarc/weather/domain/entities/weather_entities.dart';
import 'package:cleanarc/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{
  final BaseRemoteDataSource remoterDataSource;
  WeatherRepository(this.remoterDataSource);
  @override
  Future<WeatherEntities> getWeatherByCityName(String cityName) async{
    return (await remoterDataSource.getWeatherByCountryName(cityName))!;
  }

}