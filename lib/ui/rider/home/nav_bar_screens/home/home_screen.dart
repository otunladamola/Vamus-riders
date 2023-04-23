import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/state/providers/delivery_sheets_provider.dart';
import 'package:vamuz_riders/ui/rider/home/nav_bar_screens/home/home_bottom_sheets/delivery_confirmed_sheet.dart';
import 'package:vamuz_riders/ui/rider/home/nav_bar_screens/home/home_bottom_sheets/delivery_details_sheet.dart';
import 'package:vamuz_riders/ui/rider/home/nav_bar_screens/home/home_bottom_sheets/delivery_request_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        map,
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        fit: BoxFit.cover,
      ),
      bottomSheet: Consumer(builder: (context, ref, child) {
        final DeliverySheetsNotifier sheetState = ref.watch(
          DeliverySheetProvider.state,
        );
        switch (sheetState.currentSheet) {
          case DeliverySheets.request:
            return const DeliveryRequestBottomSheet();
          case DeliverySheets.details:
            return const DeliveryDetailsBottomSheet();
          case DeliverySheets.confirmed:
            return const DeliveryConfirmedBottomSheet();
        }
      }),
    );
  }
}
