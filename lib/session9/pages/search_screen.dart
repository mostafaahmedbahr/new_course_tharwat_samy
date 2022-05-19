import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_course_tharwat_samy/session9/cubit/cubit.dart';
import 'package:new_course_tharwat_samy/session9/cubit/states.dart';
import 'package:new_course_tharwat_samy/session9/models/model.dart';
import 'package:new_course_tharwat_samy/session9/services/weather_services.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  //SearchScreen(BuildContext context);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = WeatherCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text("Search a City"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              onFieldSubmitted: (value) async {
                cubit.cityName = value;
                WeatherServices service = WeatherServices();
                WeatherModel weather =
                    await service.getWeather(cityName: "cairo");
                cubit.weatherData = weather;
                Navigator.pop(context);
              },
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                label: Text("Search"),
                border: OutlineInputBorder(),
                hintText: "Enter a City",
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
        );
      },
    );
  }
}
