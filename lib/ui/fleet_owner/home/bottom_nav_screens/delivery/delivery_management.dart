import 'package:flutter/material.dart';
import 'package:vamuz_riders/constants/spacing.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/styles.dart';

class DeliveryManagement extends StatelessWidget {
  const DeliveryManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: false,
          titleSpacing: 16,
          title: Text(
            "Delivery Management",
            style: heading4.copyWith(color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'History',
              style: boldHeading5,
            ),
            Ui.boxHeight(11),
            deliveryContainer(
              status: 'COMPLETED',
              statusColor: CustomColors.success,
              dateTime: '19/10/22 11:10 PM',
              address: 'Off Ibeshe Rd., After Nichemtex, Box 217 Ikorodu,',
              state: 'Lagos',
              name: 'John Doe',
              phoneNumber: '08057022559',
            ),
            Ui.boxHeight(13),
            deliveryContainer(
                status: 'COMPLETED',
                statusColor: CustomColors.success,
                dateTime: '19/10/22 11:10 PM',
                address: 'Off Ibeshe Rd., After Nichemtex, Box 217 Ikorodu,',
                state: 'Lagos',
                name: 'John Doe',
                phoneNumber: '08057022559'),
            Ui.boxHeight(13),
            deliveryContainer(
              status: 'NOT COMPLETED',
              statusColor: CustomColors.error,
              dateTime: '19/10/22 11:10 PM',
              address: 'Off Ibeshe Rd., After Nichemtex, Box 217 Ikorodu,',
              state: 'Lagos',
              name: 'John Doe',
              phoneNumber: '08057022559',
            )
          ],
        ),
      ),
    );
  }

  Widget deliveryContainer(
      {status, statusColor, dateTime, address, name, state, phoneNumber}) {
    return Container(
      height: 115,
      decoration: BoxDecoration(
          border: Border.all(color: CustomColors.grey100),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(11, 5, 17, 9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  status,
                  style: boldRegular.copyWith(color: statusColor, fontSize: 11),
                ),
                Ui.boxWidth(5),
                const CircleAvatar(
                  radius: 5,
                  backgroundColor: CustomColors.grey100,
                ),
                Ui.boxWidth(7),
                Text(
                  dateTime,
                  style: boldRegular.copyWith(color: statusColor, fontSize: 11),
                )
              ],
            ),
            Ui.boxHeight(7),
            Text(
              address,
              style: regular2,
            ),
            Ui.boxHeight(3),
            Text(
              state,
              style: regular2,
            ),
            Ui.boxHeight(3),
            Text(
              name,
              style: regular2,
            ),
            Ui.boxHeight(3),
            Text(
              phoneNumber,
              style: regular2,
            ),
          ],
        ),
      ),
    );
  }
}
