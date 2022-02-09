import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/parameters.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/configs/themes.dart';
import 'package:workout_application_development/views/components/app_bar_component.dart';
import 'package:workout_application_development/views/components/bottom_bar_component.dart';
import 'package:workout_application_development/views/screens/favorite_screen.dart';
import 'package:workout_application_development/views/screens/home_screen.dart';
import 'package:workout_application_development/views/screens/routine_screen.dart';
import 'dart:math' as math;

class WorkoutApplication extends StatefulWidget {
  const WorkoutApplication({Key? key}) : super(key: key);

  @override
  State<WorkoutApplication> createState() => _WorkoutApplicationState();
}

class _WorkoutApplicationState extends State<WorkoutApplication> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const RoutineScreen(),
    const FavoriteScreen(),
    Container(),
    Container(),
  ];


  final List<AppBar> _appbars = [

    // Home screen Appbar
    AppBarComponent.getAppBarComponent(
      title: Text(
        'Home Screen',
        style: getTextStyle(
          color: blackColor,
        ),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Transform.rotate(
          angle: math.pi / 2,
          child: const Icon(
            Icons.bar_chart_rounded,
            color: blackColor,
          ),
        ),
      ),
    ),

    // Routine screen Appbar
    AppBarComponent.getAppBarComponent(
      title: Text(
        'Routine',
        style: getTextStyle(
          color: blackColor,
        ),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Transform.rotate(
          angle: math.pi / 2,
          child: const Icon(
            Icons.bar_chart_rounded,
            color: blackColor,
          ),
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 24.0),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Start',
              style: getTextStyle(
                color: blackColor,
              ),
            ),
            style: getButtonStyle(
              fullWidth: false,
              radius: 8.0,
              backgroundColor: whiteLightColor,
            ),
          ),
        ),
      ],
    ),

    // Favorite screen Appbar
    AppBarComponent.getAppBarComponent(
      title: Text(
        'Favorite Screen',
        style: getTextStyle(
          color: blackColor,
        ),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Transform.rotate(
          angle: math.pi / 2,
          child: const Icon(
            Icons.bar_chart_rounded,
            color: blackColor,
          ),
        ),
      ),
    ),

    // Setting screen Appbar
    AppBarComponent.getAppBarComponent(),

    // History screen Appbar
    AppBarComponent.getAppBarComponent(),
  ];

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: prmAppName,
        theme: defaultThemeData,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: whiteColor,
          appBar: _appbars[_selectedIndex],
          bottomNavigationBar: BottomBarComponent(
            selectedIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          body: _screens[_selectedIndex],
        ),
      );
}
