import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/models/exercise_model.dart';
import 'package:workout_application_development/views/components/exercise_bottom_sheet_component.dart';

class ExerciseCardComponent extends StatelessWidget {
  final ExerciseModel exercise;

  const ExerciseCardComponent({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16.0),
          ),
        ),
        builder: (_) => ExerciseBottomSheetComponent(exercise: exercise,),
      ),
      child: Container(
        height: 144,
        width: 120,
        decoration: BoxDecoration(
          color: whiteLightColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(8.0)),
              child: Image.asset(
                'assets/images/exercises/${exercise.sysId}.jpg',
                fit: BoxFit.cover,
                height: 112.0,
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    exercise.name,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: getTextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
