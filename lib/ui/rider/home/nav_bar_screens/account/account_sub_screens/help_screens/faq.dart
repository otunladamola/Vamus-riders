import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
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
            "FAQ",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Frequently asked questions ",
                style: boldHeading5,
              ),
            ),
            Ui.boxHeight(10),
            faqItem(text: "How do i place an Order on Vamus ?"),
            faqItem(text: "How do i track my order?"),
            faqItem(text: "When will i get my order?"),
            faqItem(text: "How much are my delivery fees? "),
          ],
        ),
      ),
    );
  }

  Widget faqItem({text}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(17, 12, 18, 8),
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
