import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:appstick/styles/app_colors.dart';
import 'package:appstick/views/onboarding_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appstick/views/nav_bar.dart';
import 'package:appstick/views/delivery_screen.dart';

class SendPinCodeScreen extends StatefulWidget {
  const SendPinCodeScreen({super.key});

  @override
  State<SendPinCodeScreen> createState() => _SendPinCodeScreen();
}

class _SendPinCodeScreen extends State<SendPinCodeScreen> {
  String enteredPin = '';
  bool isPinVisible = false;

  Widget numButton(int number){
    return Padding(
      padding: EdgeInsets.only(top: 24.h),
      child: TextButton(
        onPressed: (){
          setState((){
            if( enteredPin.length < 4){
              enteredPin +=number.toString();
            }
          });
        },
        child: Text(
          number.toString(),
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
        ),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 140.h),
                  child: Center(
                    child: Text(
                      'Enter Your Pin',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50.h),

                /// pin code area
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    4,
                        (index) {
                      return Container(
                        margin: EdgeInsets.all(16.h),
                        width: isPinVisible ? 50.h : 12.h,
                        height: isPinVisible ? 50.h : 12.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(42.r),
                          color: index < enteredPin.length
                              ? isPinVisible
                              ? Colors.green
                              : AppColors.pincolor
                              : AppColors.pincolor.withOpacity(0.5),
                        ),
                        child: isPinVisible && index < enteredPin.length
                            ? Center(
                          child: Text(
                            enteredPin[index],
                            style: TextStyle(
                              fontSize: 17.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                            : null,
                      );
                    },
                  ),
                ),


                SizedBox(height: isPinVisible ? 50.h : 8.h),

                for (var i = 0; i < 3; i++)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        3,
                            (index) => numButton(1 + 3 * i + index),
                      ).toList(),
                    ),
                  ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        // Custom Icon
                        child: Image.asset(
                          'assets/images/face.png',
                          height: 32.h,
                          width: 32.w,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.h),
                        child: numButton(0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.h, top: 28.h),
                        child: TextButton(
                          onPressed: () {
                            setState(
                                  () {
                                if (enteredPin.isNotEmpty) {
                                  enteredPin = enteredPin.substring(0, enteredPin.length - 1);
                                }
                              },
                            );
                          },
                          child: Text(
                            'Clear',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0), // Adjust as needed
                    child: FractionallySizedBox(
                      child: SizedBox(
                        width: 328.w,
                        height: 50.h,
                        child: FloatingActionButton(
                          backgroundColor: AppColors.primary,
                          onPressed: (){
                            Get.off(DeliveryScreen());
                          },
                          child: Text(
                            'Confirm',
                            style: TextStyle(fontSize: 16.sp, color: AppColors.font, fontWeight: FontWeight.w600),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r), // Adjust radius as needed
                          ),
                        ),
                      ),
                    ),
                  ),

                ),
                SizedBox(height: 8.h,),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Pin?',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 64.h,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/coin2.png',
                height: 35.h,
                width: 150.w,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}