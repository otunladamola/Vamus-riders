import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/ui/utils/navigation/page_route.dart';
import 'ui/fleet_owner/authentication/sign_up_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 869),
        builder: ((context, child) {
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            onPanDown: (_) {
              FocusScope.of(context).unfocus();
            },
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              enableLog: true,
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
              title: 'Vamuz',
              theme:
                  ThemeData(scaffoldBackgroundColor: CustomColors.accentColor1),
            ),
          );
        }));
  }
}
