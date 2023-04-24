import 'package:flutter/material.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';

Widget locationContainer() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: CustomColors.grey75)),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(7, 12, 0, 15),
          child: Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    border: Border.all(color: CustomColors.secondary, width: 7),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Ui.boxWidth(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Pickup Location",
                    style: hintStyle,
                  ),
                  Ui.boxHeight(2),
                  const Text("Folawiyo Cres. Ikosi Ketu", style: regular)
                ],
              )
            ],
          ),
        ),
        Stack(
          children: const [
            Divider(
              color: CustomColors.grey75,
              thickness: 1,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(7, 8, 0, 15),
          child: Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    border: Border.all(color: CustomColors.primary, width: 7),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Ui.boxWidth(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Drop-off Location",
                    style: hintStyle,
                  ),
                  Ui.boxHeight(2),
                  const Text("Ikeja City Mall, ICM ", style: regular)
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
