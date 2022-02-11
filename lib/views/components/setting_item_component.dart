import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';

class SettingItemComponent extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget action;

  const SettingItemComponent({
    Key? key,
    required this.title,
    required this.icon,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Card(
        color: greyColor,
        elevation: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon,size: 18.0,),
                const SizedBox(width: 8.0,),
                Text(
                  title,
                  style: getTextStyle(
                    color: blackColor,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            action,
          ],
        ),
      ),
    );
  }
}
