import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/ui/utils/constant/route_constant.dart';
import 'package:vamuz_riders/ui/utils/dialogs.dart';
import 'package:vamuz_riders/ui/fleet_owner/home/bottom_nav_screens/account/report_generation.dart';

class FleetOwnerAccount extends StatefulWidget {
  const FleetOwnerAccount({super.key});

  @override
  State<FleetOwnerAccount> createState() => _FleetOwnerAccountState();
}

class _FleetOwnerAccountState extends State<FleetOwnerAccount> {
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
            "Account",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  height: 99,
                  width: 99,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset(profile),
                ),
                Ui.boxHeight(12),
                const Text(
                  "Krista Schneider",
                  style: boldRegular,
                ),
                Ui.boxHeight(1),
                Text(
                  "Johnathan80@gmail.com",
                  style: overline.copyWith(fontSize: 11),
                ),
                Ui.boxHeight(1),
                Text(
                  "+234 813 432 6413",
                  style: overline.copyWith(fontSize: 11),
                ),
              ],
            ),
          ),
          Ui.boxHeight(21),
          const Padding(
            padding: EdgeInsets.only(left: 19),
            child: Text(
              "Account Settings ",
              style: boldHeading5,
            ),
          ),
          Ui.boxHeight(28),
          accountItem(
              text: "Report Generation ",
              leading: Image.asset(
                report,
                height: 20,
                width: 20,
              ),
              onTap: () {
                Get.toNamed(RouteConstant.REPORT_GENERATION);
              }),
          accountItem(
            onTap: () {
              Get.toNamed(RouteConstant.UPDATE_ACCOUNT_INFO);
            },
            text: "Update Account Info",
            leading: Image.asset(
              editAccount,
              height: 20,
              width: 20,
            ),
          ),
          accountItem(
              onTap: () {
                Get.toNamed(RouteConstant.PASSWORD_SECURITY);
              },
              text: "Password and Security",
              leading: const Icon(Icons.security)),
          accountItem(
              onTap: () {
                Get.toNamed(RouteConstant.HELP);
              },
              text: "Help",
              leading: const Icon(Icons.help_outline)),
          accountItem(
              onTap: () {
                showCustomDialog(
                    "Log out",
                    "Are you sure you want to Log out ?",
                    "Log Out",
                    context,
                    () => Get.back(),
                    () {});
              },
              text: "Log out ",
              leading: const Icon(Icons.logout)),
          Ui.boxHeight(21),
        ],
      ),
    );
  }

  Widget accountItem({leading, text, onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(23, 9, 18, 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    leading,
                    Ui.boxWidth(15),
                    Text(
                      text,
                      style: hintStyle.copyWith(color: Colors.black),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                )
              ],
            ),
          ),
          const Divider(
            color: CustomColors.grey100,
          )
        ],
      ),
    );
  }
}
