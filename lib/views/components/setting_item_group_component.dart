import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/views/components/setting_item_component.dart';

class SettingItemGroupComponent extends StatelessWidget {
  final String title;
  final List<SettingItemComponent> items;

  const SettingItemGroupComponent({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            title,
            style: getTextStyle(
              fontWeight: FontWeight.w600,
              color: blackColor,
              fontSize: 18.0,
            ),
          ),
        ),
        ...items
            .map(
              (child) => Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: child,
              ),
            )
            .toList(),
      ],
    );
  }
}
