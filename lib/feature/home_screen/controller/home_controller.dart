import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  var searchController = TextEditingController();
  final List<Map<String, String>> offers = [
    {"offer_number": "#001", "discount": "10%"},
    {"offer_number": "#002", "discount": "20%"},
    {"offer_number": "#003", "discount": "30%"},
    {"offer_number": "#004", "discount": "40%"},
    {"offer_number": "#005", "discount": "50%"},
  ];

  final PageController pageController = PageController();
  final RxInt currentPage = 0.obs;
  Timer? timer;

  final List<String> images = [
    'assets/images/venue1.jpeg',
    'assets/images/venue2.jpeg',
    'assets/images/venue3.jpeg',
  ];

  @override
  void onInit() {
    super.onInit();
    startAutoSlide();
  }

  @override
  void onClose() {
    timer?.cancel();
    pageController.dispose();
    super.onClose();
  }

  void startAutoSlide() {
    timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (currentPage.value < images.length - 1) {
        currentPage.value++;
      } else {
        currentPage.value = 0;
      }

      pageController.animateToPage(
        currentPage.value,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }
}