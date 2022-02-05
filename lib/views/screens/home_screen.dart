import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/behaviors.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/views/components/app_bar_component.dart';
import 'dart:math' as math;

import 'package:workout_application_development/views/components/bottom_bar_component.dart';
import 'package:workout_application_development/views/components/program_card_component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBarComponent.getAppBarComponent(
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
      bottomNavigationBar: BottomBarComponent(
        selectedIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 24.0,
          horizontal: 24.0,
        ),
        physics: physics,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Calisthenics Program',
                    style: getTextStyle(
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              Column(
                children: [
                  const ProgramCardComponent(),
                  const ProgramCardComponent(),
                  const ProgramCardComponent(),
                  const ProgramCardComponent(),
                  const ProgramCardComponent(),
                  const ProgramCardComponent(),
                ]
                    .map(
                      (child) => Padding(
                        padding: const EdgeInsets.only(
                          bottom: 24.0,
                        ),
                        child: child,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
