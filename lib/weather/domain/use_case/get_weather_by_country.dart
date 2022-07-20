import 'package:cleanarc/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCountry {

  final BaseWeatherRepository repository;

  GetWeatherByCountry(this.repository);
  execute(String cityName) async {
    return await repository.
    getWeatherByCityName(cityName);
  }
}
