// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator_flutter/components/bottomTap-btn.dart';
import 'package:bmi_calculator_flutter/constant.dart';
import 'package:bmi_calculator_flutter/components/reusableCard.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.textReslt, this.interpretation});

  final String? bmiResult;
  final String? textReslt;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text(
              'Your Results',
              style: TextStyle(fontSize: 45),
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: KactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(textReslt.toString().toUpperCase(),
                      style: TextStyle(
                          fontSize: 30, color: Colors.green.shade400)),
                  Text(
                    bmiResult.toString(),
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    interpretation.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          BottomTapBtn(
            text: 'RE-CALCULATE',
            ontap: () => Navigator.pop(context),
          )
        ],
      ),
    ));
  }
}
