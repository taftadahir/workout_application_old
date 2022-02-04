import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';

class PrimaryButtonComponent extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Widget? child;

  const PrimaryButtonComponent({
    Key? key,
    this.backgroundColor = primaryColor,
    required this.onPressed,
    this.text = '',
    this.textColor = whiteColor,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child ??
          Text(
            text,
            style: getTextStyle(
              color: textColor,
            ),
          ),
      style: getButtonStyle(),
    );
  }
}
