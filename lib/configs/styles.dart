import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';

TextStyle getTextStyle({
  Color color = whiteColor,
  FontWeight fontWeight = FontWeight.normal,
  double fontSize = 16.0,
}) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );

ButtonStyle getButtonStyle({
  Color backgroundColor = primaryColor,
  double radius = 32.0,
}) =>
    ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(64.0),
        ),
      ),
      minimumSize: MaterialStateProperty.all(
        const Size.fromWidth(double.infinity),
      ),
      backgroundColor: MaterialStateProperty.all(
        backgroundColor,
      ),
      elevation: MaterialStateProperty.all(
        0.0,
      ),
    );
