import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth/view/login_screen.dart';
import '../../chat/view/chat_view.dart';
import '../../home_screen/view/home_view.dart';
import '../../true_view/view/true_view.dart';
import '../controller/dashboard_controller.dart';


class DashBoardScreen extends StatelessWidget {
  DashBoardScreen({super.key});

  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('My App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFB8860B),
              ),
              child: Text(
                'Navigation Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Get.to(() => HomeView()); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text('True View'),
              onTap: () {
                Get.to(() => TrueView()); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.chat),
              title: const Text('Chat'),
              onTap: () {
                Get.to(()=> const ChatView()); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.discount),
              title: const Text('Offers'),
              onTap: () {},
            ),
            const Divider(color: Colors.grey),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Get.to(() => AuthScreen());
              },
            ),
            const Divider(color: Colors.grey),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo),
              label: 'True View',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Offers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_online),
              label: 'Booking',
            ),
          ],
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: const Color(0xFFB8860B),
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(color: Color(0xFFB8860B)),
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          showUnselectedLabels: true,
          onTap: controller.onItemTapped,
        ),
      ),
    );
  }
}
