import 'package:flutter/material.dart';

import '../../../theme.dart';

class LastestTansactions extends StatelessWidget {
  const LastestTansactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Latest Transactions",
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(height: 12),
          CardTransactions(
            title: "Transfer to Julys",
            subtitle: "Transfer",
            path: "assets/icon_transaction1.png",
            trailing: "-\$ 500.00",
            isSpend: true,
          ),
          CardTransactions(
            title: "Transfer to Julys",
            subtitle: "Transfer",
            path: "assets/icon_transaction2.png",
            trailing: "+\$ 500.00",
            isSpend: false,
          ),
          CardTransactions(
            title: "Transfer to Julys",
            subtitle: "Transfer",
            path: "assets/icon_transaction3.png",
            trailing: "-\$ 500.00",
            isSpend: true,
          ),
          CardTransactions(
            title: "Transfer to Julys",
            subtitle: "Transfer",
            path: "assets/icon_transaction4.png",
            trailing: "+\$ 500.00",
            isSpend: false,
          ),
        ],
      ),
    );
  }

  Widget CardTransactions(
      {String? title,
      String? subtitle,
      String? path,
      String? trailing,
      bool? isSpend}) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
        // boxShadow: [
        //   BoxShadow(
        //     color: const Color(0xffF8fbfb).withOpacity(0.5),
        //     spreadRadius: 3,
        //     blurRadius: 6,
        //     offset: const Offset(0, 3),
        //   ),
        // ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Image(
          image: AssetImage(path ?? "assets/image_card.png"),
        ),
        title: Text(
          "$title",
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        subtitle: Text(
          "$subtitle",
          style: greyTextStyle.copyWith(
            fontSize: 14,
            fontWeight: light,
          ),
        ),
        trailing: Text(
          "$trailing",
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
            color: isSpend! ? redColor : greenColor,
          ),
        ),
      ),
    );
  }
}
