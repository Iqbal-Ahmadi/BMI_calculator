import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constant.dart';

class RoundIconData extends StatelessWidget {
  final Function()? add;
  final Function()? remove;
  final String? LabelText;
  final String? NumberText;
  final int? LabelVar;

  RoundIconData(
      {this.add, this.remove, this.LabelText, this.NumberText, this.LabelVar});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(LabelText.toString(), style: KLabelTextStyle),
        Text(
          LabelVar.toString(),
          style: KNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(icon: Icons.remove, onpress: remove),
            SizedBox(
              width: 10,
            ),
            RoundIconButton(icon: Icons.add, onpress: add),
          ],
        ),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.onpress, this.icon});

  final Function()? onpress;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        fillColor: KIconBackgroundColor,
        child: Icon(icon),
        shape: CircleBorder(),
        elevation: 5.0,
        onPressed: onpress);
  }
}
