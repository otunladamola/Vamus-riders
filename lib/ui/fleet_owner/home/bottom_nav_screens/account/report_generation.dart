import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vamuz_riders/ui/utils/custom_button.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/colors.dart';

class ReportGeneration extends StatelessWidget {
  const ReportGeneration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: false,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 18,
            ),
          ),
          titleSpacing: 0,
          title: Text(
            "Report Generation",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 25, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter start and end dates to generate report',
                  style: regular2.copyWith(fontSize: 11),
                ),
                Ui.boxHeight(31),
                const Center(
                  child: Text(
                    'Account Balance',
                    style: regular2,
                  ),
                ),
                Ui.boxHeight(5),
                const Center(
                  child: Text(
                    '₦7000',
                    style: boldHeading5,
                  ),
                ),
                Ui.boxHeight(35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    dateSpan(dateSpan: 'Start Date'),
                    dateSpan(dateSpan: 'End Date'),
                  ],
                ),
                Ui.boxHeight(21),
                CustomButton(text: 'Search', onTap: () {}),
                Ui.boxHeight(40),
              ],
            ),
          ),
          invoice(
              narration: 'Commission paid',
              narrationColor: CustomColors.success,
              refCode: 'Ref:1234567890000THYJU',
              dateStamp: 'Wednesday, March 11, 2022 13:10',
              cost: '₦5000'),
          Ui.boxHeight(6),
          Container(
            height: 1,
            width: ScreenUtil().screenWidth,
            color: CustomColors.grey100,
          ),
          Ui.boxHeight(10),
          invoice(
              narration: 'Withdraw',
              narrationColor: CustomColors.primary,
              refCode: 'Ref:1234567890000THYJU',
              dateStamp: 'Wednesday, March 11, 2022 13:10',
              cost: '-₦2000'),
        ],
      ),
    );
  }

  Widget dateSpan({dateSpan}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dateSpan,
          style: regular,
        ),
        Ui.boxHeight(30),
        Container(
          height: 1,
          width: 171,
          color: CustomColors.grey100,
        ),
      ],
    );
  }

  Widget invoice({narration, narrationColor, refCode, dateStamp, cost}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 0, 17, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                narration,
                style: regular2.copyWith(color: narrationColor),
              ),
              Ui.boxHeight(6),
              Text(
                refCode,
                style: regular2.copyWith(fontSize: 11),
              ),
              Ui.boxHeight(6),
              Text(
                dateStamp,
                style: regular2,
              ),
              Ui.boxHeight(6),
            ],
          ),
          Text(
            cost,
            style: boldRegular,
          )
        ],
      ),
    );
  }
}
