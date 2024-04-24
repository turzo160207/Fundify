import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appstick/styles/app_colors.dart';
import 'package:appstick/views/onboarding_page.dart';

// Your Splash Screen Widget
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(OnboardingPage());
    });

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset('assets/images/splash.png'),
      ),
    );
  }
}
