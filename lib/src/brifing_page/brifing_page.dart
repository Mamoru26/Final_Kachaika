import 'package:auto_route/auto_route.dart';
import 'package:petprojectkachaika/core/background.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/calculate_view_model.dart';
import 'view/snackbar_services.dart';
import 'widgets/export.dart';

@RoutePage()
// ignore: must_be_immutable
class CalculatePage extends StatelessWidget {
  TextEditingController amountreceipt = TextEditingController();
  TextEditingController numberofguests = TextEditingController();
  CalculatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CalculateModel()),
        ChangeNotifierProvider(create: (context) => SnackBarService()),
      ],
      child: Consumer<CalculateModel>(
        builder: (context, value, child) => Scaffold(
          body: PopScope(
              //Виджет PopScope предоставляет возможность внутри Scaffold принудительного закрытия экрана.
              canPop: false,
              child: SafeArea(
                  child: GestureDetector(
                //Виджет GestureDetector предоставляет возможность внутри Scaffold принудительного закрытия клавиатуры.
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                //Параметр onTap говорит о принудительном закрытии клавиатуры при нажатии на экран.
                child: Stack(
                  children: [
                    Backgrund(Column(
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
                                      child: DynamicTextWidget(
                                        text: 'Калькулятор чаевых',
                                        fontSize: 20,
                                        textalign: TextAlign.center,
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 30, right: 16, left: 16),
                                    child: DynamicTextWidget(
                                      text:
                                          "Для расчета чаевых необходимо заполнить данные ниже:",
                                      fontSize: 18,
                                      textalign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 30, left: 16),
                                child: DynamicTextWidget(
                                  text: "Общая сумма счёта:",
                                  fontSize: 18,
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
                                  fontSize: 18,
                                  textalign: TextAlign.left,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 10),
                                child: BaseTextField(
                                    hintText: '', controller: numberofguests),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 30, left: 16),
                                child: DynamicTextWidget(
                                  text: "Процент чаевых",
                                  fontSize: 18,
                                  textalign: TextAlign.left,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: RadioGroup(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 29),
                                child: GradientButton(
                                  onPressed: () {
                                    CalculateModel modelcalculate =
                                        context.read<CalculateModel>();
                                    var amount = amountreceipt;
                                    var guests = numberofguests;
                                    modelcalculate.getCalculateData(
                                      amount,
                                      guests,
                                    );
                                  },
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
                          onPressed: () {},
                        ),
                      ],
                    )),
                  ],
                ),
              ))),
        ),
      ),
    );
  }
}
