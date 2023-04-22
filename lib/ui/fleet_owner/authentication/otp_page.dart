import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/ui/common/sign_in.dart';
import 'package:vamuz_riders/ui/utils/constant/route_constant.dart';
import 'package:vamuz_riders/ui/utils/custom_button.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/constants/spacing.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Ui.boxHeight(70),
              const Text(
                "Input OTP?",
                style: heading4,
              ),
              Ui.boxHeight(17),
              const Text(
                "Please enter the OTP code sent to your phone number",
                style: overline,
              ),
              Ui.boxHeight(37),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 15),
                  child: PinCodeTextField(
                    enableActiveFill: true,
                    appContext: context,
                    length: 6,
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
              Ui.boxHeight(56),
              CustomButton(
                  text: "Proceed",
                  onTap: () {
                    Get.toNamed(RouteConstant.LOGIN,
                        arguments: {'isRider': false});
                  }),
              Ui.boxHeight(40),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "No OTP ? ",
                    style: hintStyle.copyWith(color: CustomColors.textColor),
                    children: [
                      TextSpan(
                        text: " Click here",
                        style: hintStyle.copyWith(color: CustomColors.primary),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
