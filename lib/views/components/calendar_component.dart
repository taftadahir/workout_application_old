import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';

class CalendarComponent extends StatelessWidget {
  const CalendarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'March 2021',
              style: getTextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: blackColor,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Today'),
            ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getDayComponent(
              weekDay: 'Mon',
              monthDay: '10',
              active: false,
            ),
            getDayComponent(
              weekDay: 'Tue',
              monthDay: '11',
              active: false,
            ),
            getDayComponent(
              weekDay: 'Wed',
              monthDay: '12',
              active: false,
            ),
            getDayComponent(
              weekDay: 'Thu',
              monthDay: '13',
              active: true,
            ),
            getDayComponent(
              weekDay: 'Fri',
              monthDay: '14',
              active: false,
            ),
            getDayComponent(
              weekDay: 'Sat',
              monthDay: '15',
              active: false,
            ),
            getDayComponent(
              weekDay: 'Sun',
              monthDay: '16',
              active: false,
            ),
          ],
        ),
      ],
    );
  }

  Widget getDayComponent({
    required String weekDay,
    required String monthDay,
    required bool active,
  }) {
    TextStyle textStyle = getTextStyle(
      color: active ? primaryColor : greyColor,
      fontWeight: active ? FontWeight.bold : FontWeight.normal,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          weekDay,
          style: textStyle,
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          monthDay,
          style: textStyle,
        ),
        const SizedBox(
          height: 8.0,
        ),
        Icon(
          Icons.arrow_drop_up_rounded,
          color: active ? primaryColor : Colors.transparent,
        ),
      ],
    );
  }
}
