import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/ui/widgets/custom_button.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/ui/screens/new_password.dart';

class OtpValidation extends StatefulWidget {
  const OtpValidation({super.key});

  @override
  State<OtpValidation> createState() => _OtpValidationState();
}

class _OtpValidationState extends State<OtpValidation> {
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
                "Forgot Password?",
                style: heading4,
              ),
              Ui.boxHeight(11),
              const Text(
                "Enter your email for the verification process, and we will send 4 digits code to your email for the verification.",
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (route) => const NewPassword()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
