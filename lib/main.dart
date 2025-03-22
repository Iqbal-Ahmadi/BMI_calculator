// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/screens/Input-page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        // textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF090F20),
        ),
        // floatingActionButtonTheme: FloatingActionButtonThemeData(
        //     foregroundColor: Colors.white, backgroundColor: Colors.purple),
        scaffoldBackgroundColor: Color(0xFF090F20),
      ),
      home: InputPage(),
    );
  }
}
