import 'package:workout_application_development/models/onboarding_model.dart';

class OnboardingController{
  static List<OnboardingModel> getOnboardingDatas() => [
    OnboardingModel(
      title: 'Routine',
      image: 'routine.svg',
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In elementum ac et urna.",
    ),
    OnboardingModel(
      title: 'Workouts',
      image: 'workout.svg',
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In elementum ac et urna.",
    ),
    OnboardingModel(
      title: 'Programs',
      image: 'program.svg',
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In elementum ac et urna.",
    ),
  ];
}