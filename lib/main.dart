import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'application.dart';
import 'presentation/viewmodels/calculate_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CalculateViewModel()),
      ],
      child:const MyApp()));
}