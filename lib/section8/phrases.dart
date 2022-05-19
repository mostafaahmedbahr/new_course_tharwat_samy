import 'package:flutter/material.dart';
class PhrasesPage extends StatelessWidget {
  final String title;

  PhrasesPage({
    @required this.title,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
