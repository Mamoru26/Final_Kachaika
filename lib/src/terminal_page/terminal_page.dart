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
          children: [
            const Stack(
              children: [
                CustomBackButton(),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 86),
                    child: HeaderTextWidget(
                      text: 'Как расчитываются чаевые?',
                      textalign: TextAlign.center,
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 30, right: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TerminalField(
                      fieldtext:
                          'T - чаевые\nB - общая сумма счета\nP - количество гостей\nTip - процент чаевых',
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: TerminalFieldWithText(
                        headertext: 'Общая сумма чаевых',
                        fieldtext: 'T = B * Tip/100',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: TerminalFieldWithText(
                        headertext: 'Всего к оплате включая чаевые',
                        fieldtext: 'Bo = B * (1+Tip/100)',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: TerminalFieldWithText(
                        headertext: 'Чаевые на человека',
                        fieldtext: 'T = B * (Tip/100) / P',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: TerminalFieldWithText(
                        headertext: 'Общая сумма на 1 человека',
                        fieldtext: 'Bp= B * (1+Tip/100) / P',
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'В зависимости от вашего выбора процента чаевых константа применяется в качестве переменной Tip. Также все вычесления округляются до целых чисел для вашего удобства',
                          style: Theme.of(context).textTheme.titleSmall,
                        )),
                    const Padding(
                        padding: EdgeInsets.only(top: 20), child: TipsTable()),
                  ]),
            )
          ],
        ),
      ),
    )));
  }
}
