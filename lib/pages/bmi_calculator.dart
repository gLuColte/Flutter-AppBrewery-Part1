import 'package:flutter/material.dart';
import 'bmi_input_page.dart';

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(//Notice Copy With
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

