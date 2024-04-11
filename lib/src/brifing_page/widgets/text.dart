import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DynamicTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign textalign;

  const DynamicTextWidget(
      {super.key, required this.text, required this.fontSize, required this.textalign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textalign,
      style: TextStyle(
          color: HexColor('FFFFFF'),
          fontSize: fontSize,
          fontFamily: 'assets/fonts/SFPROregular.ttf'),
    );
  }
}
