import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/models/onboarding_model.dart';

class OnboardingComponent extends StatelessWidget {
  final OnboardingModel data;

  const OnboardingComponent({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(
          'assets/images/${data.image}',
          height: 200,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 40.0, 0, 16.0),
          child: Text(
            data.title,
            style: getTextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w800,
              color: blackColor,
            ),
          ),
        ),
        Text(
          data.description,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: getTextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: blackLightColor,
          ),
        ),
      ],
    );
  }
}
