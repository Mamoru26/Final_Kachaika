import 'package:petprojectkachaika/core/router/router.dart';
import 'package:flutter/material.dart';

import 'core/export.dart';

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Kachaika',
      theme: theme,
      routerConfig: _appRouter.config(),
    );
  }
}
