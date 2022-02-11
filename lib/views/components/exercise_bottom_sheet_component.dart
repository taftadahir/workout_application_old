import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/models/exercise_model.dart';
import 'package:workout_application_development/views/components/primary_button_component.dart';

class ExerciseBottomSheetComponent extends StatelessWidget {
  final ExerciseModel exercise;

  const ExerciseBottomSheetComponent({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
        bottom: 24.0,
        top: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 32.0,
                top: 8.0,
              ),
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                color: greyColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Image.asset(
                'assets/images/exercises/${exercise.sysId}.jpg',
                fit: BoxFit.cover,
                height: 112.0,
              ),
            ),
          ),
          Text(
            exercise.name,
            style: getTextStyle(
              fontWeight: FontWeight.w600,
              color: blackColor,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            exercise.description ?? '',
            style: getTextStyle(
              color: blackLightColor,
              height: 1.8,
              fontSize: 14.0,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          SizedBox(
            height: 48.0,
            width: double.infinity,
            child: PrimaryButtonComponent(
              onPressed: () {},
              text: 'Add to Favorite',
            ),
          ),
        ],
      ),
    );
  }
}
