import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/ui/utils/constant/route_constant.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: false,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 18,
            ),
          ),
          titleSpacing: 0,
          title: Text(
            "Help",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: ListView(
        children: [
          Ui.boxHeight(10),
          helpItem(
              leading: const Icon(
                Icons.help_center_outlined,
              ),
              text: "FAQ",
              onTap: () {
                Get.toNamed(RouteConstant.FAQ);
              }),
          helpItem(
              leading: const Icon(
                Icons.chat_outlined,
              ),
              text: "Contact us",
              onTap: () {
                Get.toNamed(RouteConstant.CONTACT_US);
              }),
          helpItem(
              leading: const Icon(
                Icons.person,
              ),
              text: "About us",
              onTap: () {
                Get.toNamed(RouteConstant.ABOUT_US);
              })
        ],
      ),
    );
  }

  Widget helpItem({leading, text, onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(23, 9, 18, 9),
            child: Row(
              children: [
                leading,
                Ui.boxWidth(17),
                Text(
                  text,
                  style: hintStyle.copyWith(color: Colors.black),
                ),
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
