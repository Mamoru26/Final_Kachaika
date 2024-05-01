import 'package:flutter/material.dart';

class Backgrund extends StatelessWidget {
  final Widget childWidget;

  const Backgrund({required this.childWidget, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      // height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: childWidget,
    );
  }
}
