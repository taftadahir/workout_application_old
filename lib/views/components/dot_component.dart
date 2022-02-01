import 'package:flutter/material.dart';

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
    this.selectedColor = const Color(0xFF545FFF),
    this.unselectedColor = const Color(0xFFF3F4F8),
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
