import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/ui/fleet_owner/home/fleet_owner_homepage.dart';

class SellerHomeOptions extends StatelessWidget {
  const SellerHomeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(82.w, 0, 77.w, 0),
          child: Center(
            child: ListView(
              physics: const ClampingScrollPhysics(),
              children: [
                Ui.boxHeight(52),
                const Text(
                  "Hello, User",
                  style: heading4,
                ),
                Ui.boxHeight(9),
                Text(
                  "Kindly select one of the services\nto continue",
                  style: hintStyle.copyWith(color: Colors.black),
                ),
                Ui.boxHeight(34),
                optionBox(driverProfile, "Driver Profile", () {
                  Get.to(() => const FleetOwnerHomePage());
                }),
                Ui.boxHeight(42),
                optionBox(fleet, "Fleet Management", () {
                  Get.to(() => const FleetOwnerHomePage(
                        index: 1,
                      ));
                }),
                Ui.boxHeight(42),
                optionBox(truckOutline, "Delivery Management", () {
                  Get.to(() => const FleetOwnerHomePage(
                        index: 2,
                      ));
                }),
                Ui.boxHeight(42),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget optionBox(image, text, onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: CustomColors.primary),
            borderRadius: BorderRadius.circular(5)),
        height: 147,
        width: 226,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 41,
              width: 41,
            ),
            Ui.boxHeight(22),
            Text(
              text,
              style: boldHeading5,
            )
          ],
        ),
      ),
    );
  }
}
