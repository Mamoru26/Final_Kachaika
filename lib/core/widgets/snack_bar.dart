import 'package:flutter/material.dart';
import 'package:kachaika/core/widgets/error_bar.dart';

class CustomSnackBar extends StatelessWidget {
  final String message;
  const CustomSnackBar({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return SnackBar(
        content: ErrorSnackBarContent(
          title: 'Ошибка',
          message: message,
        ),
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        behavior: SnackBarBehavior.floating,
        padding: EdgeInsets.zero,
      );
  }
}