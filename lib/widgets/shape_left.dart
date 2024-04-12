import 'package:bmi_app/constants/constants.dart';
import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  final double? shapeWidth;
  const LeftShape({super.key, this.shapeWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: shapeWidth,
          height: 40.0,
          decoration: BoxDecoration(
            color: shapeColorLeft,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
        )
      ],
    );
  }
}
