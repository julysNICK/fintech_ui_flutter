import 'package:fintech_ui/theme.dart';
import 'package:flutter/material.dart';

class BankCards extends StatelessWidget {
  const BankCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              width: 100,
              height: 210,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(18),
                // boxShadow: [
                //   BoxShadow(
                //     color: const Color(0xffF8fbfb).withOpacity(0.5),
                //     spreadRadius: 3,
                //     blurRadius: 6,
                //     offset: const Offset(0, 3),
                //   ),
                // ],
              ),
              child: Center(
                child: Image.asset(
                  "assets/icon_add.png",
                  width: 25,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset("assets/image_card.png", height: 210),
            SizedBox(width: defaultMargin),
          ],
        ),
      ),
    );
  }
}
