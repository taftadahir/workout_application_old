import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/behaviors.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/layouts.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/views/components/email_field_component.dart';
import 'package:workout_application_development/views/components/field_container_component.dart';
import 'package:workout_application_development/views/components/password_field_component.dart';
import 'package:workout_application_development/views/components/primary_button_component.dart';
import 'package:workout_application_development/views/components/title_component.dart';
import 'package:workout_application_development/views/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: MediaQuery.of(context).size.height < minHeight
              ? ListView(
                  physics: physics,
                  children: getSignInScreenContent(context),
                )
              : SingleChildScrollView(
                  physics: physics,
                  child: SizedBox(
                    // Screen height - status bar height
                    height: MediaQuery.of(context).size.height -
                        MediaQuery.of(context).viewPadding.top,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: getSignInScreenContent(context),
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  List<Widget> getSignInScreenContent(BuildContext context) => [
        Container(
          margin: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 56.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Text(
                  'Register',
                  style: getTextStyle(
                    color: blackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
              ),
              decoration: BoxDecoration(
                color: blackLightColor,
                borderRadius: BorderRadius.circular(16.0),
              ),
              height: getLogoSize(context),
              width: getLogoSize(context),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 24.0,
            right: 24.0,
            bottom: 24.0,
            top: 40.0,
          ),
          child: Column(
            children: [
              const TitleComponent(text: 'Sign in'),
              const SizedBox(
                height: 40.0,
              ),
              const FieldContainerComponent(
                child: EmailFieldComponent(),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const FieldContainerComponent(
                child: PasswordFieldComponent(),
              ),
              Container(
                height: 48.0,
                margin: const EdgeInsets.only(
                  top: 32.0,
                ),
                child: PrimaryButtonComponent(
                  text: 'LOGIN',
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ];
}
