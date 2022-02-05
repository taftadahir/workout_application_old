import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';

class ProgramCardComponent extends StatelessWidget {
  const ProgramCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
