import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late PageController _pageController;
  late Timer _timer;
  final HomeController controller = Get.find<HomeController>();

  @override
  void initState() {
    super.initState();
    _pageController = controller.pageController;

    // Start the auto-slide timer
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_pageController.page == controller.images.length - 1) {
        _pageController.animateToPage(
          0,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      } else {
        _pageController.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0, // Provide a fixed height
      child: PageView.builder(
        controller: _pageController,
        itemCount: controller.images.length,
        itemBuilder: (context, index) {
          return Image.asset(controller.images[index], fit: BoxFit.cover);
        },
      ),
    );
  }
}
