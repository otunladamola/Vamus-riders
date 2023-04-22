import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
            "Contact Us",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Ui.boxHeight(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Text(
                "Our customer success team is ready to make sure you have the best shopping experience ",
                style: hintStyle.copyWith(color: Colors.black, height: 1.5),
              ),
            ),
            Ui.boxHeight(15),
            Container(
              height: 118,
              padding: const EdgeInsets.only(top: 17),
              width: ScreenUtil().screenWidth,
              decoration: BoxDecoration(
                  color: CustomColors.grey0,
                  borderRadius: BorderRadius.circular(7)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                contactItem(leading: Icons.mail_outline, text: "Email us"),
                Ui.boxWidth(37),
                contactItem(
                    leading: Icons.chat_bubble_outline_rounded,
                    text: "Chat with us"),
                Ui.boxWidth(37),
                contactItem(leading: Icons.call_outlined, text: "Call us")
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget contactItem({leading, text}) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Icon(leading),
        ),
        Ui.boxHeight(2),
        Text(
          text,
          style: boldRegular,
        )
      ],
    );
  }
}
