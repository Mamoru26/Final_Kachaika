import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../core/export.dart';
import 'widgets/export.dart';

@RoutePage()
class TerminalPage extends StatelessWidget {
  const TerminalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Backgrund(SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 22, left: 4),
        child: ListView(
          children: const [
            Stack(
              children: [
                CustomBackButton(),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 98),
                    child: HeaderTextWidget(
                      text: 'Как расчитываются чаевые?',
                      textalign: TextAlign.center,
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 30, right: 16),
              child: Column(children: [
                TerminalField(
                  fieldtext:
                      'T - чаевые\nB - общая сумма счета\nP - количество гостей\nTip - процент чаевых',
                ),
              ]),
            )
          ],
        ),
      ),
    )));
  }
}
