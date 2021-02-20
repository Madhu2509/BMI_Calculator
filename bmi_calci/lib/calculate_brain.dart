import 'dart:math';

class CalculatorBrain {
  int height, weight;
  double _bmi;
  CalculatorBrain({this.height, this.weight});
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String getSuggestion() {
    if (_bmi >= 25) {
      return 'Reduce weight please';
    } else if (_bmi > 18.5) {
      return 'YOU ARE NORMAL... HAVE FUN';
    } else {
      return 'Under Weight...EAT WELL';
    }
  }
}
