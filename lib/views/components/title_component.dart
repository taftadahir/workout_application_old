import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';

class TitleComponent extends StatelessWidget {
  final String text;
  final bool uppercased;
  final bool centered;

  const TitleComponent({
    Key? key,
    required this.text,
    this.uppercased = true,
    this.centered = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      uppercased ? text.toUpperCase() : text,
      textAlign: centered ? TextAlign.center : TextAlign.left,
      style: getTextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
    );
  }
}
