import 'package:flutter/material.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: CustomColors.primary),
        child: Center(
          child: Text(
            text,
            style: regular.copyWith(color: CustomColors.accentColor1),
          ),
        ),
      ),
    );
  }
}
