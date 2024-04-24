import 'package:flutter/material.dart';
import 'package:appstick/views/rewards_page.dart';
import 'package:appstick/views/transfer_page.dart';
import 'package:appstick/views/home_page.dart';
import 'package:appstick/views/wallet_page.dart';
import 'package:appstick/views/setting_page.dart';
import 'package:appstick/controllers/navigation_controller.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';
import 'package:appstick/styles/app_colors.dart';

class NavigationPage extends StatelessWidget {
  NavigationController navigationController = Get.put(NavigationController());
  NavigationPage({Key? key}) : super(key: key);

  final screens = [
    RewardsPage(),
    TransferPage(),
    HomePage(),
    WalletPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>IndexedStack(
        index: navigationController.selectedIndex.value,
          children: screens,
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primary,
        selectedItemColor: AppColors.font,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (index){
          navigationController.changeIndex(index);

        },
        currentIndex: navigationController.selectedIndex.value,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/navbar_rewards.png'),
            label: "Rewards",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/navbar_transfer.png'),
            label: "Transfer",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/navbar_home2.png'),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/navbar_wallet.png'),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/navbar_settings.png'),
            label: "Settings",
          ),

        ],
        ),
      ),

    );
  }
}
