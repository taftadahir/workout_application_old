import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';

class WorkoutCardComponent extends StatelessWidget {
  const WorkoutCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.0,
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
