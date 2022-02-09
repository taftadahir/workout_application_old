import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/behaviors.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/views/components/app_bar_component.dart';
import 'dart:math' as math;

import 'package:workout_application_development/views/components/calendar_component.dart';
import 'package:workout_application_development/views/components/workout_card_component.dart';

class RoutineScreen extends StatelessWidget {
  const RoutineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CalendarComponent(),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            'Workouts',
            style: getTextStyle(
              fontWeight: FontWeight.w600,
              color: blackColor,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Expanded(
            child: ListView(
              physics: physics,
              children: const [
                WorkoutCardComponent(),
                WorkoutCardComponent(),
                WorkoutCardComponent(),
                WorkoutCardComponent(),
                WorkoutCardComponent(),
              ]
                  .map(
                    (child) => Container(
                      child: child,
                      margin: const EdgeInsets.only(bottom: 16.0),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
