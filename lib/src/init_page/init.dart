import 'package:auto_route/auto_route.dart';
import 'package:petprojectkachaika/core/background.dart';
import 'package:petprojectkachaika/src/init_page/widgets/export_widgets.dart';
import 'package:flutter/material.dart';
import '../../core/router/router.dart';

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    //Создаем видимость загрузки для показа инициализации
    Future.delayed(const Duration(seconds: 3), () {
      context.router.push(CalculateRoute());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Backgrund(
        const Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 55),
            child: LogoWidget(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 366, left: 40, right: 40),
            child: LinearBarInd(),
          )
        ]),
      ),
    )));
  }
}
