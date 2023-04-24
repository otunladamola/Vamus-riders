import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/models/ui_models/dropdown_items.dart';
import 'package:vamuz_riders/ui/fleet_owner/authentication/sign_up_screen.dart';
import 'package:vamuz_riders/ui/utils/constant/route_constant.dart';
import 'package:vamuz_riders/ui/utils/custom_button.dart';
import 'package:vamuz_riders/ui/utils/custom_dropdown.dart';
import 'package:vamuz_riders/ui/utils/custom_textfield.dart';
import 'package:vamuz_riders/ui/utils/upload_image_container.dart';

class DriverForm extends StatefulWidget {
  const DriverForm({super.key});

  @override
  State<DriverForm> createState() => _DriverFormState();
}

class _DriverFormState extends State<DriverForm> {
  bool checkBoxValue = false;
  String? selectedVehicleModel;
  String? selectedVehicleYear;
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
            Ui.boxHeight(10),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                  ),
                ),
                Ui.boxWidth(10),
                const Text(
                  "Driver Form",
                  style: boldHeading5,
                ),
              ],
            ),
            Ui.boxHeight(30),
            customDropDown(
                label: "Vehicle Model",
                hintText: "Select",
                selectedValue: selectedVehicleModel,
                dropdownItems: vehicleModelMenuItems,
                onChanged: (val) {}),
            Ui.boxHeight(17),
            customDropDown(
                label: "Vehicle Year",
                hintText: "Select",
                selectedValue: selectedVehicleYear,
                dropdownItems: vehicleYearMenuItems,
                onChanged: (val) {}),
            Ui.boxHeight(17),
            const CustomTextField(label: 'Vehicle License Number'),
            Ui.boxHeight(17),
            uploadImageContainer(
              "Upload the a picture of your Vehicle (Front View)",
            ),
            Ui.boxHeight(32),
            uploadImageContainer(
              "Upload the a picture of your Vehicle (Back View)",
            ),
            Ui.boxHeight(38),
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
            Ui.boxHeight(18),
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
