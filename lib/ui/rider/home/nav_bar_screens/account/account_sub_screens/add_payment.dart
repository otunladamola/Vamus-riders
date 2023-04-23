import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/ui/utils/custom_button.dart';
import 'package:vamuz_riders/ui/utils/custom_textfield.dart';

class AddPayment extends StatefulWidget {
  const AddPayment({super.key});

  @override
  State<AddPayment> createState() => _AddPaymentState();
}

class _AddPaymentState extends State<AddPayment> {
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
            "Add Payment Method ",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Ui.boxHeight(10),
            const CustomTextField(label: "Card Number"),
            Ui.boxHeight(18),
            Row(
              children: [
                miniField("Expiry Date", "MM/YYYY"),
                Ui.boxWidth(16),
                miniField("CVC", "CVC"),
              ],
            ),
            Ui.boxHeight(51),
            CustomButton(text: "Add Payment", onTap: () {})
          ],
        ),
      ),
    );
  }

  Widget miniField(label, hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: regular,
        ),
        Ui.boxHeight(5),
        SizedBox(
          width: 159.w,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: hintStyle,
                border: border,
                focusedBorder: border,
                enabledBorder: border),
          ),
        ),
      ],
    );
  }
}
