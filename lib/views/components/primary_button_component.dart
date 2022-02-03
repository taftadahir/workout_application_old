import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';

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
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
              color: textColor,
            ),
          ),
      style: ButtonStyle(
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
      ),
    );
  }
}
