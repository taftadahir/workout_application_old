import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';

TextStyle getTextStyle({
  Color color = whiteColor,
  FontWeight fontWeight = FontWeight.normal,
  double fontSize = 16.0,
  double? height,
}) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: height,
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

TextStyle fieldLabelStyle = getTextStyle(
  color: blackColor,
  fontWeight: FontWeight.w600,
);

TextStyle fieldErrorStyle = getTextStyle(
  height: 0,
  fontSize: 0,
);

TextStyle fieldHintStyle = getTextStyle(
  color: greyColor,
);
