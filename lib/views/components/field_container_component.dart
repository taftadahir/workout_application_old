import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';

class FieldContainerComponent extends StatelessWidget {
  final Widget child;

  const FieldContainerComponent({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 32.0,
        left: 16.0,
        right: 16.0,
        bottom: 8.0,
      ),
      decoration: BoxDecoration(
        color: whiteLightColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: child,
    );
  }
}
