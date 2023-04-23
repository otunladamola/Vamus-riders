import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';

Future<void> showCustomDialog(String title, String subtitle, String action,
    BuildContext context, Function() onCancel, Function() onDelete) async {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
              height: 268,
              width: 317.w,
              padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 29),
              color: Colors.white,
              child: Column(children: <Widget>[
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: heading4,
                ),
                Ui.boxHeight(9),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: hintStyle.copyWith(color: Colors.black),
                ),
                Ui.boxHeight(26),
                InkWell(
                  onTap: onDelete,
                  child: Container(
                    height: 40,
                    width: 156.w,
                    decoration: BoxDecoration(
                      color: CustomColors.primary,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        action,
                        style: regular.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Ui.boxHeight(19),
                InkWell(
                  onTap: onCancel,
                  child: Container(
                    height: 40,
                    width: 156.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: CustomColors.primary)),
                    child: Center(
                      child: Text(
                        "No, Cancel",
                        style: regular.copyWith(color: CustomColors.primary),
                      ),
                    ),
                  ),
                )
              ])),
        );
      });
}
