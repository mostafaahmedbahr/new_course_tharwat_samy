import 'package:flutter/material.dart';
import 'package:new_course_tharwat_samy/components/components.dart';
import 'package:new_course_tharwat_samy/section8/colors_page.dart';
import 'package:new_course_tharwat_samy/section8/family_numbers_page.dart';
import 'package:new_course_tharwat_samy/section8/numbers_page.dart';
import 'package:new_course_tharwat_samy/section8/phrases.dart';

class LanguageLearn extends StatefulWidget {
  @override
  _LanguageLearnState createState() => _LanguageLearnState();
}

class _LanguageLearnState extends State<LanguageLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.brown[800],
        title: Text("Toku",),
      ),
      body: Column(
        children: [
          buildItem("Numbers", Colors.orange, () {
            Navigator.push(context,
              MaterialPageRoute(
              builder: (context) => NumbersPage(),
            ),
            );
          },),
          buildItem("Family Numbers", Colors.green, () {
            Navigator.push(
                context,
                MaterialPageRoute(
                builder:(context)
            =>
                FamilyNumbersPage(),
    ),
          );}),

          buildItem("Colors", Colors.purple,(){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context)
                =>
                    ColorsPage(),
              ),
            );
          }),
          buildItem("Phrases", Colors.blueAccent,(){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context)
                =>
                    PhrasesPage(title: "Phrases",),
              ),
            );
          },),
        ],
      ),
    );
  }

}


