import 'package:flutter/material.dart';

class BaseTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Color color;
  final double opacity;

  const BaseTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.color = const Color(0xFFD39FF2),
    this.opacity = 0.2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(opacity),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: TextField(
          keyboardType: TextInputType.number,
          style: Theme.of(context).textTheme.titleMedium,
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.4),
            ),
          ),
        ),
      ),
    );
  }
}
