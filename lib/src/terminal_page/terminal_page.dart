import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:petprojectkachaika/core/background.dart';

@RoutePage()
class TerminalPage extends StatelessWidget {
  const TerminalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Backgrund(const Center(
        child: Text('TerminalPage', style: TextStyle(color: Colors.white)),
      )),
    ));
  }
}
