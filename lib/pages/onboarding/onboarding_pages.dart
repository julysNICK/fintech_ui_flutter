import 'package:fintech_ui/theme.dart';
import 'package:flutter/material.dart';

import '../home/home_page.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Positioned(
                bottom: -50,
                left: -20,
                child: Image.asset(
                  "assets/image_hand.png",
                  width: 350,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Image.asset(
                      "assets/image_onboarding.png",
                      width: 335,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Save your money",
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "We help you to save your money",
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 48,
                              vertical: 14,
                            ),
                            decoration: BoxDecoration(
                              color: yellowColor,
                              borderRadius: const BorderRadius.horizontal(
                                left: Radius.circular(20),
                              ),
                            ),
                            child: Text(
                              "Next",
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: medium,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
