import 'package:flutter/cupertino.dart';
import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = ((weight/2.20462)/pow((height*2.54)/100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You\'re overweight, lose some weight by exercising and eating less';
    } else if (_bmi > 18.5) {
      return 'You\'re at a healthy weight. Keep doing what you\'re doing';
    } else {
      return 'You don\'t weigh enough. Eat a sandwich and some protein';
    }
  }
}

