import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/parameters.dart';
import 'package:workout_application_development/configs/themes.dart';
import 'package:workout_application_development/views/screens/onboarding_screen.dart';

class WorkoutApplication extends StatelessWidget {
  const WorkoutApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: prmAppName,
        theme: defaultThemeData,
        debugShowCheckedModeBanner: false,
        home: const OnboardingScreen(),
      );
}
