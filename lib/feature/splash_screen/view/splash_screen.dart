import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the controller
    final SplashController controller = Get.put(SplashController());

    return Scaffold(
      body: Center(
        child: Obx(
          () => Transform.scale(
            scale: controller
                .scaleAnimation.value.value, // Bind to animation value
            child: const Text("Wedding Application",
            style: TextStyle(
              fontSize: 24,
            ),
            )
          ),
        ),
      ),
    );
  }
}