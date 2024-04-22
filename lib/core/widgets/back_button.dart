import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.canPop() ? context.router.popForced() : null,
      child: Image.asset('assets/image/pop.png'),
    );
  }
}
