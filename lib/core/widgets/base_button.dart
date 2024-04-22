import 'package:flutter/material.dart';

class BaseButtonNoGradient extends StatelessWidget {
  final VoidCallback onPressed;
  final Color startColor, endColor;

  const BaseButtonNoGradient({
    super.key,
    required this.onPressed,
    this.startColor = const Color(0xFFC985F2),
    this.endColor = const Color(0xFF6267D6),
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 5),
            child: Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: const Color(0xFF6267D6)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: onPressed,
                  child: Text(
                    'Как расчитываются чаевые?',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ))));
  }
}
