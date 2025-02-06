import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ChatMessage {
  final String message;
  final String time;
  final bool isUser;

  ChatMessage(
      {required this.message, required this.time, required this.isUser});
}

class ChatPageController extends GetxController {
  // Dummy JSON data
  final chatMessages = <ChatMessage>[
    ChatMessage(message: "Hi there!", time: "10:30 AM", isUser: false),
    ChatMessage(
        message: "Hello! How can I help you?", time: "10:31 AM", isUser: true),
    ChatMessage(
        message: "I have a question regarding your service.",
        time: "10:32 AM",
        isUser: false),
  ].obs;

  final TextEditingController messageController = TextEditingController();

  // Function to send a message
  void sendMessage() {
    final messageText = messageController.text.trim();
    if (messageText.isNotEmpty) {
      chatMessages.add(ChatMessage(
        message: messageText,
        time: TimeOfDay.now().format(Get.context!),
        isUser: true,
      ));
      messageController.clear();
    }
  }
}