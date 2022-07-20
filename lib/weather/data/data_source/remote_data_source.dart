import 'dart:convert';

import 'package:cleanarc/core/utils/constant.dart';
import 'package:cleanarc/weather/data/model/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource{
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}
class GetRemoterDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async{
    try {
      var response = await Dio().get('${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.apiKey}');
      print(response.data);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

}