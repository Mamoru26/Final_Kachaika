import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/export.dart';
import '../../core/view/calculate_view_model.dart';
import 'widgets/export.dart';

@RoutePage()
class CalculatePage2 extends StatelessWidget {
  const CalculatePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculateModel>(
      builder: (context, value, child) => Scaffold(
        body: Backgrund( childWidget: 
          SafeArea(
              child: Stack(
            children: [
              ListView(children: [
                const Padding(
                  padding: EdgeInsets.only(top: 22),
                  child: Stack(
                    children: [
                      CustomBackButton(),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: HeaderTextWidget(
                            text: 'Расчет чаевых',
                            textalign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 30, right: 16),
                  child: Column(
                    children: [
                      CalculateField(
                        headertext: 'Общая сумма чаевых',
                        fieldtext: '${value.tipsamount.toInt()} ₽',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: CalculateField(
                          headertext: 'Всего к оплате включая чаевые',
                          fieldtext: '${value.allamount.toInt()} ₽',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: CalculateField(
                          headertext: 'Чаевые на человека',
                          fieldtext: '${value.amountoneperson.toInt()} ₽',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: CalculateField(
                          headertext: 'Счет на одного человека',
                          fieldtext: '${value.amountperson.toInt()} ₽',
                        ),
                      ),
                      //Данная кнопка не активна по причине отсутствия подписанного договора с ситемой оплаты, в дальнейшем возможно рассмотрение её добавления
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 80.0),
                      //   child: GradientButton(onPressed: () {  }, text: 'Перевести через СБП',),
                      // )
                    ],
                  ),
                )
              ]),
              BaseButtonNoGradient(
                onPressed: () {
                  context.router.push(const TerminalRoute());
                },
              ),
            ],
          )),
        ),
      ),
    );
  }
}
