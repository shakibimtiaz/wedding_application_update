import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../auth/view/login_screen.dart';
import '../../chat/view/chat_view.dart';
import '../../home_screen/view/home_view.dart';
import '../../true_view/view/true_view.dart';

class DashboardController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> screens = [
    HomeView(),
    TrueView(),
    ChatView(),
    const Center(child: Text('Offers Screen')),
    AuthScreen(),
  ];

  void onItemTapped(int index) {
    if (index == 4) {
      Get.to(() => AuthScreen()); 
    } else {
      selectedIndex.value = index;
    }
  }
}
