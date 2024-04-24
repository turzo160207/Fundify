import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appstick/styles/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appstick/models/rewards_info.dart';
import 'package:appstick/models/rewards_details_info.dart';
import 'package:appstick/views/rewards_details_page.dart';
import 'package:appstick/views/gift_cards.dart';

class RewardsController extends GetxController {
  final showRewardsDetail = false.obs;
  final showGiftCards = false.obs;

  void toggleRewardsDetailVisibility() {
    showRewardsDetail.toggle();
  }
  void toggleGiftCardsVisibility() {
    showGiftCards.toggle();
  }
}

class RewardsPage extends StatelessWidget {
  final RewardsController _controller = Get.put(RewardsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Obx(
              () => Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 32.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Track',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.font,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Rewards',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.font,
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              _controller.toggleRewardsDetailVisibility();
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Image.asset(
                                'assets/images/info.png',
                                width: 20.w,
                                height: 20.h,
                                color: AppColors.font,
                              ),
                            ),
                          ),
                        ),
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
                            height: 20.h,
                          ),
                          Text(
                            '179,000',
                            style: TextStyle(
                              color: AppColors.font,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 8.w),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: ListView.builder(
                        itemCount: rewardTabs.length,
                        itemBuilder: (context, index) {
                          final reward = rewardTabs[index];
                          return Container(
                            width: 296.w,
                            height: 180.h,
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
                                    ElevatedButton(
                                      onPressed: () {
                                        _controller.toggleGiftCardsVisibility();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.buttonColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.r),
                                        ),
                                        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 132.0),
                                      ),
                                      child: Text(
                                        'Redeem',
                                        style: TextStyle(
                                            color: AppColors.primary,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600
                                        ),
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
              if (_controller.showRewardsDetail.isTrue)
                RewardsDetailPage(
                  onBackTap: _controller.toggleRewardsDetailVisibility,
                ),
              if (_controller.showGiftCards.isTrue)
                GiftCardsPage(
                  onBackTap: _controller.toggleGiftCardsVisibility,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
