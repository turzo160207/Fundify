import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:appstick/controllers/onboarding_controller.dart';
import 'package:appstick/styles/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPage extends StatelessWidget {
  final _controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 60.h,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/coin.png',
                height: 40.h,
              ),
            ),
            PageView.builder(
                controller: _controller.pageController,
                onPageChanged: (index) {
                  _controller.selectedPageIndex.value = index;
                },
                itemCount: _controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            _controller.onboardingPages[index].imageAsset),
                        Text(
                          _controller.onboardingPages[index].title,
                          style: TextStyle(
                              fontSize: 32.sp, fontWeight: FontWeight.w500,color: AppColors.font),
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 64.h),
                          child: Text(
                            _controller.onboardingPages[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.sp,color: AppColors.font),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
            Padding(
                padding: EdgeInsets.only(top: 40.h),
                child:Align(
                  alignment: Alignment.topCenter,
                  child: SmoothPageIndicator(
                    controller: _controller.pageController,
                    count:   _controller.onboardingPages.length,
                    axisDirection: Axis.horizontal,
                    effect:  SlideEffect(
                        spacing:  10,
                        radius:  10.r,
                        dotWidth:  30.w,
                        dotHeight:  3.h,
                        paintStyle:  PaintingStyle.stroke,
                        strokeWidth:  0,
                        dotColor:  AppColors.inactivepage,
                        activeDotColor:  AppColors.currentpage,
                    ),
                  )
                ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 90.0),
                child: FractionallySizedBox(
                  child: SizedBox(
                    width: 328.w,
                    height: 50.h,
                    child: FloatingActionButton(
                      heroTag: "btn1",
                      backgroundColor: AppColors.buttonColor,
                      onPressed: _controller.forwardAction,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Obx(() {
                        return Text(_controller.isLastPage ? 'Continue' : 'Continue');
                      }),
                    ),
                  ),
                ),
              ),
            ),
            Obx(() {
              return Visibility(
                visible: _controller.isBackButtonVisible,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.h),
                    child: FractionallySizedBox(
                      child: SizedBox(
                        width: 328.w,
                        height: 50.h,
                        child: TextButton(
                          onPressed: _controller.backAction,
                          child: Text('Back',
                            style: TextStyle(fontSize: 14.sp, color: AppColors.font, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
