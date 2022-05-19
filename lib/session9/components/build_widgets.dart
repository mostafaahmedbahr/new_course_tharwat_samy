 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_course_tharwat_samy/session9/cubit/cubit.dart';
import 'package:new_course_tharwat_samy/session9/cubit/states.dart';
import 'package:new_course_tharwat_samy/session9/models/model.dart';
import 'package:new_course_tharwat_samy/session9/models/model.dart';
import 'package:new_course_tharwat_samy/session9/models/model.dart';
 class buildWeatherScreen extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return BlocConsumer<WeatherCubit,WeatherStates>(
       listener: (context,state){},
       builder:(context,state){
         var cubit = WeatherCubit.get(context);
         return Container(
           color: Colors.orange,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Spacer(flex: 3,),
               Text("${cubit.cityName}",
                 style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                 ),),
               Text("Updated ${cubit.weatherData.date}",
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                 ),),
               Spacer(),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Image.asset("assets/images/clear.png"),
                   Text("${cubit.weatherData.temp}",
                     style: TextStyle(
                       fontSize: 30,
                       fontWeight: FontWeight.bold,
                     ),),
                   Column(
                     children: [
                       Text("maxTemp : ${cubit.weatherData.maxTemp}",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),),
                       Text("minTemp : ${cubit.weatherData.minTemp.toStringAsFixed(2)}",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),),
                     ],
                   ),
                 ],
               ),
               Spacer(),
               Text("${cubit.weatherData.weatherStateName}",
                 style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                 ),),
               Spacer(flex: 5,),
             ],
           ),
         );
       },
     );
   }
 }




// Widget buildWeatherScreen()=> Container(
//   color: Colors.orange,
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Spacer(flex: 3,),
//       Text("${cubit.cityName}",
//         style: TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//         ),),
//       Text("Updated",
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//         ),),
//       Spacer(),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Image.asset("assets/images/clear.png"),
//           Text("30",
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),),
//           Column(
//             children: [
//               Text("maxTemp",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),),
//               Text("minTemp",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),),
//             ],
//           ),
//         ],
//       ),
//       Spacer(),
//       Text("Clear",
//         style: TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//         ),),
//       Spacer(flex: 5,),
//     ],
//   ),
// );
