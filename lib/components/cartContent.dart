// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constant.dart';

class CardSimilarity extends StatelessWidget {
  final IconData? cardIcon;
  final String? cardText;
  CardSimilarity({this.cardIcon, this.cardText});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          '$cardText',
          style: KLabelTextStyle
        )
      ],
    );
  }
}