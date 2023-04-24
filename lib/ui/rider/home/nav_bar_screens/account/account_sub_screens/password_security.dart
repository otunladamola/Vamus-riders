import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/ui/utils/custom_button.dart';
import 'package:vamuz_riders/ui/utils/custom_textfield.dart';

class PasswordSecurity extends StatefulWidget {
  const PasswordSecurity({super.key});

  @override
  State<PasswordSecurity> createState() => _PasswordSecurityState();
}

class _PasswordSecurityState extends State<PasswordSecurity> {
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
            "Password and security ",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(18, 10, 25, 0),
        physics: const ClampingScrollPhysics(),
        children: [
          const CustomTextField(label: "New Password"),
          Ui.boxHeight(24),
          const CustomTextField(label: "Confirm New Password"),
          Ui.boxHeight(22),
          CustomButton(text: "Change Password", onTap: () {})
        ],
      ),
    );
  }
}
