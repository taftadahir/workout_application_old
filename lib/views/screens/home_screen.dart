import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/behaviors.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/views/components/app_bar_component.dart';
import 'dart:math' as math;

import 'package:workout_application_development/views/components/program_card_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 24.0,
        horizontal: 24.0,
      ),
      physics: physics,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Calisthenics Program',
                  style: getTextStyle(
                    fontWeight: FontWeight.w600,
                    color: blackColor,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            Column(
              children: [
                const ProgramCardComponent(),
                const ProgramCardComponent(),
                const ProgramCardComponent(),
                const ProgramCardComponent(),
                const ProgramCardComponent(),
                const ProgramCardComponent(),
              ]
                  .map(
                    (child) => Padding(
                      padding: const EdgeInsets.only(
                        bottom: 24.0,
                      ),
                      child: child,
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ],
    );
  }
}
