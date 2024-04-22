import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {
  final String text;
  final TextAlign textalign;

  const HeaderTextWidget(
      {super.key, required this.text, required this.textalign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textalign,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
