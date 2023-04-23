import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';

class DeliveryConfirmationBottomSheet extends StatefulWidget {
  const DeliveryConfirmationBottomSheet({super.key});

  @override
  State<DeliveryConfirmationBottomSheet> createState() =>
      _DeliveryConfirmationBottomSheetState();
}

class _DeliveryConfirmationBottomSheetState
    extends State<DeliveryConfirmationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      expand: false,
      builder: (context, scrollController) => Container(
        width: ScreenUtil().screenWidth,
        padding: EdgeInsets.fromLTRB(16, 26.h, 15, 32.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }

  Widget deliveryDetail() {
    return Column(
      children: [
        const Text(
          "Pickup Address",
          style: boldRegular,
        ),
        Ui.boxHeight(7),
        const Text(
          "Pickup Address",
          style: boldRegular,
        ),
        Divider(
          color: CustomColors.grey100,
        )
      ],
    );
  }
}
