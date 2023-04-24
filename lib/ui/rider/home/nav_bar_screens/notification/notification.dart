import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
            "Notification",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: ListView(
        children: [
          deliveryDetails(
              notText: "New Delivery Alert",
              timeStamp: "7th March, 2022",
              senderFirstLetter: "D"),
          deliveryDetails(
              notText: "10% discount on all Uniever Products. Buy.. ",
              timeStamp: "7th March, 2022",
              senderFirstLetter: "D"),
          deliveryDetails(
              notText: "You’ve just received ₦2500 commission  ",
              timeStamp: "7th March, 2022",
              senderFirstLetter: "R")
        ],
      ),
    );
  }

  Widget deliveryDetails({notText, timeStamp, senderFirstLetter}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(17, 9, 18, 9),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CustomColors.primary.withOpacity(0.5)),
                child: Center(
                  child: Text(
                    senderFirstLetter,
                    style: heading4.copyWith(color: Colors.white),
                  ),
                ),
              ),
              Ui.boxWidth(19),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 278.w,
                    child: Text(
                      notText,
                      overflow: TextOverflow.ellipsis,
                      style: hintStyle.copyWith(color: Colors.black),
                    ),
                  ),
                  Ui.boxHeight(2),
                  Text(
                    timeStamp,
                    style: overline.copyWith(fontSize: 11),
                  ),
                ],
              ),
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
