import 'package:flutter/material.dart';

class SnackBarService extends ChangeNotifier {
  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Отменить',
          onPressed: () {
            // Действие при нажатии на кнопку
          },
        ),
      ),
    );
  }
}