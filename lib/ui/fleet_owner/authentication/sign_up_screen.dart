import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/models/ui_models/dropdown_items.dart';
import 'package:vamuz_riders/ui/rider/authentication/sign_up_screen.dart';
import 'package:vamuz_riders/ui/utils/constant/route_constant.dart';
import 'package:vamuz_riders/ui/utils/custom_button.dart';
import 'package:vamuz_riders/ui/utils/custom_dropdown.dart';
import 'package:vamuz_riders/ui/utils/custom_textfield.dart';

class FleetOwnerSignUp extends StatefulWidget {
  const FleetOwnerSignUp({super.key});

  @override
  State<FleetOwnerSignUp> createState() => _FleetOwnerSignUpState();
}

class _FleetOwnerSignUpState extends State<FleetOwnerSignUp> {
  bool checkBoxValue = false;
  String? selectedState;
  String? selectedCity;
  String? selectedFleetType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Ui.boxHeight(44),
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                vamuzLogo,
                height: 27,
                width: 52,
              ),
            ),
            Ui.boxHeight(6),
            const Text(
              "Welcome to Vamus",
              style: boldHeading5,
            ),
            Ui.boxHeight(6),
            const Text(
              "Welcome to our community! We're excited to have you on board. Please fill out the form below to sign up and start enjoying all the benefits of our platform.",
              style: overline,
            ),
            Ui.boxHeight(6.5),
            const CustomTextField(label: 'Full Name'),
            Ui.boxHeight(17),
            const CustomTextField(label: 'Email address'),
            Ui.boxHeight(17),
            customDropDown(
                label: "State",
                hintText: "Select",
                selectedValue: selectedState,
                dropdownItems: stateMenuItems,
                onChanged: (val) {}),
            Ui.boxHeight(17),
            customDropDown(
                label: "City",
                hintText: "Select",
                selectedValue: selectedCity,
                dropdownItems: cityMenuItems,
                onChanged: (val) {}),
            Ui.boxHeight(17),
            const CustomPasswordTextField(label: 'Create Password'),
            Ui.boxHeight(17),
            const CustomPasswordTextField(label: 'Confirm Password'),
            Ui.boxHeight(17),
            customDropDown(
                label: "Fleet Type",
                hintText: "Select",
                selectedValue: selectedCity,
                dropdownItems: fleetTypeMenuItems,
                onChanged: (val) {}),
            Ui.boxHeight(17),
            const CustomTextField(label: 'Fleet Capacity'),
            Ui.boxHeight(30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                checkBox(),
                Ui.boxWidth(6),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text:
                          "When signing up for our service, we kindly ask that you read and accept our terms and conditions. By clicking \"I agree,\" you are acknowledging that you have reviewed and agree to our policies regarding your use of our platform",
                      style: overline.copyWith(color: CustomColors.textColor),
                    ),
                  ),
                ),
              ],
            ),
            Ui.boxHeight(12),
            CustomButton(
                text: 'Sign up',
                onTap: () {
                  Get.toNamed(RouteConstant.OTP_PAGE);
                }),
            Ui.boxHeight(12),
            transparentButton(),
            Ui.boxHeight(16),
            Center(
              child: InkWell(
                onTap: () {
                  Get.off(() => const RiderSignUp());
                },
                child: RichText(
                  text: TextSpan(
                    text: "Are you a Rider? ",
                    style: regular.copyWith(color: CustomColors.primary),
                    children: [
                      TextSpan(
                        text: "Sign up here",
                        style: regular.copyWith(
                          color: CustomColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Ui.boxHeight(90),
          ],
        ),
      )),
    );
  }

  Widget transparentButton() {
    return InkWell(
      onTap: () {
        Get.toNamed(RouteConstant.LOGIN, arguments: {'isRider': false});
      },
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: CustomColors.primary)),
        child: Center(
          child: Text(
            "Already have an account? Sign in",
            style: regular.copyWith(color: CustomColors.primary),
          ),
        ),
      ),
    );
  }

  Widget checkBox() {
    return InkWell(
        onTap: () {
          setState(() {
            checkBoxValue = !checkBoxValue;
          });
        },
        child: Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: CustomColors.grey75)),
          child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: checkBoxValue
                  ? const Icon(
                      Icons.check,
                      size: 18.0,
                      color: CustomColors.textColor,
                    )
                  : Container()),
        ));
  }
}
