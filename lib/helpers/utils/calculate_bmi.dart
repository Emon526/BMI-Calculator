import 'dart:math';

class BmiLogic {
  BmiLogic({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  double calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.floorToDouble();
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight ';
    } else if (_bmi > 18.5) {
      return 'Normal ';
    } else {
      return 'Underweight ';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than Normal body weight !';
    } else if (_bmi >= 18.5) {
      return 'You have Normal body weight !';
    } else {
      return 'You have a lower than normal body weight !';
    }
  }
}
