import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:appstick/styles/app_colors.dart';
import 'package:appstick/views/onboarding_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appstick/views/send_pincode_screen.dart';

class SendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Stack(
            children: [

              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height:10.h,),

                    SizedBox(height:40.h,),
                    Text(
                      "Send to Fundify Account",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.font,
                      ),
                    ),
                    SizedBox(height:34.h,),

                    TextField(
                      style: TextStyle(fontSize: 16.sp, color: AppColors.font, fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.textfield,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 17.w),
                        hintText: "@Usertag or Name",
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
                    SizedBox(height: 280.h),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 80.h),
                  child: FractionallySizedBox(
                    child: SizedBox(
                      width: 328.w,
                      height: 50.h,
                      child: FloatingActionButton(
                        heroTag: "btn3",
                        backgroundColor: AppColors.buttonColor,
                        onPressed: (){
                          Get.to(SendPinCodeScreen());
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
            ],
          ),

        ),
      ),
    );
  }
}