import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/chat_controller.dart';
import 'chat_page_view.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    // Create instance of ChatController
    final chatController = Get.put(ChatController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0),
            child: TextField(
              onChanged: chatController.searchChat,
              decoration: InputDecoration(
                hintText: "Search by name",
                contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Color(0xFFB48E18)), // Royal Golden color on focus
                ),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: chatController.filteredChatList.length,
                itemBuilder: (context, index) {
                  final chat = chatController.filteredChatList[index];
                  return Column(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(chat['image']!),
                        ),
                        title: Text(
                          chat['name']!,
                          style: const TextStyle(color: Colors.black),
                        ),
                        subtitle: Text(
                          chat['message']!,
                          style: const TextStyle(color: Colors.black),
                        ),
                        trailing: Text(
                          chat['time']!,
                          style: const TextStyle(color: Colors.black),
                        ),
                        onTap: () {
                          Get.to(() => ChatPageView());
                          if (kDebugMode) {
                            print("ListTile tapped");
                          }
                        },
                      ),
                      const Divider(),
                    ],
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
