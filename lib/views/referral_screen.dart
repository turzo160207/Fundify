import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:appstick/styles/app_colors.dart';
import 'package:appstick/views/onboarding_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appstick/views/pincode_screen.dart';

class ReferralScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Stack(
            children: [
              Positioned(
                top: 60.h,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/coin.png',
                  height: 35.h,
                  width: 150.w,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height:10.h,),
                    Image.asset(
                      'assets/images/bar.png',
                      height: 60.h,
                      width: 100.w,
                    ),
                    SizedBox(height:40.h,),
                    Text(
                      "Let’s Get You Started",
                      style: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.font,
                      ),
                    ),
                    SizedBox(height:4.h,),
                    Text(
                      "Enter a Referral code and we will give you 10 FundCoins just to get the ball rolling.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primary
                      ),
                    ),
                    SizedBox(height: 32.h,),
                    TextField(
                      style: TextStyle(fontSize: 16.sp, color: AppColors.font, fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.textfield,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 17.w),
                        hintText: "Referral Code (Optional)",
                        hintStyle: TextStyle(color: AppColors.font.withOpacity(0.6)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(color: Colors.transparent, width: 0)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(color: Colors.transparent, width: 0)
                        ),
                      ),
                    ),
                    SizedBox(height: 280.0),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 80.0),
                  child: FractionallySizedBox(
                    child: SizedBox(
                      width: 328.w,
                      height: 50.h,
                      child: FloatingActionButton(
                        heroTag: "btn3",
                        backgroundColor: AppColors.buttonColor,
                        onPressed: (){
                          Get.to(PinCodeScreen());
                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(fontSize: 16.sp, color: AppColors.primary, fontWeight: FontWeight.w600),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ),
                  ),
                ),

              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: FractionallySizedBox(
                    child: SizedBox(
                      width: 328.w,
                      height: 50.h,
                      child: FloatingActionButton(
                        backgroundColor: AppColors.primary,
                        onPressed: (){
                          Get.to(PinCodeScreen());
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(fontSize: 14.sp, color: AppColors.font, fontWeight: FontWeight.w500),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ),
                  ),
                ),

              ),
            ],
          ),

        ),
      ),
    );
  }
}