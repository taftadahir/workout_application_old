import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/behaviors.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/themes.dart';

class BottomBarComponent extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  const BottomBarComponent({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: bottomNavigationBarType,
      elevation: 0,
      currentIndex: selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      unselectedItemColor: blackLightColor,
      backgroundColor: whiteColor,
      selectedIconTheme: bnbSelectedIconTheme,
      unselectedIconTheme: bnbUnselectedIconTheme,
      onTap: (index) => onTap(index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.date_range_rounded),
          label: 'Routine',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_rounded),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: 'Setting',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history_rounded),
          label: 'History',
        ),
      ],
    );
  }
}
