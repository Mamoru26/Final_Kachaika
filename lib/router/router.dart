import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../presentation/views/brifing_page/brifing_page.dart';
import '../presentation/views/init_page/init.dart';
import '../presentation/views/sbp_page/sbp.dart';
import 'package:kachaika/presentation/views/calculate_page/calculate_page.dart';
import '../presentation/views/terminal_page/terminal_page.dart';

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
