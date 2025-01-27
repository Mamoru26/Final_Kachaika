import 'package:auto_route/auto_route.dart';
import 'package:kachaika/core/background.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../router/router.dart';
import '../../viewmodels/calculate_view_model.dart';
import 'widgets/export.dart';
import '../../../core/widgets/header_text.dart';
import '../../../core/widgets/snack_bar.dart';

@RoutePage()
// ignore: must_be_immutable
class CalculatePage extends StatelessWidget {
  TextEditingController amountreceipt = TextEditingController();
  TextEditingController numberofguests = TextEditingController();
  CalculatePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScaffoldMessenger.of(context);
    final router = AutoRouter.of(context);
    return Consumer<CalculateViewModel>(
      builder: (context, value, child) => Scaffold(
        body: PopScope(
            //Виджет PopScope предоставляет возможность внутри Scaffold принудительного закрытия экрана.
            canPop: false,
            child: SingleChildScrollView(
              child: Backgrund(
                childWidget: SafeArea(
                    child: GestureDetector(
                  //Виджет GestureDetector предоставляет возможность внутри Scaffold принудительного закрытия клавиатуры.
                  onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                  //Параметр onTap говорит о принудительном закрытии клавиатуры при нажатии на экран.
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: ListView(
                              children: [
                                const Column(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            right: 90, left: 90, top: 22),
                                        child: HeaderTextWidget(
                                          text: 'Калькулятор чаевых',
                                          textalign: TextAlign.center,
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 30, right: 16, left: 16),
                                      child: DynamicTextWidget(
                                        text:
                                            "Для расчета чаевых необходимо заполнить данные ниже:",
                                        textalign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 30, left: 16),
                                  child: DynamicTextWidget(
                                    text: "Общая сумма счёта:",
                                    textalign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, top: 10),
                                  child: BaseTextField(
                                      hintText: '', controller: amountreceipt),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 30, left: 16),
                                  child: DynamicTextWidget(
                                    text: "Количество гостей",
                                    textalign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, top: 10),
                                  child: BaseTextField(
                                      hintText: '1',
                                      controller: numberofguests),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 30, left: 16),
                                  child: DynamicTextWidget(
                                    text: "Процент чаевых",
                                    textalign: TextAlign.left,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  child: RadioGroup(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, top: 29),
                                  child: GradientButton(
                                    onPressed: () {
                                      if (amountreceipt.text.isEmpty ||
                                          value.tipPercentage == 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(CustomSnackBar(
                                          message:
                                              'Не введена сумма чека / не выбран процент чаевых',
                                        ) as SnackBar);
                                      } else {
                                        value.calculate(
                                          amountController: amountreceipt,
                                          guestsController: numberofguests,
                                        );
                                        if (value.totalAmountWithTips != 0) {
                                          router.push(const CalculateRoute2());
                                        }
                                      }
                                    },
                                    text: 'Рассчитать',
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).viewInsets.bottom,
                                ),
                              ],
                            ),
                          ),
                          BaseButtonNoGradient(
                            onPressed: () {
                              context.router.push(const TerminalRoute());
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
              ),
            )),
      ),
    );
  }
}
