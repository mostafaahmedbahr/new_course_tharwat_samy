import 'package:flutter/material.dart';
import 'package:new_course_tharwat_samy/components/components.dart';
class NumbersPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[800],
        title: Text("Numbers"),
      ),
      body: ListView(
        children: [
          buildNumberItem("assets/images/numbers/number_one.png", "ichi", "one","sounds/numbers/number_one_sound.mp3",Colors.orange),
          buildNumberItem("assets/images/numbers/number_two.png", "Ni", "two","sounds/numbers/number_two_sound.mp3",Colors.orange),
          buildNumberItem("assets/images/numbers/number_three.png", "San", "three","sounds/numbers/number_three_sound.mp3",Colors.orange),
          buildNumberItem("assets/images/numbers/number_four.png", "Shi", "four","sounds/numbers/number_four_sound.mp3",Colors.orange),
          buildNumberItem("assets/images/numbers/number_five.png", "Go", "five","sounds/numbers/number_five_sound.mp3",Colors.orange),
          buildNumberItem("assets/images/numbers/number_six.png", "Roku", "six","sounds/numbers/number_six_sound.mp3g",Colors.orange),
          buildNumberItem("assets/images/numbers/number_seven.png", "Sebun", "seven","sounds/numbers/number_seven_sound.mp3",Colors.orange),
          buildNumberItem("assets/images/numbers/number_eight.png", "Hachi", "eight","sounds/numbers/number_eight_sound.mp3",Colors.orange),
          buildNumberItem("assets/images/numbers/number_nine.png", "Kyu", "nine","sounds/numbers/number_nine_sound.mp3",Colors.orange),
          buildNumberItem("assets/images/numbers/number_ten.png", "ju", "ten","sounds/numbers/number_ten_sound.mp3",Colors.orange),

        ],
      )
    );
  }
}
