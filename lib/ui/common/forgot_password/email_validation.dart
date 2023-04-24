import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vamuz_riders/ui/utils/constant/route_constant.dart';
import 'package:vamuz_riders/ui/utils/custom_button.dart';
import 'package:vamuz_riders/ui/utils/custom_textfield.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/spacing.dart';

class EmailValidation extends StatefulWidget {
  const EmailValidation({super.key});

  @override
  State<EmailValidation> createState() => _EmailValidationState();
}

class _EmailValidationState extends State<EmailValidation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 105, 37, 57),
                child: Image.asset(
                  forgot,
                  height: 295,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Forgot Password?",
                      style: boldHeading5,
                    ),
                    Ui.boxHeight(14),
                    Text(
                      "Enter your email for the verification process, and we will send 4 digits code to your email for the verification.",
                      style: overline.copyWith(height: 1.3),
                    ),
                    Ui.boxHeight(16),
                    const CustomTextField(label: "Email"),
                    Ui.boxHeight(30),
                    CustomButton(
                        text: "Proceed",
                        onTap: () {
                          Get.toNamed(RouteConstant.OTP_VALIDATION);
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
