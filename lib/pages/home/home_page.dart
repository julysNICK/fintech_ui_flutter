import 'package:fintech_ui/theme.dart';
import 'package:flutter/material.dart';

import 'components/bank_cards.dart';
import 'components/header.dart';
import 'components/latest.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8fbfb),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 280,
            decoration: BoxDecoration(
              color: greenColor,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(50),
              ),
            ),
          ),
          ListView(
            children: const [
              Header(),
              BankCards(),
              LastestTansactions(),
            ],
          )
        ],
      ),
    );
  }
}
