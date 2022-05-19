import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_course_tharwat_samy/section7/basket_ball_points_counter.dart';
import 'package:new_course_tharwat_samy/section7/cubit/cubit.dart';
import 'package:new_course_tharwat_samy/section8/language_learn_app.dart';
import 'package:new_course_tharwat_samy/session9/cubit/cubit.dart';
import 'package:new_course_tharwat_samy/session9/pages/weather_home_screen.dart';

void main() {
  runApp(  MyApp());
}
class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        //BlocProvider(create: (BuildContext context)=>PointsCubit(),),
        BlocProvider(create: (BuildContext context)=>WeatherCubit(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WeatherPage(),
      ),
    );
  }
}



