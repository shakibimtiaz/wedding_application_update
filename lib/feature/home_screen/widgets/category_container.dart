import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  final Color innerContainerColor;
  final String text;
  final IconData? icon; // Optional icon parameter

  const ShadowContainer({
    super.key,
    required this.innerContainerColor,
    required this.text,
    this.icon, // Initialize the optional icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *0.25,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: innerContainerColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: icon != null
                ? Icon(
                    icon,
                    color: Colors.white, // White color for the icon
                  )
                : null,
          ),
          const SizedBox(height: 12.0),
          Text(
            text,
            style: const TextStyle(fontSize: 11.0, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
