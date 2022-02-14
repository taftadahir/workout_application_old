import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/behaviors.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/controllers/exercise_controller.dart';
import 'package:workout_application_development/models/exercise_model.dart';
import 'package:workout_application_development/views/components/exercise_card_component.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24.0,
        left: 24.0,
        right: 24.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Exercises',
            style: getTextStyle(
              fontWeight: FontWeight.w600,
              color: blackColor,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          SizedBox(
            height: 352.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: physics,
              children: [
                Wrap(
                  runSpacing: 16.0,
                  direction: Axis.vertical,
                  children: ExerciseController.getMyFavoriteExercise()
                      .map(
                        (exercise) => Padding(
                          padding: const EdgeInsets.only(
                            bottom: 16.0,
                          ),
                          child: ExerciseCardComponent(exercise: exercise,),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
