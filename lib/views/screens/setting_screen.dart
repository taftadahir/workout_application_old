import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/behaviors.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/views/components/setting_item_component.dart';
import 'package:workout_application_development/views/components/setting_item_group_component.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: physics,
      padding: const EdgeInsets.only(
        top: 24.0,
        left: 24.0,
        right: 24.0,
      ),
      children: [
        SettingItemGroupComponent(
          title: 'General',
          items: [
            SettingItemComponent(
              title: 'Dark theme',
              icon: Icons.dark_mode_rounded,
              action: GestureDetector(
                child: const Icon(
                  Icons.check_rounded,
                ),
              ),
            ),
            SettingItemComponent(
              title: 'Notification',
              icon: Icons.notifications,
              action: GestureDetector(
                child: const Icon(
                  Icons.check_rounded,
                ),
              ),
            ),
            SettingItemComponent(
              title: 'Language',
              icon: Icons.language_rounded,
              action: GestureDetector(
                child: const Text('fr'),
              ),
            ),
            SettingItemComponent(
              title: 'Sound',
              icon: Icons.surround_sound,
              action: GestureDetector(
                child: const Icon(
                  Icons.check_rounded,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 32.0,
        ),
        SettingItemGroupComponent(
          title: 'Synchronization',
          items: [
            SettingItemComponent(
              title: 'AutoSync',
              icon: Icons.sync_rounded,
              action: GestureDetector(
                child: const Icon(
                  Icons.check_rounded,
                ),
              ),
            ),
            SettingItemComponent(
              title: 'Sync now',
              icon: Icons.sync_rounded,
              action: GestureDetector(
                child: const Icon(
                  Icons.sync_rounded,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 32.0,
        ),
        SettingItemGroupComponent(
          title: 'Reminder',
          items: [
            SettingItemComponent(
              title: 'Days',
              icon: Icons.calendar_today_rounded,
              action: GestureDetector(
                child: Row(
                  children: [
                    Text(
                      'M',
                      style: getTextStyle(
                        color: primaryColor,
                      ),
                    ),
                    Text(
                      ' T ',
                      style: getTextStyle(
                        color: primaryColor,
                      ),
                    ),
                    const Text(' W '),
                    Text(
                      ' T ',
                      style: getTextStyle(
                        color: primaryColor,
                      ),
                    ),
                    const Text(' F '),
                    const Text(
                      ' S ',
                    ),
                    const Text(' S '),
                  ],
                ),
              ),
            ),
            SettingItemComponent(
              title: 'Time',
              icon: Icons.timer_rounded,
              action: GestureDetector(
                child: const Text('08 : 00'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 32.0,
        ),
        SettingItemGroupComponent(
          title: 'Workouts',
          items: [
            SettingItemComponent(
              title: 'Warm Up',
              icon: Icons.not_started_rounded,
              action: GestureDetector(
                child: const Icon(
                  Icons.check_rounded,
                ),
              ),
            ),
            SettingItemComponent(
              title: 'Rest time',
              icon: Icons.timelapse_rounded,
              action: GestureDetector(
                child: const Text('30s'),
              ),
            ),
            SettingItemComponent(
              title: 'Count down time',
              icon: Icons.timelapse_rounded,
              action: GestureDetector(
                child: const Text('30s'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
