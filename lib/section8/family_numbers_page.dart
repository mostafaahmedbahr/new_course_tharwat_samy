import 'package:flutter/material.dart';
import 'package:new_course_tharwat_samy/components/components.dart';
class FamilyNumbersPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[800],
          title: Text("Family Numbers"),
        ),
        body: ListView(
          children: [
            buildNumberItem("assets/images/family_members/family_father.png", "Chichioya", "father","sounds/family_members/father.wav",Colors.green),
            buildNumberItem("assets/images/family_members/family_daughter.png", "Musume", "daughter","sounds/family_members/daughter.wav",Colors.green),
            buildNumberItem("assets/images/family_members/family_grandfather.png", "Ojīsan", "Grand Father","sounds/family_members/grand father.wav",Colors.green),
            buildNumberItem("assets/images/family_members/family_mother.png", "Hahaoya", "mother","sounds/family_members/mother.wav",Colors.green),
            buildNumberItem("assets/images/family_members/family_grandmother.png", "Sobo", "grand mother","sounds/family_members/grand mother.wav",Colors.green),
            buildNumberItem("assets/images/family_members/family_older_brother.png", "Nīsan", "older brother","sounds/family_members/older bother.wav",Colors.green),
            buildNumberItem("assets/images/family_members/family_older_sister.png", "Ane", "older sister","sounds/family_members/older sister.wav",Colors.green),
            buildNumberItem("assets/images/family_members/family_son.png", "Musuko", "son","sounds/family_members/son.wav",Colors.green),
            buildNumberItem("assets/images/family_members/family_younger_brother.png", "otōto", "younger brother","sounds/family_members/younger brohter.wav",Colors.green),
            buildNumberItem("assets/images/family_members/family_younger_sister.png", "Imōto", "younger sister","sounds/family_members/younger sister.wav",Colors.green),

          ],
        )
    );
  }
}
