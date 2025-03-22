// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constant.dart';

class BottomTapBtn extends StatelessWidget {
  final String? text;
  final Function()? ontap;

  BottomTapBtn({this.text, this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 60,
        width: double.infinity,
        color: KbottomContainerColor,
        child: Center(
          child: Text(
            text.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }
}
