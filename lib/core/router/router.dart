import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../src/brifing_page/brifing_page.dart';
import '../../src/init_page/init.dart';
import '../../src/sbp_page/sbp.dart';
import 'package:petprojectkachaika/src/calculate_page/calculate_page.dart';

part 'router.gr.dart';
@AutoRouterConfig()
class AppRouter extends _$AppRouter {

 @override
 List<AutoRoute> get routes => [
   AutoRoute(page: MyHomeRoute.page, initial: true),
   AutoRoute(page: SbpRoute.page),
   AutoRoute(page: FinalCalculate.page),
   AutoRoute(page: CalculateRoute.page),
 ];
}