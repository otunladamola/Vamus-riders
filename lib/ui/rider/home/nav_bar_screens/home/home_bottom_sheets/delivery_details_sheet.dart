import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';

class DeliveryDetailsBottomSheet extends StatefulWidget {
  const DeliveryDetailsBottomSheet({super.key});

  @override
  State<DeliveryDetailsBottomSheet> createState() =>
      _DeliveryDetailsBottomSheetState();
}

class _DeliveryDetailsBottomSheetState
    extends State<DeliveryDetailsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.47,
      expand: false,
      builder: (context, scrollController) => SizedBox(
        width: ScreenUtil().screenWidth,
        child: ListView(
          padding: EdgeInsets.fromLTRB(16, 26.h, 15, 32.h),
          physics: ClampingScrollPhysics(),
          children: [
            deliveryDetail("Pickup Address",
                "Off Ibeshe Rd., After Nichemtex, Box 217 Ikorodu, Lag."),
            Ui.boxHeight(17.h),
            deliveryDetail("Dropoff Address",
                "Off Ibeshe Rd., After Nichemtex, Box 217 Ikorodu, Lag."),
            Ui.boxHeight(17.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                deliveryDetail("Delivery Cost", "₦16500", width: 171.w),
                deliveryDetail("Est. Commission ", "₦1650 - ₦1650",
                    width: 171.w),
              ],
            ),
            Ui.boxHeight(17.h),
            Padding(
              padding: EdgeInsets.only(right: 187.w),
              child:
                  deliveryDetail("Delivery Time", "3-5  hours", width: 171.w),
            ),
            Ui.boxHeight(17.h),
          ],
        ),
      ),
    );
  }

  Widget deliveryDetail(label, value, {width}) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: boldRegular,
          ),
          Ui.boxHeight(7),
          Text(
            value,
            style: regular2,
          ),
          Divider(
            color: CustomColors.grey100,
          )
        ],
      ),
    );
  }
}
