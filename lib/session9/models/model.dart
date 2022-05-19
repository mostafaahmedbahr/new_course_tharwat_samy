import 'package:flutter/cupertino.dart';

class WeatherModel{
   String weatherStateName;
   String date;
   double maxTemp;
   double minTemp;
   double temp;

  WeatherModel({
 @required this.weatherStateName,
 @required this.date,
 @required this.maxTemp,
 @required this.minTemp,
 @required this.temp});

  //named constructor ..... then to factory constructor

factory WeatherModel.fromJson(Map<String ,dynamic> data ){
  return WeatherModel(
    weatherStateName: data['weather_state_name'],
    date: data['applicable_date'],
    maxTemp: data['max_temp'],
    minTemp: data['min_temp'],
    temp: data['the_temp'],
  );
}
}