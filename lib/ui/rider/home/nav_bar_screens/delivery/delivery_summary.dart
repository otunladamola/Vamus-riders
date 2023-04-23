import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';

class DeliverySummary extends StatefulWidget {
  const DeliverySummary({super.key});

  @override
  State<DeliverySummary> createState() => _DeliverySummaryState();
}

class _DeliverySummaryState extends State<DeliverySummary> {
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
              "Delivery Summary",
              style: heading4.copyWith(color: Colors.black),
            )),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          child: Column(
            children: [
              Container(
                width: ScreenUtil().screenWidth,
                padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: CustomColors.grey75)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          marketplace,
                          height: 14,
                        ),
                        Ui.boxWidth(6),
                        Text(
                          "Homier Store",
                          style: overline.copyWith(fontWeight: FontWeight.w700),
                        ),
                        Ui.boxWidth(11),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: CustomColors.grey,
                          size: 10,
                        ),
                      ],
                    ),
                    Ui.boxHeight(7),
                    Row(
                      children: [
                        Image.asset(
                          soar,
                          height: 51,
                          width: 81,
                        ),
                        Ui.boxWidth(8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 240.w,
                              child: Text(
                                "Universal Selfie LED Ring Flashlight Portable...",
                                style: overline.copyWith(fontSize: 11),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Ui.boxHeight(1),
                            const Text(
                              "White",
                              style: overline,
                            ),
                            Ui.boxHeight(1),
                            Text(
                              "₦15,000",
                              style: overline.copyWith(fontSize: 11),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Ui.boxHeight(12),
                    rowItem("Sub Total", "₦15,000"),
                    Ui.boxHeight(4),
                    rowItem("Delivery", "₦5,000"),
                    Ui.boxHeight(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: boldHeading5.copyWith(
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          "₦20,000",
                          style: boldHeading5.copyWith(
                            fontSize: 11,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Ui.boxHeight(15),
              Container(
                width: ScreenUtil().screenWidth,
                padding: const EdgeInsets.fromLTRB(11, 10, 12, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: CustomColors.grey75)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Merle Hansen",
                      style: boldHeading5.copyWith(fontSize: 11),
                    ),
                    Ui.boxHeight(1),
                    Text(
                      "+234 805 789 0098",
                      style: overline.copyWith(fontSize: 11),
                    ),
                    Ui.boxHeight(1),
                    Text(
                      "20, Moshood Abiola Crescent,Ikeja Lagos   ",
                      style: overline.copyWith(fontSize: 11),
                    ),
                  ],
                ),
              ),
              Ui.boxHeight(30),
              Container(
                width: ScreenUtil().screenWidth,
                padding: const EdgeInsets.fromLTRB(11, 10, 12, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: CustomColors.grey75)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order placed on : May 7, 2023, 8:45",
                      style: overline.copyWith(fontSize: 11),
                    ),
                    Ui.boxHeight(3),
                    Text(
                      "Order delivered on : May 7, 2023, 13:45",
                      style: overline.copyWith(fontSize: 11),
                    ),
                    Ui.boxHeight(3),
                    const Divider(
                      color: CustomColors.grey75,
                    ),
                    Center(
                      child: Text(
                        "Contact Seller",
                        style: overline.copyWith(fontSize: 11),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget rowItem(key, value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          key,
          style: overline,
        ),
        Text(
          value,
          style: overline.copyWith(fontSize: 11),
        )
      ],
    );
  }
}
