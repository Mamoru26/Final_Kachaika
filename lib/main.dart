import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'application.dart';
import 'core/view/calculate_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CalculateModel()),
      ],
      child:const MyApp()));
}
