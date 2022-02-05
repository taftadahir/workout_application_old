import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: whiteLightColor,
    width: 0.0,
  ),
);

// Default theme data
ThemeData defaultThemeData = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    errorBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    focusedErrorBorder: outlineInputBorder,
    disabledBorder: outlineInputBorder,
    floatingLabelStyle: fieldLabelStyle,
    errorStyle: fieldErrorStyle,
    hintStyle: fieldHintStyle,
    labelStyle: fieldLabelStyle,
  ),
);

// BottomNavigationBarSelectedIconTheme = bnbSelectedIconTheme
const IconThemeData bnbSelectedIconTheme = IconThemeData(
  color: primaryColor,
  opacity: 1,
  size: 24.0,
);

// BottomNavigationBarUnselectedIconTheme = bnbUnselectedIconTheme
const IconThemeData bnbUnselectedIconTheme = IconThemeData(
  color: blackLightColor,
  opacity: 1,
  size: 24.0,
);