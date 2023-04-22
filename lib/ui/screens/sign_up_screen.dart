import 'package:flutter/material.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/ui/screens/otp_page.dart';
import 'package:vamuz_riders/ui/widgets/custom_button.dart';
import 'package:vamuz_riders/ui/widgets/custom_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkBoxValue = false;
  var value = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
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
            const CustomDropDownFormField(label: 'State', value: '1'),
            Ui.boxHeight(17),
            const CustomDropDownFormField(label: 'City', value: '1'),
            Ui.boxHeight(17),
            const CustomPasswordTextField(label: 'Create Password'),
            Ui.boxHeight(17),
            const CustomPasswordTextField(label: 'Confirm Password'),
            Ui.boxHeight(17),
            const CustomDropDownFormField(label: 'Fleet Type', value: '1'),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpPage(),
                      ));
                }),
            Ui.boxHeight(12),
            transparentButton(),
            Ui.boxHeight(90),
          ],
        ),
      )),
    );
  }

  Widget transparentButton() {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (route) => const SignIn(
        //               isSeller: false,
        //             )));
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
