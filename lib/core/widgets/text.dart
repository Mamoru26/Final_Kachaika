import 'package:flutter/material.dart';

class DynamicTextWidget extends StatelessWidget {
  final String text;
  final TextAlign textalign;

  const DynamicTextWidget(
      {super.key, required this.text, required this.textalign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textalign,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
