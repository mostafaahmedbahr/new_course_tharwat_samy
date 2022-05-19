import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_course_tharwat_samy/session9/components/build_widgets.dart';
import 'package:new_course_tharwat_samy/session9/cubit/cubit.dart';
import 'package:new_course_tharwat_samy/session9/cubit/states.dart';
 import 'package:new_course_tharwat_samy/session9/pages/search_screen.dart';
 class WeatherPage extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit,WeatherStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = WeatherCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder:(context)=> SearchScreen(),
                    ),
                  );
                },
                icon: Icon(Icons.search),
              ),
            ],
            title: Text("Weather App"),
          ),
          body: cubit.weatherData == null? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("There is no weather start....",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                Text("Searching Now!!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
              ],
            ),
          ) : buildWeatherScreen(),

        );
      },
    );
  }
}
