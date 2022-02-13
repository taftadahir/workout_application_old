import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/parameters.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/views/components/sidebar_item_component.dart';
import 'package:workout_application_development/views/screens/profile_screen.dart';
import 'package:workout_application_development/workout_application.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: whiteColor,
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24.0,
          horizontal: 24.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).viewPadding.top + 24.0,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  child: Image.asset(
                    'assets/images/exercises/1.jpg',
                    fit: BoxFit.cover,
                    height: 80.0,
                    width: 80.0,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Jane Doe',
                  style: getTextStyle(
                    fontWeight: FontWeight.w600,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  'jane.doe@gmail.com',
                  style: getTextStyle(
                    color: blackColor,
                    fontSize: 12.0,
                  ),
                ),
                const Divider(
                  color: whiteLightColor,
                  thickness: 1.0,
                  height: 40.0,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SidebarItemComponent(
                  icon: Icons.person_rounded,
                  title: 'Profile',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ProfileScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SidebarItemComponent(
                  icon: Icons.history_rounded,
                  title: 'History',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => WorkoutApplication(
                          index: 4,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SidebarItemComponent(
                  icon: Icons.favorite_border_rounded,
                  title: 'Favorite',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => WorkoutApplication(
                          index: 2,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SidebarItemComponent(
                  icon: Icons.settings_rounded,
                  title: 'Settings',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => WorkoutApplication(
                          index: 3,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SidebarItemComponent(
                  icon: Icons.bubble_chart_rounded,
                  title: 'About Us',
                  onTap: () {},
                ),
                const SizedBox(
                  height: 32.0,
                ),
              ],
            ),
            Text(
              prmAppName,
              style: getTextStyle(
                color: blackColor,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
