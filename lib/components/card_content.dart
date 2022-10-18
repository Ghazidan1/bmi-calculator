import 'package:flutter/material.dart';

class Cardo extends StatelessWidget {
  Cardo(
      {required this.cardColor,
      required this.cardChild,
      required this.tapFunction});
  final Color cardColor;
  final Widget cardChild;
  final Function tapFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => tapFunction(),
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }
}
