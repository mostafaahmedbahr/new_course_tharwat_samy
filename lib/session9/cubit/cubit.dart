import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_course_tharwat_samy/session9/cubit/states.dart';
import 'package:new_course_tharwat_samy/session9/models/model.dart';
import 'package:new_course_tharwat_samy/session9/pages/search_screen.dart';
import 'package:new_course_tharwat_samy/session9/services/weather_services.dart';

class WeatherCubit extends Cubit<WeatherStates>{

  WeatherCubit():super(WeatherInitialState());

  static WeatherCubit get(context)=>BlocProvider.of(context);


  WeatherModel weatherData;
  BuildContext context;
   String cityName;


//   Future<String> onFieldSubmitted(value,BuildContext context) async{
//   cityName = value;
//   WeatherServices service = WeatherServices();
//   WeatherModel weather= await service.getWeather(cityName: "cairo");
//    weatherData = weather;
//   Navigator.pop(context);
//   emit(OnFieldSubmitChangeState());
// }


  void onSubmitChange()
  {


  }
}



