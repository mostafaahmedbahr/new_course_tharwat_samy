import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_course_tharwat_samy/session9/models/model.dart';
class WeatherServices{

//   https://www.metaweather.com/api/location/search/?query=cairo

  String baseUrl="https://www.metaweather.com";
  Future<int> getCityId({ String cityName}) async
  {
    Uri url = Uri.parse('$baseUrl/api/location/search/?query=$cityName');
    http.Response response = await http.get(url);
    print(response.body);
    List<dynamic> data = jsonDecode(response.body);
    var cityId = data[0]['woeid'];
    print(cityId);
    return cityId;
  }
  Future<WeatherModel> getWeather({ String cityName}) async
  {
    int id =await getCityId(cityName: cityName);
    Uri url = Uri.parse('$baseUrl/api/location/$id');
    http.Response response = await http.get(url);
    Map<String,dynamic> jsonData =  jsonDecode(response.body);
    Map<String,dynamic> data = jsonData['consolidated_weather'][0];

    WeatherModel weatherModel = WeatherModel(
        weatherStateName: data['weather_state_name'],
        date: data['applicable_date'],
        maxTemp: data['max_temp'],
        minTemp: data['min_temp'],
        temp: data['the_temp'],
    );
    return weatherModel;

  }
}