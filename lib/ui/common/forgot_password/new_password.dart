import 'package:flutter/material.dart';
import 'package:vamuz_riders/ui/utils/custom_button.dart';
import 'package:vamuz_riders/ui/utils/custom_textfield.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/constants/spacing.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Ui.boxHeight(70),
                const Text(
                  "Enter new Password",
                  style: boldHeading5,
                ),
                Ui.boxHeight(6),
                Text(
                  "Enter your email for the verification process, and we will send 4 digits code to your email for the verification.",
                  style: overline.copyWith(height: 1.3),
                ),
                Ui.boxHeight(32),
                const CustomPasswordTextField(label: "New Password"),
                Ui.boxHeight(30),
                const CustomPasswordTextField(label: "Confirm Password"),
                Ui.boxHeight(58),
                CustomButton(text: "Reset", onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
