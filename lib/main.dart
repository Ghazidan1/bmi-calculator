import 'package:flutter/material.dart';

import 'constants.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackGroundColor,
        primaryColor: kBackGroundColor,
        appBarTheme: const AppBarTheme(color: kAppBarColor),
      ),
      home: const InputPage(),
    );
  }
}
