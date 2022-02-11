import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/behaviors.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/views/components/workout_card_component.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 48.0,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          margin: const EdgeInsets.only(bottom: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('Time : 12h'),
              Text('130 workouts'),
            ],
          ),
          decoration: const BoxDecoration(
            color: whiteLightColor,
            // borderRadius: BorderRadius.circular(8.0),
          ),
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
              WorkoutCardComponent(),
              WorkoutCardComponent(),
              WorkoutCardComponent(),
              WorkoutCardComponent(),
            ]
                .map(
                  (child) => Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                      bottom: 16.0,
                    ),
                    child: child,
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
