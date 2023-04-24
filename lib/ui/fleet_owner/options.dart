import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/ui/fleet_owner/home/fleet_owner_homepage.dart';
import 'package:vamuz_riders/ui/utils/constant/route_constant.dart';
import 'package:vamuz_riders/ui/rider/home/home_page.dart';

class SellerHomeOptions extends StatelessWidget {
  const SellerHomeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              Get.offAll(() => FleetOwnerHomePage());
            
            }),
            Ui.boxHeight(42),
            optionBox(fleet, "Fleet Management", () {
              Get.offAll(() => HomePage());
             
            }),
            Ui.boxHeight(42),
            optionBox(truckOutline, "Delivery Management", () {
              // Navigator.push(context,
              //     // MaterialPageRoute(builder: (route) => const Store())
              //     );
            })
          ],
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
              height: 50,
              width: 50,
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
