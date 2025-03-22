// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator_flutter/components/bottomTap-btn.dart';
import 'package:bmi_calculator_flutter/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/components/reusableCard.dart';
import 'package:bmi_calculator_flutter/constant.dart';
import 'package:bmi_calculator_flutter/components/cartContent.dart';
import 'package:bmi_calculator_flutter/components/roundIcon-btn.dart';
import 'package:bmi_calculator_flutter/calculator-brain.dart';

enum Gender { male, female }
// const

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InpuPageState();
}

class _InpuPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 50;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                          onpress: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          colour: selectedGender == Gender.male
                              ? KactiveCardColor
                              : KinactiveCardColor,
                          cardChild: CardSimilarity(
                            cardIcon: Icons.male,
                            cardText: 'MALE',
                          ))),
                  Expanded(
                    child: ReusableCard(
                      onpress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? KactiveCardColor
                          : KinactiveCardColor,
                      cardChild: CardSimilarity(
                        cardIcon: Icons.female,
                        cardText: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: KactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: KLabelTextStyle,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: KNumberTextStyle,
                          ),
                          Text(
                            'cm',
                            style: KLabelTextStyle,
                          ),
                        ]),
                    SliderTheme(
                      data: SliderThemeData(
                          trackHeight: 1,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 13.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 25.0),
                          thumbColor: KbottomContainerColor,
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x29EB1E62)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        // activeColor: Colors.white,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newval) {
                          setState(() {
                            height = newval.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    colour: KactiveCardColor,
                    cardChild: RoundIconData(
                      LabelText: 'WEIGHT',
                      LabelVar: weight,
                      add: () {
                        setState(() {
                          weight++;
                        });
                      },
                      remove: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                  )),
                  Expanded(
                    child: ReusableCard(
                      colour: KactiveCardColor,
                      cardChild: RoundIconData(
                        LabelText: 'AGE',
                        LabelVar: age,
                        add: () {
                          setState(() {
                            age++;
                          });
                        },
                        remove: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomTapBtn(
                text: 'CALCULATE',
                ontap: () {
                  CalculatorBrain calc =
                      CalculatorBrain(height: height, weight: weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                            bmiResult: calc.Calculate(),
                            textReslt: calc.getResult(),
                            interpretation: calc.getInterpretation())),
                  );
                })
          ],
        ));
  }
}
