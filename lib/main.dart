import 'package:cleanarc/weather/data/data_source/remote_data_source.dart';
import 'package:cleanarc/weather/data/repository/weather_repository.dart';
import 'package:cleanarc/weather/domain/entities/weather_entities.dart';
import 'package:cleanarc/weather/domain/repository/base_weather_repository.dart';
import 'package:cleanarc/weather/domain/use_case/get_weather_by_country.dart';
import 'package:flutter/material.dart';

void main() async{

  BaseRemoteDataSource baseRemoteDataSource = GetRemoterDataSource();
  BaseWeatherRepository baseWeatherRepository = WeatherRepository
    (baseRemoteDataSource);
  WeatherEntities weatherEntities =
  await GetWeatherByCountry(baseWeatherRepository).execute('Egypt');
  print(weatherEntities);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
