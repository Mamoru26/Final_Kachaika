import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:petprojectkachaika/core/export.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => context.router.push(CalculateRoute()),
          child: Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Image.asset('assets/image/pop.png'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 37),
          child: HeaderTextWidget(
            text: 'Расчет чаевых',
            textalign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
