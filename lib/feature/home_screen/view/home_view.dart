import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../core/const/image_path.dart';
import '../../../core/global_widgets/text_field.dart';
import '../controller/home_controller.dart';
import '../widgets/bottom_slider.dart';
import '../widgets/category.dart';
import '../widgets/dress.dart';
import '../widgets/exclusive.dart';
import '../widgets/offer.dart';
import '../widgets/seller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: Column(
                children: [
                  CustomTextField(
                    controller: controller.searchController,
                    suffixIcon: const Icon(Icons.search),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CarouselSlider(
  options: CarouselOptions(
    height: 180,
    enlargeCenterPage: true,
    autoPlay: true,
    autoPlayInterval: Duration(seconds: 3),
    viewportFraction: 0.8, // Ensures proper spacing
  ),
  items: [
    Builder(
      builder: (context) {
        double screenWidth = MediaQuery.of(context).size.width * 0.8;
        return SizedBox(
          width: screenWidth, // 80% of screen width
          child: Image.asset(ImagePath.cover, fit: BoxFit.cover),
        );
      },
    ),
    Builder(
      builder: (context) {
        double screenWidth = MediaQuery.of(context).size.width * 0.8;
        return SizedBox(
          width: screenWidth,
          child: Image.asset(ImagePath.cover, fit: BoxFit.cover),
        );
      },
    ),
    Builder(
      builder: (context) {
        double screenWidth = MediaQuery.of(context).size.width * 0.75;
        return SizedBox(
          width: screenWidth,
          child: Image.asset(ImagePath.cover, fit: BoxFit.cover),
        );
      },
    ),
  ],
),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Our Categories",
                      style: TextStyle(
                          color: Color(0xFFB8860B),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Categories(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Exclusive offer",
                      style: TextStyle(
                          color: Color(0xFFB8860B),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset(
                    ImagePath.exclusive,
                    height: 120,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            SizedBox(height: 200, child: Exclusive()),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Installment Offer",
                      style: TextStyle(
                          color: Color(0xFFB8860B),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImagePath.offer),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Offers(),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Dresses",
                      style: TextStyle(
                          color: Color(0xFFB8860B),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImagePath.dressCover),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Dresses(
                imagePath: ImagePath.dress,
                title: 'Wedding dress',
                subtitle: 'By Baseal',
                price: '6,500',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Wedding Venues",
                      style: TextStyle(
                          color: Color(0xFFB8860B),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImagePath.weddingVenue),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Dresses(
                imagePath: ImagePath.weddingVenue1,
                title: 'Wedding Venue',
                subtitle: 'La Meridian',
                price: '6,500',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Beauty Centers",
                      style: TextStyle(
                          color: Color(0xFFB8860B),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImagePath.beautyCover),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Dresses(
                imagePath: ImagePath.beautyImage,
                title: 'Wedding Venue',
                subtitle: 'La Meridian',
                price: '6,500',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Beauty Centers",
                  style: TextStyle(
                      color: Color(0xFFB8860B),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Seller(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ImageSlider(),
            ),
          ],
        ),
      ),
    );
  }
}
