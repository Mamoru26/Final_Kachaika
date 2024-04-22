import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color startColor, endColor;
  final String text;

  const GradientButton({
    super.key,
    required this.onPressed,
    this.startColor = const Color(0xFFC985F2),
    this.endColor = const Color(0xFF6267D6),
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
