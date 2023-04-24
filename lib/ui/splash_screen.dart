import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/ui/fleet_owner/authentication/sign_up_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Get.off(() => const FleetOwnerSignUp());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primary,
      body: Container(
        padding: EdgeInsets.all(30.h),
        decoration: const BoxDecoration(color: CustomColors.primary),
        child: Center(
          child: Image.asset(
            vamuz,
            height: 99,
            width: 189,
          ),
        ),
      ),
    );
  }
}
