import 'package:petprojectkachaika/core/background.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/calculate_view_model.dart';
import 'view/snackbar_services.dart';
import 'widgets/export.dart';

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
        ChangeNotifierProvider(create: (context) => SnackBarService())
      ],
      child: Consumer<CalculateModel>(
        builder: (context, value, child) => Scaffold(
          body: PopScope(
              canPop: false,
              child: SafeArea(
                  child: GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: Backgrund(Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ListView(
                        // crossAxisAlignment: CrossAxisAlignment.start,
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
                                hintText: value.amountoneperson.toString(),
                                controller: numberofguests),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 30, left: 16),
                            child: DynamicTextWidget(
                              text: "Процент чаевых",
                              fontSize: 18,
                              textalign: TextAlign.left,
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: RadioGroup(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 29),
                            child: GradientButton(
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).viewInsets.bottom,
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, bottom: 5),
                        child: BaseButtonNoGradient(
                          onPressed: () {
                            CalculateModel modelcalculate =
                                context.read<CalculateModel>();
                            var amount = amountreceipt.value.text;
                            var guests = numberofguests.value.text;
                            modelcalculate.getCalculateData(
                              amount,
                              guests,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                )),
              ))),
        ),
      ),
    );
  }
}
