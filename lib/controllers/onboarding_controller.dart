import 'package:flutter/material.dart';
import 'package:appstick/models/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';
import 'package:appstick/views/referral_screen.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  bool get isBackButtonVisible => selectedPageIndex.value > 0;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      Get.to(ReferralScreen());
    } else
      pageController.nextPage(duration: 10.milliseconds, curve: Curves.linear);
  }
  backAction() {
    pageController.previousPage(duration: Duration(milliseconds: 10), curve: Curves.linear);


  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/images/welcome1.png', 'Welcome to Fundify!',
        'Empower your finances and earn rewards with every smart move.'),
    OnboardingInfo('assets/images/earn.png', 'Earn FundCoins Easily!',
        'Refer friends, make transactions, and set savings goals to earn FundCoins.'),
    OnboardingInfo('assets/images/reward.png', 'Unlock Exciting Rewards!',
        "Redeem FundCoins for travel vouchers, gift cards, and more. Let's start earning!")
  ];
}