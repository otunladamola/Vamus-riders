import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/ui/utils/constant/route_constant.dart';

class MyDeliveries extends StatefulWidget {
  const MyDeliveries({super.key});

  @override
  State<MyDeliveries> createState() => _MyDeliveriesState();
}

class _MyDeliveriesState extends State<MyDeliveries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: false,
          titleSpacing: 22,
          title: Text(
            "Deliveries",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: ListView(
        children: [
          deliveryDetails(
              address: "20, Moshood Abiola Crescent,Ikeja..  ",
              timeStamp: "20 Dec, 21:17",
              amount: "₦15,000",
              onTap: () {
                Get.toNamed(RouteConstant.DELIVERY_SUMMARY);
              }),
          deliveryDetails(
              onTap: () {
                Get.toNamed(RouteConstant.DELIVERY_SUMMARY);
              },
              address: "Off Limpopo Street, FHA, Maitama... ",
              timeStamp: "10 Dec, 21:17",
              amount: "₦1500")
        ],
      ),
    );
  }

  Widget deliveryDetails({address, timeStamp, amount, onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 9, 18, 9),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(11),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: CustomColors.grey25),
                  child: Image.asset(carBack),
                ),
                Ui.boxWidth(7),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 238.w,
                      child: Text(
                        address,
                        overflow: TextOverflow.ellipsis,
                        style: hintStyle.copyWith(color: Colors.black),
                      ),
                    ),
                    Ui.boxHeight(2),
                    Text(
                      timeStamp,
                      style: overline.copyWith(fontSize: 11),
                    ),
                  ],
                ),
                Ui.boxWidth(11),
                Text(
                  amount,
                  style: boldRegular,
                ),
              ],
            ),
          ),
          const Divider(
            color: CustomColors.grey100,
          )
        ],
      ),
    );
  }
}
