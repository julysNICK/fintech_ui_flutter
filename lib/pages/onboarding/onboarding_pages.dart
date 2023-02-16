import 'package:fintech_ui/theme.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset("assets/image_onboarding.png"),
        ],
      )),
    );
  }
}
