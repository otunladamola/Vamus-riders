import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'ui/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 869),
        builder: ((context, child) {
          return MaterialApp(
            theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFFFFBFA)),
            home: const SignUp(),
            title: 'Vamus',
          );
        }));
  }
}

