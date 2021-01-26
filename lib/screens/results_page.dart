import 'file:///C:/Users/User/AndroidStudioProjects/bmi-calculator-flutter/lib/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.bmiResultText,
      @required this.interpretation});

  final String bmiResult;
  final String bmiResultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              padding: EdgeInsets.only(left: 40, right: 40),
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Normal BMI Range:',
                    style: kBodyTitleTextStyle,
                  ),
                  Text(
                    '18.5 - 25 kg/m2',
                    style: kBodyTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: kBodyTextStyle,
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     //save bmi
                  //   },
                  //   child: Container(
                  //     child: Center(
                  //         child: Text(
                  //       'SAVE RESULT',
                  //       style: kBodyTextStyle,
                  //     )),
                  //     color: kInactiveCardColor,
                  //     //margin: EdgeInsets.(top: 10),
                  //     padding: EdgeInsets.all(10),
                  //     width: 190,
                  //     height: 55,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
