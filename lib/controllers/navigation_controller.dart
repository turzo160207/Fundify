import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{
  var selectedIndex = 2.obs;
  void changeIndex(int index){
    selectedIndex.value = index;
  }
}