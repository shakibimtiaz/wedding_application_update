import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var phoneNumber = ''.obs;
  var password = ''.obs;
  var isPasswordVisible = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void signIn() {
    // Add your sign-in logic here
    if (kDebugMode) {
      print('Phone Number: ${phoneNumber.value}, Password: ${password.value}');
    }
  }

  void signUp() {
    // Add your sign-up logic here
  }

  void forgotPassword() {
    // Add your forgot password logic here
  }
}
