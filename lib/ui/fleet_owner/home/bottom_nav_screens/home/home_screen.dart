import 'package:flutter/material.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/colors.dart';

class OwnerHomeScreen extends StatelessWidget {
  const OwnerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: false,
          titleSpacing: 22,
          title: Text(
            "Home",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 23.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22.5,
                  child: Image.asset(profile),
                ),
                Ui.boxWidth(11),
                Column(
                  children: [
                    const Text(
                      "Krista Schneider",
                      style: boldHeading5,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          mapMarker,
                          width: 14,
                          height: 20,
                        ),
                        Ui.boxWidth(11),
                        const Text(
                          "Ipaja, Lagos",
                          style: regular2,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Ui.boxHeight(29.5),
          info(
            info: "Number of trips Completed",
            num: "17",
          ),
          Ui.boxHeight(12),
          const Divider(thickness: 1, color: CustomColors.grey100),
          Ui.boxHeight(16),
          info(info: "Total Commission earned from trips", num: "₦25,000.00"),
          Ui.boxHeight(12),
          const Divider(thickness: 1, color: CustomColors.grey100),
          Ui.boxHeight(16),
          info(info: "Edit/ Update Info", num: ''),
          Ui.boxHeight(12),
          const Divider(thickness: 1, color: CustomColors.grey100),
        ],
      ),
    );
  }

  Widget info({info, num}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            info,
            style: regular2,
          ),
          Text(
            num,
            style: regular2,
          )
        ],
      ),
    );
  }
}
