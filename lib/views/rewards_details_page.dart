import 'package:flutter/material.dart';
import 'package:appstick/styles/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appstick/models/rewards_details_info.dart';

class RewardsDetailPage extends StatelessWidget {
  final VoidCallback onBackTap;

  const RewardsDetailPage({Key? key, required this.onBackTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: onBackTap,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.w),
                      child: Image.asset(
                        'assets/images/back.png',
                        width: 20.w,
                        height: 20.h,
                        color: AppColors.font,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'What are\n FundCoins?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.font,
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 60.w),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/coin.png',
                      width: 20.w,
                      height: 20.h, //
                    ),
                    SizedBox(width: 8.w), //
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: ListView.builder(
                  itemCount: rewardDetailsTabs.length,
                  itemBuilder: (context, index) {
                    final reward = rewardDetailsTabs[index];
                    return Container(
                      width: 296.w,
                      height: 190.h,
                      padding: EdgeInsets.all(16.0),
                      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: AppColors.textfield,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                reward.title,
                                style: TextStyle(
                                  color: AppColors.font,
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                reward.description,
                                style: TextStyle(
                                  color: AppColors.font,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 0,
                            right: 16.0,
                            child: Text(
                              '${reward.amount}',
                              style: TextStyle(
                                color: AppColors.font,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
