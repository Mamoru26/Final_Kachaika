import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LinearBarInd extends StatefulWidget {
  const LinearBarInd({super.key});

  @override
  State<LinearBarInd> createState() => _linearBarInd();
}

// ignore: camel_case_types
class _linearBarInd extends State<LinearBarInd> {
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      minHeight: 6,
      backgroundColor: HexColor('1D1D1D'),
      valueColor: AlwaysStoppedAnimation<Color>(HexColor('D39FF2')),
    );
  }
}
