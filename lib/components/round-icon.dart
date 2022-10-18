import 'package:flutter/material.dart';

import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton({required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPressed(),
      elevation: 0.0,
      child: Icon(
        icon,
        size: 30.0,
      ),
      shape: CircleBorder(),
      fillColor: kActiveColor,
      constraints: BoxConstraints.tightFor(
        width: 65.0,
        height: 65.0,
      ),
    );
  }
}
