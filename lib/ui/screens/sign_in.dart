import 'package:flutter/material.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/ui/widgets/custom_button.dart';
import 'package:vamuz_riders/ui/widgets/custom_textfield.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/ui/screens/email_validation.dart';

class SignIn extends StatefulWidget {

  const SignIn({super.key, });

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
                "Welcome Back",
                style: boldHeading5,
              ),
              Ui.boxHeight(6),
              Text(
                "Welcome back! We're so glad to see you again. Please enter your login details to access your account and continue shopping. \n\nIf you've forgotten your password, no worries, just click the \"Forgot Password\" link and we'll help you reset it. Thanks for being a part of our community, and happy shopping!",
                style: overline.copyWith(height: 1.3),
              ),
              Ui.boxHeight(32),
              const CustomTextField(label: "Email"),
              Ui.boxHeight(30),
              const CustomPasswordTextField(label: "Password"),
              Ui.boxHeight(58),
              CustomButton(
                  text: "Sign In",
                  onTap: () {
                
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (route) => widget.isSeller
                    //             ? const SellerHomeOptions()
                    //             : const BuyerHomeOptions()));
                  }),
              Ui.boxHeight(33),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (route) => const EmailValidation()));
                },
                child: Center(
                  child: Text(
                    "Forgot Password",
                    style: regular.copyWith(color: CustomColors.primary),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
