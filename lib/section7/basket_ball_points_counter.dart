import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_course_tharwat_samy/section7/cubit/cubit.dart';
import 'package:new_course_tharwat_samy/section7/cubit/states.dart';
class BasketCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PointsCubit,PointsStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = PointsCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text("Points Counter",),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:   [
                        Text("Team A",
                          style: TextStyle(
                            fontSize: 30,
                          ),),
                        Text("${cubit.teamAPoint}",
                          style: TextStyle(
                            fontSize: 150,
                            fontWeight: FontWeight.bold,
                          ),),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            fixedSize:   Size(150, 50),
                          ),
                          onPressed: (){
                            cubit.changeACounter1();
                          },
                          child:const Text("Add 1 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),),
                        ),
                        SizedBox(height: 15,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            fixedSize:   Size(150, 50),
                          ),
                          onPressed: (){
                            cubit.changeACounter2();
                          },
                          child:const Text("Add 2 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),),
                        ),
                        SizedBox(height: 15,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            fixedSize:   Size(150, 50),
                          ),
                          onPressed: (){
                           cubit.changeACounter3();
                          },
                          child:const Text("Add 3 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),),
                        ),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    child:   VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:   [
                        Text("Team B",
                          style: TextStyle(
                            fontSize: 30,
                          ),),
                        Text("${cubit.teamBPoint}",
                          style: TextStyle(
                            fontSize: 150,
                            fontWeight: FontWeight.bold,
                          ),),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            fixedSize:   Size(150, 50),
                          ),
                          onPressed: (){
                           cubit.changeBCounter1();
                          },
                          child:  Text("Add 1 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),),
                        ),
                        SizedBox(height: 15,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            fixedSize:   Size(150, 50),
                          ),
                          onPressed: (){
                           cubit.changeBCounter2();
                          },
                          child:  Text("Add 2 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),),
                        ),
                        SizedBox(height: 15,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            fixedSize:   Size(150, 50),
                          ),
                          onPressed: (){
                            cubit.changeBCounter3();
                          },
                          child:  Text("Add 3 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),),
                        ),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  fixedSize:const Size(150, 50),
                ),
                onPressed: (){
                  cubit.resetCounter();
                  cubit.resetCounter();

                },
                child:const Text("Reset",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),) ,
              ),
            ],
          ),
        );
      },
    );
  }

}


