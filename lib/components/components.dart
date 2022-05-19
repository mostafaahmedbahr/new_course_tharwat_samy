import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//in home screen
Widget buildItem(String text, Color color,Function() navigate) => GestureDetector(
  onTap:navigate,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20),
        width: double.infinity,
        height: 70,
        color: color,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
// in numbers screen
Widget buildNumberItem(String imgUrl,String text1,String text2,String sound,Color color)=>Container(
  color: color,
  height: 100,
  child:Row(
    children: [
      Container(
          color: Colors.white,
          child: Image.asset(imgUrl)),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text1,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),),
            Text(text2,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),),
          ],
        ),
      ),
      Spacer(flex: 1,),
      IconButton(
        onPressed:(){
          AudioCache player = AudioCache();
          player.play(sound);
        },
        icon:Icon(Icons.play_arrow,size: 30,),
        color: Colors.white,
      ),
    ],
  ),
);

