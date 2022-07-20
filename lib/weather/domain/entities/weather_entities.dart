class WeatherEntities{
  final int id;
  final String cityName;
  final String main;
  final String descriptions;
  final int pressure;

  WeatherEntities(
    this.id,
    this.descriptions,
    this.cityName,
    this.main,
    this.pressure
);
}