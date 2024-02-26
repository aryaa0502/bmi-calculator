// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff0C1135),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.purple[50]),
          elevation: 2,
        ),
        scaffoldBackgroundColor: Color(0xff0C1135),
      ),
      home: InputPage(),
    );
  }
}
