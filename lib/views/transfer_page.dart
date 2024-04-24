import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:appstick/styles/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appstick/views/send_page.dart';

class TransferPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 640.h),
                  child: Text(
                    "Transfer",
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.font,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80.h),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 120.h),
                  child: FractionallySizedBox(
                    child: SizedBox(
                      width: 328.w,
                      height: 52.h,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(SendPage());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.textfield,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/fundifyAccount.png'),
                            SizedBox(width: 8.w),
                            Text(
                              'Fundify Account',
                              style: TextStyle(fontSize: 16.sp, color: AppColors.font, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 190.h),
                  child: FractionallySizedBox(
                    child: SizedBox(
                      width: 328.w,
                      height: 52.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.textfield,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/localBank.png'),
                            SizedBox(width: 8.w),
                            Text(
                              'Local Bank',
                              style: TextStyle(fontSize: 16.sp, color: AppColors.font, fontWeight: FontWeight.w500),
                            ),
                          ],
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
