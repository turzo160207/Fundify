import 'package:flutter/material.dart';
import 'package:appstick/styles/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appstick/views/transfer_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final scale = 390/width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Stack(
              children: [
                Flex(
                  direction: Axis.vertical,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: AppColors.buttonColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/images/avatar.png'),
                                ),
                                SizedBox(width: 10.w),
                                Image.asset('assets/images/balance.png', width: 209.w, height: 50.h), // Replace with your image asset
                                Image.asset('assets/images/connector.png', width: 24.w, height: 4.h),
                                Image.asset('assets/images/bell.png', width: 50.w, height: 50.h), // Replace with your image asset
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: AppColors.primary,

                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 140.h,
                  left: MediaQuery.of(context).size.width.w / 2 - (328.w / 2),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      // Calculate scale factor based on the screen width
                      double screenWidth = MediaQuery.of(context).size.width;
                      double scaleFactor = screenWidth / 414; // Assuming 414 is the reference width

                      return Transform.scale(
                        scale: scale,
                        child: Image.asset(
                          'assets/images/card.png',
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 286.h,
                  left: MediaQuery.of(context).size.width.w / 2 - (313.w / 2),
                  child: Image.asset(
                    'assets/images/line.png',
                  ),
                ),
                Positioned(
                  top: 350.h,
                  left: 20.w,
                  right: 20.w,
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Image.asset('assets/images/topup.png', width: 24.w, height: 24.w),
                          label: Text('Top up',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.r),
                                bottomLeft: Radius.circular(10.r),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Get.to(TransferPage());
                          },
                          icon: Image.asset('assets/images/transfer.png', width: 12.w, height: 24.h),
                          label: Text('Transfer',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0), // Adjust the radius here
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Image.asset('assets/images/dots.png', width: 24.w, height: 24.h),
                          label: Text('More',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.r),
                                bottomRight: Radius.circular(10.r),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 440.h,
                  left: MediaQuery.of(context).size.width.w / 2 - (150.w),
                  child: Row(
                    children: [
                      Text(
                        'Transactions',
                        style: TextStyle(
                          color: AppColors.font,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 140.w),
                      Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 480.h,
                  left: MediaQuery.of(context).size.width.w / 2 - (328.w / 2),
                  child: Image.asset(
                    'assets/images/transactions.png',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
