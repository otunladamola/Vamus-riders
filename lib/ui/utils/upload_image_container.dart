import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';

Widget uploadImageContainer(label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: regular,
      ),
      Ui.boxHeight(7),
      Container(
        height: 40,
        margin: EdgeInsets.only(right: 170.w),
        decoration: BoxDecoration(
            border: Border.all(color: CustomColors.primary),
            borderRadius: BorderRadius.circular(6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.add,
              color: Colors.black,
            ),
            Ui.boxWidth(7),
            Text(
              "Upload image",
              style: regular.copyWith(color: Colors.black),
            )
          ],
        ),
      ),
    ],
  );
}
