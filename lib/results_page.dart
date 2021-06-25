import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult, @required this.bmiText, @required this.bmiInterpretation});

  final String bmiResult;
  final String bmiText;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiText,
                    style: kResultTextStyle.copyWith(
                        fontSize: 100, color: Colors.white),
                  ),
                  Text(
                    bmiInterpretation,
                    textAlign: TextAlign.center,
                    style: kResultTextStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
