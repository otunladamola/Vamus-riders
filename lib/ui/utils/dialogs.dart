import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
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
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Container(
              height: 268,
              width: 317.w,
              padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 29),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
              ),
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

Future<void> showWithdrawCustomDialog(
  BuildContext context,
) async {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Container(
              height: 242,
              width: 317.w,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 26),
              child: Column(children: <Widget>[
                const Text(
                  "Enter Pin",
                  textAlign: TextAlign.center,
                  style: heading4,
                ),
                Ui.boxHeight(5),
                Text(
                  "Enter four digit OTP transaction pin\nsent to 0817 *** **** ",
                  textAlign: TextAlign.center,
                  style: hintStyle.copyWith(color: Colors.black),
                ),
                Ui.boxHeight(14),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.w),
                    child: PinCodeTextField(
                      enableActiveFill: true,
                      appContext: context,
                      length: 4,
                      onChanged: (val) {},
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5.3),
                          fieldHeight: 39,
                          fieldWidth: 38,
                          activeFillColor: Colors.white,
                          inactiveFillColor: Colors.white,
                          selectedFillColor: Colors.white,
                          selectedColor: CustomColors.grey100,
                          inactiveColor: CustomColors.grey100,
                          borderWidth: 0.53,
                          activeColor: CustomColors.grey100),
                    ),
                  ),
                ),
                Ui.boxHeight(14),
                Row(
                  children: [
                    Ui.boxWidth(105),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 40,
                        width: 84.w,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style:
                                regular.copyWith(color: CustomColors.primary),
                          ),
                        ),
                      ),
                    ),
                    Ui.boxWidth(12),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 36,
                        width: 84.w,
                        decoration: BoxDecoration(
                          color: CustomColors.primary,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            "Enter",
                            style: regular.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ])),
        );
      });
}
