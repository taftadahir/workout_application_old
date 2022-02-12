import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';

class SidebarItemComponent extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const SidebarItemComponent({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: whiteColor,
        elevation: 0.0,
        child: Row(
          children: [
            Icon(
              icon,
              size: 18.0,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Text(
              title,
              style: getTextStyle(
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
