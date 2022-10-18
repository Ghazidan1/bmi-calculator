import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final String title;
  final Function onPressd;

  BottomBar({required this.title, required this.onPressd});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressd(),
      child: Container(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            title,
            style: kLargeButtonStyle,
          ),
        ),
        height: 80.0,
        color: kBottomBarColor,
        margin: const EdgeInsets.only(top: 15.0),
      ),
    );
  }
}
