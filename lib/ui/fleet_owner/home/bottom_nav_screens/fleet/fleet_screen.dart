import 'package:flutter/material.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/colors.dart';

class FleetManagementScreen extends StatelessWidget {
  const FleetManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: false,
        titleSpacing: 16,
        title: Text(
          "Fleet Management",
          style: heading4.copyWith(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Vehicle Information',
                  style: boldHeading5,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: CustomColors.accentColor1,
                        border: Border.all(color: CustomColors.primary),
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.add,
                            color: CustomColors.textColor,
                          ),
                          Ui.boxWidth(13),
                          const Text('Add Vehicle', style: regular2),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Ui.boxHeight(12),
            Container(
              height: 317,
              decoration: BoxDecoration(
                  color: CustomColors.accentColor1,
                  border: Border.all(color: CustomColors.grey75),
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.only(left: 11.0, top: 6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vehicleInfo(label: "Manufacturer", details: "Toyota"),
                    Ui.boxHeight(10),
                    Row(
                      children: [
                        vehicleInfo(label: "Model", details: "Venza"),
                        Ui.boxWidth(135),
                        vehicleInfo(label: "Model year", details: "2011")
                      ],
                    ),
                    Ui.boxHeight(10),
                    Row(
                      children: [
                        vehicleInfo(label: "Colour", details: "Brown"),
                        Ui.boxWidth(135),
                        vehicleInfo(label: "VIN Number", details: "Valid")
                      ],
                    ),
                    Ui.boxHeight(10),
                    vehicleInfo(label: "Plate Number", details: "KFB 678 098"),
                    vehicleInfoItem(
                        leading: Image.asset(
                          editAccount,
                          height: 17,
                          width: 20,
                        ),
                        text: 'Edit/ Update Vehicle Info'),
                    vehicleInfoItem(
                        leading: Icon(Icons.delete),
                        text: 'Delete Vehicle Info')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget vehicleInfo({label, details}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: boldRegular),
        Text(
          details,
          style: regular2,
        )
      ],
    );
  }

  Widget vehicleInfoItem({leading, text, onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(11, 29, 18, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    leading,
                    Ui.boxWidth(20),
                    Text(
                      text,
                      style: hintStyle.copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
