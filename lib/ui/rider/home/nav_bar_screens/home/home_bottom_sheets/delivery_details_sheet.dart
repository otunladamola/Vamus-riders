import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/state/providers/delivery_sheets_provider.dart';
import 'package:vamuz_riders/ui/rider/home/nav_bar_screens/home/home_bottom_sheets/widgets/location_container.dart';
import 'package:vamuz_riders/ui/utils/custom_button.dart';

class DeliveryDetailsBottomSheet extends ConsumerStatefulWidget {
  const DeliveryDetailsBottomSheet({super.key});

  @override
  ConsumerState<DeliveryDetailsBottomSheet> createState() =>
      _DeliveryDetailsBottomSheetState();
}

class _DeliveryDetailsBottomSheetState
    extends ConsumerState<DeliveryDetailsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      expand: false,
      builder: (context, scrollController) => SizedBox(
        width: ScreenUtil().screenWidth,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16.h),
              height: 5,
              width: 100,
              decoration: BoxDecoration(
                  color: CustomColors.carouselColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(16, 26.h, 15, 31.h),
                physics: const ClampingScrollPhysics(),
                children: [
                  locationContainer(),
                  Ui.boxHeight(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Delivery Cost",
                              style: boldRegular,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                            )
                          ],
                        ),
                        const Text(
                          "₦1650",
                          style: boldRegular,
                        ),
                      ],
                    ),
                  ),
                  Ui.boxHeight(10.h),
                  rowItems(key: "Base fare", value: "₦1500"),
                  Ui.boxHeight(9.h),
                  rowItems(key: "Base fare per KM", value: "₦100"),
                  Ui.boxHeight(17.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Commission on Delivery",
                          style: boldRegular,
                        ),
                        Text(
                          "   ₦50",
                          style: regular.copyWith(color: CustomColors.grey),
                        ),
                      ],
                    ),
                  ),
                  Ui.boxHeight(26.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Est. Delivery Time ",
                          style: boldRegular,
                        ),
                        Text(
                          "1 day and 3 hours ",
                          style: regular,
                        ),
                      ],
                    ),
                  ),
                  Ui.boxHeight(50.h),
                  CustomButton(
                      text: "Confirm",
                      onTap: () {
                        ref
                            .read(DeliverySheetProvider.state)
                            .confirmAcceptance();
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowItems({key, value}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            key,
            style: regular.copyWith(color: CustomColors.grey),
          ),
          Text(
            value,
            style: regular.copyWith(color: CustomColors.grey),
          ),
        ],
      ),
    );
  }
}
