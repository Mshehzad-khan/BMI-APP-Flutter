import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi=1.0;

  String calculateBMI(){
     _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){

    if( _bmi >= 25){
      return 'overweight';
    } else if (_bmi > 18.50){
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getinterpretation(){
    if( _bmi >= 25){
      return 'You have a high the normal body weight.';
    } else if (_bmi > 18.5){
      return 'Your are normal body weight.';
    } else {
      return 'You have a lower than normal body weight.';
    }
  }
}

