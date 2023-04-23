import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/ui/utils/custom_button.dart';
import 'package:vamuz_riders/ui/utils/custom_textfield.dart';

class UpdateAccountInfo extends StatefulWidget {
  const UpdateAccountInfo({super.key});

  @override
  State<UpdateAccountInfo> createState() => _UpdateAccountInfoState();
}

class _UpdateAccountInfoState extends State<UpdateAccountInfo> {
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
            "Update Account info",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(18, 10, 25, 0),
        physics: const ClampingScrollPhysics(),
        children: [
          const CustomTextField(label: "Name"),
          Ui.boxHeight(24),
          const CustomTextField(label: "Email Address"),
          Ui.boxHeight(24),
          const CustomTextField(label: "Phone Number"),
          Ui.boxHeight(22),
          CustomButton(text: "Save Changes", onTap: () {})
        ],
      ),
    );
  }
}
