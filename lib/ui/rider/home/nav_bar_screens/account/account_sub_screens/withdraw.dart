import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/models/ui_models/dropdown_items.dart';
import 'package:vamuz_riders/ui/utils/custom_button.dart';
import 'package:vamuz_riders/ui/utils/custom_dropdown.dart';
import 'package:vamuz_riders/ui/utils/custom_textfield.dart';
import 'package:vamuz_riders/ui/utils/dialogs.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({super.key});

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  String? selectedBank;
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
            "Withdraw",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(18, 10, 25, 0),
        physics: const ClampingScrollPhysics(),
        children: [
          const CustomTextField(
            label: "Amount to Withdraw",
            addText: "Bal:40000",
          ),
          Ui.boxHeight(24),
          customDropDown(
              label: "Bank",
              hintText: "Select",
              selectedValue: selectedBank,
              dropdownItems: banksMenuItems,
              onChanged: (val) {}),
          Ui.boxHeight(24),
          const CustomTextField(label: "Account Number "),
          Ui.boxHeight(68),
          CustomButton(
              text: "Withdraw",
              onTap: () {
                showWithdrawCustomDialog(context);
              })
        ],
      ),
    );
  }
}
