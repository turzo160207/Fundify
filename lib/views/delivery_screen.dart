import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:appstick/styles/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appstick/models/delivery_info.dart';
import 'package:appstick/views/nav_bar.dart';


class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 150.h,
              left: 28.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: deliveryDetails.map((deliveryInfo) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${deliveryInfo.title}',
                        style: TextStyle(
                          color: AppColors.font,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        '${deliveryInfo.description}',
                        style: TextStyle(
                          color: AppColors.font.withOpacity(0.7),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 30.h),
                    ],
                  );
                }).toList(),
              ),
            ),
            Positioned(
              top: 50.h,
              left: MediaQuery.of(context).size.width / 2 - (186.w / 2),
              child: Text(
                'Money Sent!',
                style: TextStyle(
                  color: AppColors.font,
                  fontSize: 32.sp,
                ),
              ),
            ),
            Positioned(
              top: 100.h,
              left: MediaQuery.of(context).size.width / 2 - (23.w / 2),
              child: Text(
                '+20',
                style: TextStyle(
                  color: AppColors.font,
                  fontSize: 18.sp,
                ),
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
                        Get.off(NavigationPage());
                      },
                      child: Text(
                        'Print Receipt',
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
    );
  }
}
