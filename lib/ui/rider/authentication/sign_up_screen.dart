import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/models/ui_models/dropdown_items.dart';
import 'package:vamuz_riders/ui/fleet_owner/authentication/sign_up_screen.dart';
import 'package:vamuz_riders/ui/utils/constant/route_constant.dart';
import 'package:vamuz_riders/ui/utils/custom_button.dart';
import 'package:vamuz_riders/ui/utils/custom_dropdown.dart';
import 'package:vamuz_riders/ui/utils/custom_textfield.dart';
import 'package:vamuz_riders/ui/utils/upload_image_container.dart';

class RiderSignUp extends StatefulWidget {
  const RiderSignUp({super.key});

  @override
  State<RiderSignUp> createState() => _RiderSignUpState();
}

class _RiderSignUpState extends State<RiderSignUp> {
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
            const CustomPasswordTextField(label: 'Phone number'),
            Ui.boxHeight(17),
            const CustomPasswordTextField(label: 'Create Password'),
            Ui.boxHeight(17),
            const CustomPasswordTextField(label: 'Confirm Password'),
            Ui.boxHeight(17),
            customDropDown(
                label: "Are you a Rider or a Driver",
                hintText: "Fleet Type",
                selectedValue: selectedFleetType,
                dropdownItems: riderDriverMenuItems,
                onChanged: (val) {
                  setState(() {
                    selectedFleetType = val;
                  });
                }),
            Ui.boxHeight(17),
            uploadImageContainer("Upload a Clear Photo of Yourself"),
            Ui.boxHeight(46),
            CustomButton(
                text: 'Next',
                onTap: () {
                  selectedFleetType == "0"
                      ? Get.toNamed(RouteConstant.RIDER_FORM)
                      : Get.toNamed(RouteConstant.DRIVER_FORM);
                }),
            Ui.boxHeight(12),
            transparentButton(),
            Ui.boxHeight(16),
            Center(
              child: InkWell(
                  onTap: () {
                    Get.off(() => const FleetOwnerSignUp());
                  },
                  child: Text(
                      "Are you a Fleet owner? Do you have more than\none car/bike? Sign up here",
                      textAlign: TextAlign.center,
                      style: regular.copyWith(
                        color: CustomColors.primary,
                      ))),
            ),
            Ui.boxHeight(33),
          ],
        ),
      )),
    );
  }

  Widget transparentButton() {
    return InkWell(
      onTap: () {
        Get.toNamed(RouteConstant.LOGIN, arguments: {'isRider': true});
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
}
