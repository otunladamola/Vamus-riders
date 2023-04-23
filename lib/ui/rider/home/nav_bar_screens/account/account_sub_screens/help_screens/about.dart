import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
            "About Us",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: Column(
        children: [
          Ui.boxHeight(10),
          aboutItem(text: "Privacy Policy"),
          aboutItem(text: "Terms and Conditons")
        ],
      ),
    );
  }

  Widget aboutItem({text}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(23, 12, 18, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: regular,
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                size: 18,
              )
            ],
          ),
        ),
        const Divider(
          color: CustomColors.grey100,
        )
      ],
    );
  }
}
