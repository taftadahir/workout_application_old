import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';

class DotComponent extends StatelessWidget {
  final int currentIndex;
  final int index;
  final Color unselectedColor;
  final Color selectedColor;
  final double selectedWidth;
  final double dotHeight;

  const DotComponent({
    Key? key,
    required this.currentIndex,
    required this.index,
    this.selectedColor = primaryColor,
    this.unselectedColor = whiteLightColor,
    this.selectedWidth = 32.0,
    this.dotHeight = 10.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dotHeight,
      width: currentIndex == index ? selectedWidth : dotHeight,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: currentIndex == index ? selectedColor : unselectedColor,
      ),
    );
  }
}
