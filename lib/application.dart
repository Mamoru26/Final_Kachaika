import 'package:Kachaika/src/init_page/init.dart';
import 'package:flutter/material.dart';

import 'core/export.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kachaika',
      theme: theme,
      home: const MyHomePage(),
    );
  }
}
