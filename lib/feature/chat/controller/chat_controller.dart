import 'package:get/get.dart';

import '../../../core/const/image_path.dart';

class ChatController extends GetxController {
  // Dummy chat data
  var chatList = [
    {
      "name": "John Doe",
      "message": "Hello, how are you?",
      "time": "12:30 PM",
      "image": ImagePath.profile,
    },
    {
      "name": "Jane Smith",
      "message": "Good morning!",
      "time": "9:15 AM",
      "image": ImagePath.profile,
    },
    {
      "name": "Samuel Green",
      "message": "What's up?",
      "time": "3:45 PM",
      "image": ImagePath.profile,
    },
    {
      "name": "Emily Brown",
      "message": "Are you free today?",
      "time": "1:10 PM",
      "image": ImagePath.profile,
    },
  ].obs;

  var filteredChatList = <Map<String, String>>[].obs;

  @override
  void onInit() {
    super.onInit();
    filteredChatList.addAll(chatList);
  }

  // Function to filter chat list based on search query
  void searchChat(String query) {
    if (query.isEmpty) {
      filteredChatList.value = chatList;
    } else {
      filteredChatList.value = chatList
          .where((chat) => chat['name']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }
}
