import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0.0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    print(_bmi);
    if (_bmi >= 25)
      return "Overweight";
    else if (_bmi > 18.5)
      return "Normal";
    else
      return "Underweight";
  }

  String getBody() {
    print(_bmi);
    if (_bmi >= 25)
      return "غرامة ... حمولة زائدة";
    else if (_bmi > 18.5)
      return "ثابت على كدة ياوحش";
    else
      return "كل شوية يافاضحنا";
  }
}
