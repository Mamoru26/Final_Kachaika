import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color startColor, endColor;

  const GradientButton({
    super.key,
    required this.onPressed,
    this.startColor = const Color(0xFFC985F2),
    this.endColor = const Color(0xFF6267D6),
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
          'Рассчитать',
          style: TextStyle(
              color: HexColor('FFFFFF'),
              fontSize: 18,
              fontFamily: 'assets/fonts/SFPROregular.ttf'),
        ),
      ),
    );
  }
}
