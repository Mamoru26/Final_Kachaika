import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  useMaterial3: true,
  textTheme: TextTheme(
      displayMedium: TextStyle(
          color: Colors.white.withOpacity(0.4),
          fontSize: 18,
          fontFamily: 'assets/fonts/SFPROregular.ttf'),
      titleLarge: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'assets/fonts/SFPROregular.ttf'),
      titleMedium: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: 'assets/fonts/SFPROregular.ttf'),
      titleSmall: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'assets/fonts/SFPROregular.ttf'),
      bodyLarge: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontFamily: 'assets/fonts/SFPROregular.ttf')),
);
