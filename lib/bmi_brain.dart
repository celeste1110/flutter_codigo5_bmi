import 'dart:math';

class BMIBrain {
  int weight;
  int height;
  double bmi = 0;

  BMIBrain({required this.weight, required this.height});

  double calculaterBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  String estado() {
    if (calculaterBMI() >= 25) {
      return ('Ovwerweight');
    } else if (calculaterBMI() > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String mensaje() {
    if (calculaterBMI() >= 25) {
      return 'Debes hacer más ejercicio';
    } else if (calculaterBMI() > 18) {
      return 'Estas en tu peso ideal';
    } else {
      return 'Debes alimentarte más';
    }
  }
}
