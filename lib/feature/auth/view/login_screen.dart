import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/const/image_path.dart';
import '../controller/login_controller.dart';

class AuthScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16, 
          vertical: 60,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/appicon.png",
              width: 140,
              ), 
              const SizedBox(height: 60,), 
              TextField(
                onChanged: (value) => authController.phoneNumber.value = value,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  prefixIcon: const Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        const BorderSide(color: Colors.amber), // Royal gold color
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              Obx(() => TextField(
                    onChanged: (value) => authController.password.value = value,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(authController.isPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: authController.togglePasswordVisibility,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                            color: Colors.amber), // Royal gold color
                      ),
                    ),
                    obscureText: !authController.isPasswordVisible.value,
                  )),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: authController.forgotPassword,
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: authController.signIn,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    onPressed: authController.signUp,
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.amber),
                      foregroundColor: Colors.amber,
                    ),
                    child: const Text('Sign Up'),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.only(
                  left: 40,
                  right: 40,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('or'),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromARGB(255, 236, 234, 234)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Image.asset(
                        ImagePath.google,
                        width: 40,
                      ),
                    ),
                  ),
          
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromARGB(255, 236, 234, 234)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10),
                      child: Image.asset(ImagePath.facebook, 
                      width: 40,
                      ),
                    ),
                               ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
