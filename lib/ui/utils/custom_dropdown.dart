import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/ui/utils/custom_textfield.dart';

Widget customDropDown(
    {label, hintText, selectedValue, dropdownItems, onChanged}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: regular,
      ),
      Ui.boxHeight(5),
      SizedBox(
        height: 48,
        child: DropdownButtonFormField(
            value: selectedValue,
            items: dropdownItems,
            hint: Text(
              hintText,
              style: hintStyle,
            ),
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(19, 12, 12, 15),
                border: border,
                enabledBorder: border,
                focusedBorder: border),
            onChanged: onChanged),
      ),
    ],
  );
}
