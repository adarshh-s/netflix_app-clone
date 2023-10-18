import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class MainIconButtonWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final double iconSize;
  final double textSize;
  final Color color;

  const MainIconButtonWidget(
      {super.key,
      required this.icon,
      required this.text,
      this.iconSize = 25,
      this.textSize = 15,
      this.color = kWHiteColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWHiteColor,
          size: iconSize,
        ),
        kHeight4,
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: textSize,
            color: color,
          ),
        )
      ],
    );
  }
}
