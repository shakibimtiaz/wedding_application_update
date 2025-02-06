import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Rx<Animation<double>> scaleAnimation;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    scaleAnimation = Tween<double>(begin: 0.8, end: 1.2)
        .animate(CurvedAnimation(
            parent: animationController, curve: Curves.easeInOut))
        .obs;

    animationController.forward();

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });

    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed('/dashboardScreen');
    });
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}