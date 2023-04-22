import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vamuz_riders/constants/images.dart';
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
      bottomSheet: DeliveryRequestBottomSheet(),
    );
  }
}
