import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../src/brifing_page/brifing_page.dart';
import '../../src/init_page/init.dart';
import '../../src/sbp_page/sbp.dart';
import 'package:kachaika/src/calculate_page/calculate_page.dart';
import '../../src/terminal_page/terminal_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MyHomeRoute.page, initial: true),
        AutoRoute(page: SbpRoute.page),
        AutoRoute(page: CalculateRoute2.page),
        AutoRoute(page: CalculateRoute.page),
        AutoRoute(page: TerminalRoute.page),
      ];
}
