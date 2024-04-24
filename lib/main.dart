import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appstick/views/splash_screen.dart';
import 'package:appstick/views/pincode_screen.dart';
import 'package:appstick/views/referral_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:appstick/views/home_page.dart';
import 'package:appstick/views/nav_bar.dart';
import 'package:appstick/views/gift_cards.dart';
import 'package:appstick/views/rewards_page.dart';
import 'package:appstick/views/send_page.dart';
import 'package:appstick/views/delivery_screen.dart';

void main() {
  // Get.put(OnboardingController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? widget) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My App',
        home: SplashScreen(), // Set the splash screen as the initial route
      ),
      designSize: const Size(390,844),
    );
  }
}