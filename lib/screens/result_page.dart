import 'package:bmi_calculator/components/bottom_bar.dart';
import 'package:flutter/material.dart';

import '../components/card_content.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  final String? bmi;
  final String? result;
  final String? body;

  ResultPage({required this.bmi, required this.result, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              "Your Result",
              style: kTitleStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: Cardo(
              cardColor: kCardColor,
              tapFunction: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result!.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(bmi!, style: kBMITextStyle),
                  Text(
                    body!,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomBar(
              title: "RE-CALCULATE",
              onPressd: () => Navigator.pop(context, null)),
        ],
      ),
    );
  }
}
