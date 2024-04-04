import 'package:bmi_app/constants/constants.dart';
import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  final double? shapeWidht;
  const RightShape({super.key, this.shapeWidht});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40.0,
          width: shapeWidht,
          decoration: BoxDecoration(
            color: shapeColorRight,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
          ),
        )
      ],
    );
  }
}
