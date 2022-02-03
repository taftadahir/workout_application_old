import 'package:flutter/material.dart';
import 'package:workout_application_development/configs/colors.dart';
import 'package:workout_application_development/controllers/onboarding_controller.dart';
import 'package:workout_application_development/models/onboarding_model.dart';
import 'package:workout_application_development/views/components/dot_component.dart';
import 'package:workout_application_development/views/components/onboarding_component.dart';
import 'package:workout_application_development/views/components/primary_button_component.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  late PageController _controller;
  List<OnboardingModel> datas = OnboardingController.getOnboardingDatas();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
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
        child: MediaQuery.of(context).size.height < 568.0
            ? Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ListView(
                  children: [
                    ...getOnboardingScreenContent(),
                  ],
                ),
              )
            : Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...getOnboardingScreenContent(),
                ],
              ),
      ),
    );
  }

  List<Widget> getOnboardingScreenContent() => [
        Container(
          margin: const EdgeInsets.only(
            left: 8.0,
            right: 16.0,
            bottom: 40.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              currentIndex == 0
                  ? Container()
                  : IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      color: blackLightColor,
                      onPressed: () {
                        _controller.previousPage(
                          duration: const Duration(microseconds: 100),
                          curve: Curves.bounceIn,
                        );
                      },
                    ),
              currentIndex == datas.length - 1
                  ? Container()
                  : TextButton(
                      onPressed: () {
                        _controller.jumpToPage(
                          datas.length - 1,
                        );
                      },
                      child: const Text(
                        'SKIP',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: blackLightColor,
                        ),
                      ),
                    ),
            ],
          ),
        ),
        SizedBox(
          height: 350.0,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: _controller,
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: datas.length,
            itemBuilder: (_, index) => Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: OnboardingComponent(data: datas[index]),
            ),
          ),
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  datas.length,
                  (index) => DotComponent(
                    currentIndex: currentIndex,
                    index: index,
                  ),
                ),
              ),
            ),
            Container(
              height: 48.0,
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 32.0,
                left: 24.0,
                right: 24.0,
                bottom: 32.0,
              ),
              child: PrimaryButtonComponent(
                text: currentIndex == datas.length - 1 ? 'CONTINUE' : 'NEXT',
                onPressed: () {
                  if (currentIndex == datas.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const Scaffold(),
                      ),
                    );
                  } else {
                    _controller.nextPage(
                      duration: const Duration(microseconds: 100),
                      curve: Curves.bounceIn,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ];
}
