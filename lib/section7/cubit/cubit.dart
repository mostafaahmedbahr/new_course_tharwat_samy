import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_course_tharwat_samy/section7/cubit/states.dart';

class PointsCubit extends Cubit<PointsStates>{
  PointsCubit() : super(PointInitialState());
  static PointsCubit get(context)=>BlocProvider.of(context);

  int teamAPoint=0;
  int teamBPoint=0;


  void changeACounter1(){
    teamAPoint+=1;
    emit(PointAChange1State());
  }

  void changeACounter2(){
    teamAPoint+=2;
    emit(PointAChange2State());
  }

  void changeACounter3(){
    teamAPoint+=3;
    emit(PointAChange3State());
  }

  void changeBCounter1(){
    teamBPoint+=1;
    emit(PointBChange1State());
  }

  void changeBCounter2(){
    teamBPoint+=2;
    emit(PointBChange2State());
  }

  void changeBCounter3(){
    teamBPoint+=3;
    emit(PointBChange3State());
  }

  void resetCounter(){
    teamAPoint=0;
    teamBPoint=0;
    emit(PointResetCounterState());
  }
}