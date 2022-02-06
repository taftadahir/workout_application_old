import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/behaviors.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/configs/layouts.dart';
import 'package:workout_application_development/configs/styles.dart';
import 'package:workout_application_development/views/components/email_field_component.dart';
import 'package:workout_application_development/views/components/field_container_component.dart';
import 'package:workout_application_development/views/components/password_field_component.dart';
import 'package:workout_application_development/views/components/primary_button_component.dart';
import 'package:workout_application_development/views/components/text_field_component.dart';
import 'package:workout_application_development/views/components/title_component.dart';
import 'package:workout_application_development/views/screens/home_screen.dart';
import 'package:workout_application_development/views/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: MediaQuery.of(context).size.height < minHeight
              ? ListView(
                  physics: physics,
                  children: getRegisterScreenContent(),
                )
              : SingleChildScrollView(
                  physics: physics,
                  child: SizedBox(
                    // Screen height - status bar height
                    height: MediaQuery.of(context).size.height -
                        MediaQuery.of(context).viewPadding.top,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: getRegisterScreenContent(),
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  List<Widget> getRegisterScreenContent() => [
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
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Text(
                  'Login',
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
            bottom: 24.0,
            top: 40.0,
          ),
          child: Column(
            children: [
              const TitleComponent(text: 'Register'),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'STEP ${currentIndex + 1} out 2',
                style: getTextStyle(
                  fontSize: 12.0,
                  color: greyColor,
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              SizedBox(
                height: 184.0,
                child: PageView.builder(
                  physics: physics,
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: 2,
                  itemBuilder: (_, index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        currentIndex == 0
                            ? const FieldContainerComponent(
                                child: TextFieldComponent(
                                  labelText: 'First name',
                                  hintText: 'Enter your first name',
                                ),
                              )
                            : const FieldContainerComponent(
                                child: EmailFieldComponent(),
                              ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        currentIndex == 0
                            ? const FieldContainerComponent(
                                child: TextFieldComponent(
                                  labelText: 'Last name',
                                  hintText: 'Enter your last name',
                                ),
                              )
                            : const FieldContainerComponent(
                                child: PasswordFieldComponent(),
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 48.0,
                margin: const EdgeInsets.only(
                  top: 24.0,
                  right: 24.0,
                  left: 24.0,
                ),
                child: PrimaryButtonComponent(
                  text: currentIndex == 0 ? 'Next' : 'Register',
                  onPressed: () {
                    if (currentIndex == 0) {
                      _controller.nextPage(
                        duration: const Duration(microseconds: 100),
                        curve: Curves.bounceIn,
                      );
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const HomeScreen(),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        )
      ];
}
