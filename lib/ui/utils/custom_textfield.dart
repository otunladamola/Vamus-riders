import 'package:flutter/material.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/constants/spacing.dart';

final border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(5),
  borderSide: const BorderSide(color: CustomColors.grey100),
);

class CustomTextField extends StatelessWidget {
  final String label;
  final int? lines;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  const CustomTextField(
      {super.key,
      required this.label,
      this.controller,
      this.validator,
      this.lines});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: regular,
        ),
        Ui.boxHeight(5),
        TextFormField(
          maxLines: lines,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
              hintText: label,
              hintStyle: hintStyle,
              border: border,
              focusedBorder: border,
              enabledBorder: border),
        )
      ],
    );
  }
}

class CustomPasswordTextField extends StatefulWidget {
  final String label;
  // final String hintText;
  const CustomPasswordTextField({super.key, required this.label});

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: regular,
        ),
        Ui.boxHeight(5),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: widget.label,
              hintStyle: hintStyle,
              border: border,
              focusedBorder: border,
              enabledBorder: border,
              suffixIcon: GestureDetector(
                  onTap: _toggleShow,
                  child: Icon(
                    obscureText
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: CustomColors.grey100,
                    size: 22,
                  ))),
        )
      ],
    );
  }

  _toggleShow() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
