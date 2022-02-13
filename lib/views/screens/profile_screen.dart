import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/behaviors.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/views/components/app_bar_component.dart';
import 'package:workout_application_development/views/components/email_field_component.dart';
import 'package:workout_application_development/views/components/field_container_component.dart';
import 'package:workout_application_development/views/components/primary_button_component.dart';
import 'package:workout_application_development/views/components/text_field_component.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBarComponent.getAppBarComponent(
        title: Text(
          'Profile Screen',
          style: getTextStyle(
            color: blackColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: blackColor,
          ),
        ),
        actions: [
          PopupMenuButton<Widget>(
            icon: const Icon(
              Icons.more_horiz_rounded,
              color: blackColor,
            ),
            elevation: 3.0,
            color: whiteLightColor,
            padding: EdgeInsets.zero,
            offset: const Offset(0, 48.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0)),
            ),
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('Delete account'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  child: Image.asset(
                    'assets/images/exercises/1.jpg',
                    fit: BoxFit.cover,
                    height: 96.0,
                    width: 96.0,
                  ),
                ),
                const SizedBox(
                  width: 24.0,
                ),
                Container(
                  width: 16.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: whiteLightColor,
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          )),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                Container(
                  width: 16.0,
                  height: 72.0,
                  decoration: BoxDecoration(
                    color: whiteLightColor,
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          )),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Joined',
                          style: getTextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '6 months ago',
                          style: getTextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                            height: 2.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Form(
              child: Expanded(
                child: ListView(
                  physics: physics,
                  children: [
                    const FieldContainerComponent(
                      child: TextFieldComponent(
                        labelText: 'First name',
                        hintText: 'Taftadjani',
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const FieldContainerComponent(
                      child: TextFieldComponent(
                        labelText: 'Last name',
                        hintText: 'Dahirou',
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const FieldContainerComponent(
                      child: EmailFieldComponent(),
                    ),
                    const SizedBox(
                      height: 48.0,
                    ),
                    Row(
                      children: [
                        Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.logout_rounded,
                            ),
                            color: whiteColor,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: errorColor,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 24.0),
                            height: 48.0,
                            child: PrimaryButtonComponent(
                              text: 'Edit Profile',
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
