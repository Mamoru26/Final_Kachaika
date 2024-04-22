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
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CalculateModel()),
        ],
        child: Consumer<CalculateModel>(
          builder: (context, value, child) => Scaffold(
            body: Backgrund(
              SafeArea(
                  child: ListView(children: [
                const Padding(
                  padding: EdgeInsets.only(top: 22),
                  child: HeaderTextWidget(
                    text: 'Расчет чаевых',
                    textalign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4, top: 30),
                  child: Column(
                    children: [
                      CalculateField(
                        headertext: 'Общая сумма чаевых',
                        fieldtext: '${value.allamount}  ',
                      ),
                    ],
                  ),
                )
              ])),
            ),
          ),
        ));
  }
}
