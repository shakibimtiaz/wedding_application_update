import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField({super.key, 
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Color(0xFFB8860B), 
        )
      ),
      child: Padding(padding: EdgeInsets.only(
        left: 20,
        right: 0,
      
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
        ),
      ),
      ),
    );
  }
}
