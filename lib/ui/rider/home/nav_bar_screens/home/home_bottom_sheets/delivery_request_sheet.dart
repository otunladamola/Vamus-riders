
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';

class DeliveryRequestBottomSheet extends StatefulWidget {
  const DeliveryRequestBottomSheet({super.key});

  @override
  State<DeliveryRequestBottomSheet> createState() =>
      _DeliveryRequestBottomSheetState();
}

class _DeliveryRequestBottomSheetState
    extends State<DeliveryRequestBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.33,
      expand: false,
      builder: (context, scrollController) => Container(
        width: ScreenUtil().screenWidth,
        padding: EdgeInsets.fromLTRB(17, 15.h, 15, 32.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Delivery Request",
              style: boldRegular,
            ),
            Ui.boxHeight(18),
            Container(
              // height: 144,
              width: ScreenUtil().screenWidth,
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 9),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: CustomColors.grey100)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Off Ibeshe Rd., After Nichemtex, Box 217 \nIkorodu, Lagos",
                    style: regular2,
                  ),
                  Ui.boxHeight(2),
                  Text(
                    "John Doe",
                    style: regular2,
                  ),
                  Ui.boxHeight(2),
                  Text(
                    "08057022559",
                    style: regular2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 136.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [declineButton(), acceptButton()],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget declineButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 7.5),
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: CustomColors.primary)),
        child: Center(
          child: Text(
            "Decline",
            style: regular.copyWith(color: CustomColors.primary),
          ),
        ),
      ),
    );
  }

  Widget acceptButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 7.5),
        height: 40,
        decoration: BoxDecoration(
          color: CustomColors.primary,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            "Accept",
            style: regular.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
